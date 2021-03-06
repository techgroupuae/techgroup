class Company
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Globalize
  include Mongoid::Slug
  include Mongoid::Reorder
  
  has_many :company_sections
  has_many :company_cert_logos
  
  translates do
    field :title
    field :description

    field :contact_title
    field :address

    field :contact_title2
    field :address2

    field :contact_title3
    field :address3
  end
  
  field :url
  
  field :phone
  field :fax
  field :email
  
  field :phone2
  field :fax2
  field :email2
  
  field :phone3
  field :fax3
  field :email3
  
  field :map_address
  
  mount_uploader :logo,       CompanyLogoUploader
  mount_uploader :logo_image, CompanyLogoUploader
  mount_uploader :banner,     CompanyBannerUploader
  mount_uploader :brochure,   CompanyBrochureUploader
  
  slug :title
   
  validates_presence_of :title, :description, :logo
  
end
