class Upload < ActiveRecord::Base
  #attr_accessible :upload
  has_attached_file :upload, styles: { meduim: '300x300>', thumb: '50x50>'}
  validates_attachment :upload, content_type: { content_type: ["image/jpg", "image/bmp", "image/png"] }

  include Rails.application.routes.url_helpers

  def to_jq_upload
    {
      "name" => read_attribute(:upload_file_name),
      "size" => read_attribute(:upload_file_size),
      "url" => upload.url(:original),
      "thumbnail_url" => upload.url(:thumb),
      "delete_url" => upload_path(self),
      "delete_type" => "DELETE" 
    }
  end

end
