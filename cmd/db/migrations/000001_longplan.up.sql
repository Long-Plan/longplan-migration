CREATE TYPE "requisite_type" AS ENUM (
  'Any',
  'All',
  'Co'
);

CREATE TABLE "sys_majors" (
  "id" int PRIMARY KEY,
  "name_th" varchar(255) UNIQUE,
  "name_en" varchar(255) UNIQUE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_curricula" (
  "id" BIGSERIAL PRIMARY KEY,
  "major_id" int NOT NULL,
  "code" varchar(255) UNIQUE,
  "name_th" varchar(255) UNIQUE,
  "name_en" varchar(255) UNIQUE,
  "short_name" varchar(10),
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_category_types" (
  "id" BIGSERIAL PRIMARY KEY,
  "name_th" varchar(255) UNIQUE,
  "name_en" varchar(255) UNIQUE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_category_requirements" (
  "id" BIGSERIAL PRIMARY KEY,
  "category_id" int NOT NULL,
  "regex" varchar(255),
  "credit" int,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_categories" (
  "id" BIGSERIAL PRIMARY KEY,
  "name_th" varchar(255),
  "name_en" varchar(255),
  "curriculum_id" int,
  "at_least" bool,
  "credit" int,
  "category_type_id" int,
  "note" TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_category_relationships" (
  "id" BIGSERIAL PRIMARY KEY,
  "parent_category_id" int NOT NULL,
  "child_category_id" int NOT NULL,
  "curriculum_id" int,
  "require_all" bool,
  "position" int NOT NULL DEFAULT 1,
  "question_id" int,
  "choice_id" int,
  "cross_category_id" int,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_curriculum_questions" (
  "id" BIGSERIAL PRIMARY KEY,
  "curriculum_id" int,
  "name_th" varchar(255),
  "name_en" varchar(255),
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_curriculum_question_choices" (
  "id" BIGSERIAL PRIMARY KEY,
  "question_id" int NOT NULL,
  "position" int NOT NULL DEFAULT 1,
  "name_th" varchar(255),
  "name_en" varchar(255),
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_category_courses" (
  "id" BIGSERIAL PRIMARY KEY,
  "category_id" int NOT NULL,
  "course_no" varchar(6) NOT NULL,
  "semester" int,
  "year" int,
  "credit" int NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_category_course_requisites" (
  "id" BIGSERIAL PRIMARY KEY,
  "category_courses_id" int NOT NULL,
  "related_course_no" varchar(6) NOT NULL,
  "requisite_type" requisite_type NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sys_course_details" (
  "id" BIGSERIAL PRIMARY KEY,
  "course_no" varchar(6) UNIQUE NOT NULL,
  "title_long_th" varchar(255) UNIQUE,
  "title_long_en" varchar(255) UNIQUE,
  "title_short_en" varchar(255),
  "course_desc_th" TEXT,
  "course_desc_en" TEXT,
  "credit" int NOT NULL DEFAULT 0,
  "prerequisite" varchar(255),
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "student_curricula" (
  "id" BIGSERIAL PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "student_code" int NOT NULL,
  "curriculum_id" int NOT NULL,
  "is_system" bool NOT NULL DEFAULT false,
  "is_default" bool NOT NULL DEFAULT false,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "student_curriculum_courses" (
  "id" BIGSERIAL PRIMARY KEY,
  "student_curriculum_id" int NOT NULL,
  "semester" int NOT NULL,
  "year" int NOT NULL,
  "course_no" varchar(6),
  "category_id" int,
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "student_curriculum_question_answers" (
  "id" BIGSERIAL PRIMARY KEY,
  "student_curriculum_id" int NOT NULL,
  "question_id" int NOT NULL,
  "choice_id" int NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "accounts" (
  "cmuitaccount" varchar(255) PRIMARY KEY,
  "prename" varchar(255),
  "firstname" varchar(255) NOT NULL,
  "lastname" varchar(255) NOT NULL,
  "account_type" varchar(255) NOT NULL,
  "organization" varchar(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "students" (
  "code" int PRIMARY KEY,
  "major_id" int NULL,
  "is_term_accepted" bool NOT NULL DEFAULT false,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "account_types" (
  "id" int PRIMARY KEY,
  "enum" varchar(255) UNIQUE,
  "name_th" varchar(255),
  "name_en" varchar(255),
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "organizations" (
  "id" int PRIMARY KEY,
  "name_th" varchar(255),
  "name_en" varchar(255),
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

ALTER TABLE "sys_curricula" ADD FOREIGN KEY ("major_id") REFERENCES "sys_majors" ("id");

ALTER TABLE "sys_category_requirements" ADD FOREIGN KEY ("category_id") REFERENCES "sys_categories" ("id");

ALTER TABLE "sys_categories" ADD FOREIGN KEY ("curriculum_id") REFERENCES "sys_curricula" ("id");

ALTER TABLE "sys_categories" ADD FOREIGN KEY ("category_type_id") REFERENCES "sys_category_types" ("id");

ALTER TABLE "sys_category_relationships" ADD FOREIGN KEY ("parent_category_id") REFERENCES "sys_categories" ("id");

ALTER TABLE "sys_category_relationships" ADD FOREIGN KEY ("child_category_id") REFERENCES "sys_categories" ("id");

ALTER TABLE "sys_category_relationships" ADD FOREIGN KEY ("curriculum_id") REFERENCES "sys_curricula" ("id");

ALTER TABLE "sys_category_relationships" ADD FOREIGN KEY ("question_id") REFERENCES "sys_curriculum_questions" ("id");

ALTER TABLE "sys_category_relationships" ADD FOREIGN KEY ("choice_id") REFERENCES "sys_curriculum_question_choices" ("id");

ALTER TABLE "sys_category_relationships" ADD FOREIGN KEY ("cross_category_id") REFERENCES "sys_categories" ("id");

ALTER TABLE "sys_curriculum_questions" ADD FOREIGN KEY ("curriculum_id") REFERENCES "sys_curricula" ("id");

ALTER TABLE "sys_curriculum_question_choices" ADD FOREIGN KEY ("question_id") REFERENCES "sys_curriculum_questions" ("id");

ALTER TABLE "sys_category_courses" ADD FOREIGN KEY ("category_id") REFERENCES "sys_categories" ("id");

ALTER TABLE "sys_category_course_requisites" ADD FOREIGN KEY ("category_courses_id") REFERENCES "sys_category_courses" ("id");

ALTER TABLE "student_curriculum_question_answers" ADD FOREIGN KEY ("student_curriculum_id") REFERENCES "student_curricula" ("id") ON DELETE CASCADE;

ALTER TABLE "student_curriculum_question_answers" ADD FOREIGN KEY ("question_id") REFERENCES "sys_curriculum_questions" ("id") ON DELETE CASCADE;

ALTER TABLE "student_curriculum_question_answers" ADD FOREIGN KEY ("choice_id") REFERENCES "sys_curriculum_question_choices" ("id") ON DELETE CASCADE;

ALTER TABLE "student_curricula" ADD FOREIGN KEY ("student_code") REFERENCES "students" ("code") ON DELETE CASCADE;

ALTER TABLE "student_curricula" ADD FOREIGN KEY ("curriculum_id") REFERENCES "sys_curricula" ("id");

ALTER TABLE "student_curriculum_courses" ADD FOREIGN KEY ("student_curriculum_id") REFERENCES "student_curricula" ("id") ON DELETE CASCADE;

ALTER TABLE "student_curriculum_courses" ADD FOREIGN KEY ("category_id") REFERENCES "sys_categories" ("id");
