FROM redmine:4

RUN git clone https://github.com/peclik/clipboard_image_paste.git plugins/clipboard_image_paste &&\
    git clone https://github.com/ergoserv/redmine-progressive-projects-list.git plugins/progressive_projects_list &&\
    git clone https://github.com/Ilogeek/redmine_issue_dynamic_edit.git plugins/redmine_issue_dynamic_edit &&\
    git clone https://github.com/paginagmbh/redmine_lightbox2.git plugins/redmine_lightbox2 &&\
    git clone https://github.com/agileware-jp/redmine_issue_templates.git plugins/redmine_issue_templates &&\
    git clone https://github.com/jgraichen/redmine_dashboard.git plugins/redmine_dashboard &&\
    git clone -b 4.1.x https://github.com/Loriowar/redmine_issues_tree.git plugins/redmine_issues_tree &&\
    git clone https://github.com/farend/redmine_searchable_selectbox.git plugins/redmine_searchable_selectbox &&\
    git clone https://github.com/HugoHasenbein/redmine_more_filters.git plugins/redmine_more_filters &&\
    git clone -b stable https://github.com/AlphaNodes/additionals.git plugins/additionals &&\
    git clone https://github.com/imasdetres/redmine_easy_gantt.git plugins/easy_gantt &&\
    git clone https://github.com/mrliptontea/PurpleMine2.git public/themes/purple_mine
RUN echo 'var _CONF_EXCLUDED_FIELD_ID = ["DescriptionInput"];' >> plugins/redmine_issue_dynamic_edit/assets/javascripts/issue_dynamic_edit_configuration_file.js
RUN echo 'div#projects-index table.progress{width: 100%;}' >> plugins/progressive_projects_list/assets/stylesheets/progressive_projects_list.css
RUN bundle config set --local without 'development test' &&\
    bundle config unset deployment &&\
    bundle install
