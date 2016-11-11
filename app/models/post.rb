class Post < ActiveRecord::Base
    has_many :infos
    mount_uploader :profileImg, S3uploaderUploader
end
