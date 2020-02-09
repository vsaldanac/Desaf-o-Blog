module PostsHelper
    def crudPostButtons(post)
        if user_signed_in?
            if current_user.admin?
                return " | #{link_to 'Edit', edit_post_path(post) } | #{link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }}".html_safe
            end
        end
    end
end
