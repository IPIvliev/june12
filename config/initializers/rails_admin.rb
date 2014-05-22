# encoding: utf-8

# RailsAdmin config file. Generated on May 20, 2014 17:30
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|
  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Ассамблея студенческих инициатив "Виват, Россия!"', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # Roles
  config.authorize_with :cancan

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method &:current_user

  # History
  config.audit_with :history, User

  # Edit Post model
    config.model Post do

      label_plural "Новости"
      weight 1

      list do

        field :name do
          label "Название"
        end

        field :text do
          label "Содержание"
        end

        field :picture do
          label "Изображение"
        end

      end

      edit do

        field :name do
          label "Название"
        end
        field :text do
          label "Текст"
          ckeditor true
        end
        field :picture, :carrierwave do
          label "Изображение"
        end
      end
    end

    # Edit User model
    config.model User do
      label_plural 'Пользователи'
      weight 2

      edit do
        include_all_fields
        field :name do
          label "Имя"
        end
        exclude_fields :created_at, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at,
        :last_sign_in_at, :updated_at, :current_sign_in_ip, :last_sign_in_ip, :posts
      end

    end

    # Edit Order model
    config.model Order do
      label_plural 'Заказы'
      weight 4
      edit do

      end
    end

    # Edit Product model
    config.model Product do
      
      label_plural 'Товары'
      weight 3
      edit do

      end
    end

    config.model Photo do
      label_plural 'Галерея'
    edit do

      field :name do
        label "Название"
      end

      field :image, :carrierwave do
        label "Изображение"
      end

      fields_of_type :tag_list do
        partial 'tag_list_with_suggestions'
      end

    end
  end

end
