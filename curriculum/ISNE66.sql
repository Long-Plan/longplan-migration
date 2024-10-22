INSERT INTO sys_curricula (major_id,name_th,short_name) VALUES (10610,'หลักสูตรวิศวกรรมระบบสารสนเทศและเครือข่าย หลักสูตรปรับปรุง 2566','ISNE66');

INSERT INTO sys_categories (name_en, curriculum_id, at_least, credit, category_type_id, is_display,primary_color,secondary_color, note) 
VALUES 
('Total', 2, true, 143, 7, true,'-','-', ''),
('General Education', 2, false, 30, 1, true,'#A78C39','#FFF8E2', ''),
('Field of Specialization', 2, true, 107, 2, true,'#4351CC','#E7EAFF', ''),
('Free Electives', 2, true, 6, 3, true,'#505152','#EBEAEA', 'Any courses can be selected with the approval from the student’s academic advisor.'),
('Required Courses', 2, false, 23, NULL, false,'','', ''),
('Elective Courses', 2, false, 7, NULL, true,'#A37358','#F5E5DE', 'A student also chooses at least 7 credits of GE courses'),
('Learner Person', 2, false, 15, NULL, true,'##F0C32F','#FFF8E2', ''),
('Innovative Co-creator', 2, false, 4, NULL, true,'#F67F4C','#FFEBE3', ''),
('Active Citizen', 2, false, 4, NULL, true,'#BF504D','#EDDCDC', ''),
('', 2, NULL, NULL, NULL, false,'','', ''),
('', 2, NULL, NULL, NULL, false,'','', 'Select additional three-credits course on this list'),
('', 2, NULL, NULL, NULL, false,'','', ''),
('', 2, NULL, NULL, NULL, false,'','', 'Select additional three-credits course on this list'),
('Learner Person', 2, NULL, NULL, NULL, false,'','', ''),
('Innovative Co-creator', 2, NULL, NULL, NULL, false,'','', ''),
('Active Citizen', 2, NULL, NULL, NULL, false,'','', ''),
('Core Courses', 2, false, 24, NULL, true,'#3BA3EE','#E5F4FD', ''),
('Mathematics and Statistics for Information Technicians', 2, NULL, NULL, NULL, false,'','', ''),
('Fundamental of Information Technology', 2, NULL, NULL, NULL, false,'','', ''),
('Others', 2, NULL, NULL, NULL, false,'','', ''),
('Major', 2, true, 83, 4, false,'','', 'At least 36 credits in 2.2.1 and 2.2.2 must be 300 or higher level courses, among such courses there must be at least 18 credits from 400 or higher level courses.'),
('Required Courses', 2, false, 74, NULL, true,'#4351CC','#E7EAFF', ''),
('Required Courses', 2, false, 77, NULL, true,'#4351CC','#E7EAFF', ''),
('Organizations and Information Systems', 2, NULL, NULL, NULL, false,'','', ''),
('Technology for Application', 2, NULL, NULL, NULL, false,'','', ''),
('Technology and Software Methods', 2, NULL, NULL, NULL, false,'','', ''),
('Basic Structure of the Systems', 2, NULL, NULL, NULL, false,'','', ''),
('Hardware and Computer Architecture', 2, NULL, NULL, NULL, false,'','', ''),
('Field Experience Training', 2, NULL, NULL, 6, false,'','', ''),
('Field Experience Training', 2, NULL, NULL, 6, false,'','', ''),
('Major Electives', 2, true, 9, NULL, true,'#4351CC','#E7EAFF', 'Select From the Followings'),
('Major Electives', 2, true, 6, NULL, true,'#4351CC','#E7EAFF', 'Select From the Followings'),
('', 2, NULL, NULL, NULL, false,'','', ''),
('Minor (if any)', 2, true, 15, 5, false,'','', 'According to the Chiang Mai University regulation on the Minor curriculum for the Chiang Mai University student, if students choose to have a minor degree in a curriculum at the Chiang Mai university, they can register those courses not less than 15 credits with the academic advisor''s approval. Hence, the total credits for the whole curriculum is increased at least 15 credits.');

INSERT INTO sys_curriculum_questions (curriculum_id,name_en) VALUES (2,'Plan');

INSERT INTO sys_curriculum_question_choices (question_id,position,name_en) VALUES (2,1,'Normal Plan');
INSERT INTO sys_curriculum_question_choices (question_id,position,name_en) VALUES (2,2,'Cooperative Education Plan');

INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (31,32,NULL,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (31,33,NULL,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (31,34,NULL,3,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (32,35,NULL,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (32,36,NULL,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (35,37,NULL,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (35,38,NULL,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (35,39,true,3,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (37,40,true,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (37,41,false,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (38,42,true,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (38,43,false,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (36,44,false,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (36,45,false,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (36,46,false,3,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (33,47,NULL,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (47,48,true,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (47,49,true,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (47,50,true,3,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (33,51,NULL,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (51,52,NULL,1,2,3);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (51,53,NULL,1,2,4);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (52,54,true,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (52,55,true,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (52,56,true,3,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (52,57,true,4,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (52,58,true,5,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (52,59,true,6,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (53,54,true,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (53,55,true,2,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (53,56,true,3,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (53,57,true,4,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (53,58,true,5,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (53,60,true,6,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (51,61,NULL,2,2,3);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (51,62,NULL,2,2,4);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (61,63,false,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (62,63,false,1,NULL,NULL);
INSERT INTO sys_category_relationships (parent_category_id,child_category_id,require_all,position,question_id,choice_id) VALUES (33,64,NULL,3,NULL,NULL);

INSERT INTO sys_category_requirements (category_id,regex,credit) VALUES (51,'^...(3|4)..$',36);
INSERT INTO sys_category_requirements (category_id,regex,credit) VALUES (51,'^...4..$',18);

INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (40, '001101', 1, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (40, '001102', 2, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (40, '001201', 1, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (40, '001225', 2, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (41, '204100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (41, '261111', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (41, '953111', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (42, '259192', 2, 4, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '013110', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '050106', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '176100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '201114', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '201117', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '201190', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '207109', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '207110', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '368100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '610111', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '703103', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '751100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '851103', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (43, '852100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (39, '140104', 2, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (39, '259191', 1, 1, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '009103', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '154130', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '201100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '203100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '211100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '462130', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '571116', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '701181', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '702101', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (44, '705191', NULL, NULL, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (45, '259194', NULL, NULL, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (46, '109114', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (46, '127100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (46, '128100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (46, '154104', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (46, '256131', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (46, '259193', NULL, NULL, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (46, '259195', NULL, NULL, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (46, '801100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (46, '951100', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (48, '206161', 1, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (48, '206162', 2, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (48, '255201', 1, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (48, '261216', 1, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (49, '269101', 1, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (49, '269103', 2, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (50, '252281', 2, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (50, '259104', 1, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (54, '261446', 2, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (54, '269105', 2, 1, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (54, '269201', 1, 2, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (54, '269370', 2, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (54, '269470', 2, 4, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (55, '269200', 1, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (55, '269340', 1, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (55, '269360', 2, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (55, '269430', 1, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (55, '269491', 1, 4, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (55, '269492', 2, 4, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (56, '261200', 1, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (56, '261205', 2, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (56, '261361', 1, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (56, '269102', 1, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (56, '269202', 1, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (56, '269210', 2, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (56, '269462', 2, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (57, '261335', 1, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (57, '261336', 1, 2, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (57, '261342', 2, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (57, '261343', 2, 2, 1);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (57, '261433', 2, 2, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (57, '261434', 1, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (57, '261447', 2, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (57, '269130', 2, 1, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (58, '261305', 1, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (59, '269401', 3, 3, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (60, '269495', NULL, NULL, 6);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261408', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261409', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261411', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261430', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261435', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261438', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261441', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261444', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261448', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261449', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261453', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261456', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261459', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261461', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261465', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261468', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261472', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261473', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261475', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261476', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269341', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269400', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269421', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269431', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269432', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269433', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269441', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269451', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269452', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269461', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269471', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269472', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269493', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269494', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269496', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269497', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269498', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '269499', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261381', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261382', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261383', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261481', NULL, NULL, 3);
INSERT INTO sys_category_courses (category_id, course_no, semester, year, credit) VALUES (63, '261482', NULL, NULL, 3);

INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (143, '001101', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (143, '001102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (144, '001101', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (144, '001102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (186, '206161', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (190, '261102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (190, '269102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (193, '261205', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (193, '261217', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (195, '269105', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (196, '261205', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (197, '269370', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (197, '261446', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (198, '261102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (198, '269102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (199, '261342', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (199, '261343', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (200, '261200', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (201, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (203, '269491', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (204, '261102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (204, '269102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (205, '261102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (205, '269102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (206, '261200', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (208, '261205', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (210, '261361', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (211, '261332', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (211, '269130', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (212, '261335', 'Co');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (213, '261205', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (213, '261218', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (214, '261342', 'Co');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (215, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (216, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (217, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (218, '269101', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (219, '261304', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (219, '269210', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (220, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (220, '261342', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (223, '261216', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (223, '261217', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (225, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (226, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (227, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (229, '261342', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (231, '261361', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (235, '261102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (235, '269102', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (236, '269104', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (241, '252211', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (241, '252281', 'Any');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (242, '269340', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (243, '269360', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (244, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (245, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (246, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (247, '261335', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (249, '261205', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (252, '269370', 'All');
INSERT INTO sys_category_course_requisites (category_courses_id, related_course_no, requisite_type) VALUES (253, '269370', 'All');