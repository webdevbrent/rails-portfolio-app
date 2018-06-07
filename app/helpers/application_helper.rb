module ApplicationHelper
    def login_helper(style = '')
     if current_user.is_a?(GuestUser)
        (link_to 'Register', new_user_registration_path, class: style) +
        " ".html_safe +
        (link_to 'Login', user_session_path, class: style)    
     else
        link_to 'Logout', destroy_user_session_path, method: :delete, data: { confirm: 'Are you sure?' }, class: style
        end
    end

    def source_helper(layout_name)
        if session[:source]
            greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout" 
            content_tag(:p, greeting, class: "source-greeting")
        end
    end

    def copyright_generator
        WebdevbrentViewTool::Renderer.copyright 'Brent Phillips', 'All rights reserved'
    end

    def nav_items
      [
        {
          url: about_me_path,
          title: 'About Me'
        },
        {
          url: contact_path,
          title: 'Contact'
        },
        {
          url: blog_index_path,
          title: 'Blog'
        },
        {
          url: portfolios_path,
          title: 'Portfolio'
        }
      ]
    end

    def nav_helper style
      nav_links = ''

      nav_items.each do |item|
        nav_links << "<a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a>"
      end

        nav_links.html_safe
    end

    def active?(path)
        "active" if current_page? path
    end


end
