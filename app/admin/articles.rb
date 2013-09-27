ActiveAdmin.register Article do
  menu :label => I18n.t("articles")

  
   config.filters = false
     form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :content, as: :wysihtml5
      f.input :imagearticle
      f.input :author
      f.input :date
    end

    f.buttons
  end
end
