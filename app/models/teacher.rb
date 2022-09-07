class Teacher < ApplicationRecord
    has_one_attached :aadhar_img
    has_one_attached :license_img
    has_one_attached :photo
    has_one_attached :registration_img  
end
