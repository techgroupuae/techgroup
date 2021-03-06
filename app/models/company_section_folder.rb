class CompanySectionFolder
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Globalize
  include Mongoid::Slug
  include Mongoid::Reorder

  belongs_to  :company_section
  has_many    :company_section_items

  translates do
    field :title
    field :description
  end

  slug :title

  mount_uploader  :image,
                  CompanySectionItemImageUploader

  validates_presence_of :title, :description
end