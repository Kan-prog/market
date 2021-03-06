# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  
  # process :fix_rotate
  # def fix_rotate
  #   manipulate! do |img|
  #     img = img.auto_orient
  #     img = yield(img) if block_given?
  #     img
  #   end
  # end
  process :fix_exif_rotation
  
  process resize_to_fill: [700, 700]
  
  def default_url
    "default.jpg"
  end

  version :thumb do
    process :resize_to_fill => [100, 100]
  end
  
  version :large do
    process :resize_to_fill => [500, 500]
  end
  
  if Rails.env.development?
    storage :file
  elsif Rails.env.test?
    storage :file
  else
    storage :fog
  end
  
  
  # if Rails.env.production?
  #   storage :fog
  # else
  #   storage :file
  # end
  
  def auto
    manipulate! do |picture|
      picture.auto_orient
    end
  end

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
  private
    
    def crop
      return if [model.image_x, model.image_y, model.image_w, model.image_h].all?
      manipulate! do |img|
        crop_x = model.image_x.to_i
        crop_y = model.image_y.to_i
        crop_w = model.image_w.to_i
        crop_h = model.image_h.to_i
        img.crop "#{crop_w}x#{crop_h}+#{crop_x}+#{crop_y}"
        img = yield(img) if block_given?
        img
      end
    end
end
