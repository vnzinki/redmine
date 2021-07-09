FROM bitnami/redmine:4.2.1-debian-10-r31

WORKDIR /opt/bitnami/redmine

RUN git clone https://github.com/peclik/clipboard_image_paste.git plugins/clipboard_image_paste &&\
    git clone https://github.com/jgraichen/redmine_dashboard.git plugins/redmine_dashboard &&\
    git clone https://github.com/ergoserv/redmine-progressive-projects-list.git plugins/progressive_projects_list &&\
    git clone https://github.com/Ilogeek/redmine_issue_dynamic_edit.git plugins/redmine_issue_dynamic_edit &&\
    git clone https://github.com/alexmonteiro/Redmine-Monitoring-Controlling.git plugins/redmine_monitoring_controlling &&\
    git clone https://github.com/sciyoshi/redmine-slack.git plugins/redmine_slack &&\
    git clone https://github.com/paginagmbh/redmine_lightbox2.git plugins/redmine_lightbox2 &&\
    git clone https://github.com/Nitrino/flatly_light_redmine.git public/themes/flatly_light_redmine &&\
    git clone https://github.com/mrliptontea/PurpleMine2.git public/themes/purple_mine
RUN bundle config set --local without 'development test' &&\
    bundle config unset deployment &&\
    bundle install
