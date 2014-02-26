class User < ActiveRecord::Base
  attr_accessible :firstname1, 
				  :firstname2, 
				  :lastname1, 
				  :lastname2, 
				  :maxguests, 
				  :numguests, 
				  :username, 
				  :password, 
				  :ceremony, 
				  :ceremony2,
				  :reception,
				  :reception2,
				  :respond,
				  :comment,
				  :role
  
  attr_accessor :password
  before_save :encrypt_password
    
  def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end  
  
  def self.import(file)
	spreadsheet = open_spreadsheet(file)
	header = spreadsheet.row(1)
	(2..spreadsheet.last_row).each do |i|
		row = Hash[[header, spreadsheet.row(i)].transpose]
		user = find_by_id(row['id']) || new
		user.attributes = row.to_hash.slice(*accessible_attributes)
		user.save!
	end
  end
  
  def self.open_spreadsheet(file)
	  case File.extname(file.original_filename)
		  when ".csv" then Roo::DSV.new(file.path, nil, :ignore)
		  when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
		  when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
		  when "gdoc" then Roo::Google.new(file.path, nil, :ignore)
	  else raise "Unknown file type: #{file.original_filename}"
	  end
	end
end