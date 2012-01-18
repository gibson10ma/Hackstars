class Hackstar < ActiveRecord::Base
  has_attached_file :image, 
    :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :storage => :s3,
    :bucket => 'hackstars',
    :s3_credentials => {
      :access_key_id => ENV['AMAZON_ACCESS_KEY'],
      :secret_access_key => ENV['AMAZON_SECRET_KEY']
    }
    
    has_many :hackstar_skills
    has_many :skills, :through=> :hackstar_skills
    
    def image_url
        self.image.url
    end
    def image_thumb_url
        self.image.url(:thumb)
    end
    
  def as_json(params={})
    params.merge!( { :methods => [:image_url,:image_thumb_url] } )
    super(params)
  end


end
