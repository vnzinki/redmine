FROM redmine

WORKDIR /usr/src/redmine

RUN git clone https://github.com/peclik/clipboard_image_paste.git plugins/clipboard_image_paste
RUN git clone https://github.com/jgraichen/redmine_dashboard.git plugins/redmine_dashboard
RUN git clone https://github.com/ergoserv/redmine-progressive-projects-list.git plugins/progressive_projects_list
RUN git clone https://github.com/Ilogeek/redmine_issue_dynamic_edit.git plugins/redmine_issue_dynamic_edit
RUN git clone https://github.com/alexmonteiro/Redmine-Monitoring-Controlling.git plugins/redmine_monitoring_controlling
RUN git clone https://github.com/sciyoshi/redmine-slack.git plugins/redmine_slack

RUN git clone https://github.com/Nitrino/flatly_light_redmine.git public/themes/flatly_light_redmine
RUN git clone https://github.com/mrliptontea/PurpleMine2.git public/themes/purple_mine
RUN bundle install --without development test
