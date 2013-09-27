ActiveAdmin.register NewsCategory do
  menu :label => I18n.t("news_categories")
   form do |f|
    f.inputs do
      f.input :title
      f.input :description

    end

    f.buttons
  end
  
  config.filters = false
end
