ActiveAdmin.register Newsf do
  menu :label => I18n.t("newsfs")
    form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :content, as: :wysihtml5
      f.input :imagenews
      f.input :author
      f.input :date
    end

    f.buttons
  end
  config.filters = false
end
