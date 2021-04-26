require "cloudinary"
require "shrine/storage/cloudinary"
Cloudinary.config(
cloud_name: 'wusinho1',
api_key:    '729324258626264',
api_secret: 'It7W6oH5Jan10qmCJTA3Sx8Y2qI'
)
Shrine.storages = {
cache: Shrine::Storage::Cloudinary.new(prefix: "upload_app/cache"), # for direct uploads
store: Shrine::Storage::Cloudinary.new(prefix: "upload_app"),
}
Shrine.plugin :activerecord           # loads Active Record integration
Shrine.plugin :cached_attachment_data # enables retaining cached file across form redisplays
Shrine.plugin :restore_cached_data    # extracts metadata for assigned cached files
Shrine.plugin :validation_helpers
Shrine.plugin :validation
Shrine.plugin :determine_mime_type, analyzer: :marcel