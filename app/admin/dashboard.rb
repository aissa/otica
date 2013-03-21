ActiveAdmin.register_page "Dashboard" do


  menu :priority => 0, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Info" do
          para "#{I18n.t('hello')} #{current_admin_user.email}!"
        end
      end
    end

    section "Clientes cadastrados recentemente" do
      table_for Cliente.order("nome").limit(5) do
        column :nome do |cliente|
          link_to cliente.nome, [:admin, cliente]
        end
      end
        strong {link_to "Ver todos os clientes", admin_clientes_path}
      end
    #columns do

 
         #     li link_to(domain.nome, admin_clientes_path(domain))
          #  end
          #end
        #end
      #end
      #column do
       # panel "Clientes recentes" do
        #  ul do
         #   Cliente.all.map do |domain|
          #    li link_to(domain.nome, admin_clientes_path(domain))
           # end
          #end
        #end
      #end

    #end

  end # content
end

# menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }
   # menu :label => "My Menu Item Label", :parent => "Dashboard"
 # content :title => proc{ I18n.t("active_admin.dashboard") } do
 #   div :class => "blank_slate_container", :id => "dashboard_default_message" do
  #    span :class => "blank_slate" do
   #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #    small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #  end
    #end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  #end # content
#end
#end