module PostsHelper
    def crudPostButtons(post)
        if user_signed_in?
            if current_user.admin?
                return "#{link_to 'Edit', edit_post_path(post), class: 'text-white btn btn-success'} #{link_to 'Destroy', post, method: :delete, class: 'text-white btn btn-danger', data: { confirm: 'Are you sure?' }}".html_safe
            end
        end
    end
end
