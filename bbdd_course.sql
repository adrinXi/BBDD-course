CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar,
  "password" varchar,
  "level" int,
  "age" int8,
  "role_id" int
);

CREATE TABLE "users_level" (
  "id" int PRIMARY KEY,
  "id_users" uuid,
  "id_level" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title_course" varchar,
  "description" varchar,
  "level_id" int,
  "teacher" varchar,
  "categorie_id" int
);

CREATE TABLE "courses_videos" (
  "id" uuid PRIMARY KEY,
  "title_video" varchar,
  "url_video" varchar,
  "duration_video" int,
  "course_id" uuid
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name_categorie" varchar
);

CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name_role" varchar
);

CREATE TABLE "level" (
  "id" serial PRIMARY KEY,
  "level_name" varchar
);

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level_id") REFERENCES "level" ("id");

ALTER TABLE "users_level" ADD FOREIGN KEY ("id_users") REFERENCES "users" ("id");

ALTER TABLE "users_level" ADD FOREIGN KEY ("id_level") REFERENCES "level" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categorie_id") REFERENCES "categories" ("id");

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

--it starts here CRUD

insert into users (
	id,
	first_name,
	last_name,
	email,
	password,
	age,
	role_id
) values (
	'd32f1ac7-096e-4745-b9c0-9e1b1f6b9f0e',
	'Vanessa',
	'Romero',
	'roam25023@gmail.com',
	'rootM',
	31,
	1
);

insert into users (
 	id,
	first_name,
	last_name,
	email,
	password,
	age,
	role_id
) values (
	'448d391b-c715-4c98-acf2-900d5a6df47a',
	'José',
	'Villegas',
	'josevillegas@gmail.com',
	'pepe',
	59,
	2
);

insert into users (
	id,
	first_name,
	last_name,
	email,
	"password",
	"level",
	age,
	role_id 
) values (
	'4181218d-aa1b-4d75-8f5a-c74b6b339c8d',
	'Grecia',
	'Villegas',
	'michito001@gmail.com',
	'michitos',
	2,
	10,
	3
), (
	'bb8c1e1e-95fd-45a7-a986-b711b19a0bb3',
	'Adrian',
	'Villegas',
	'anvillegasrm@gmail.com',
	'hospitel01',
	1,
	31,
	3
), (
	'a07796eb-327a-4a67-93ff-a2e32d2d91ea',
	'Concepcion',
	'Rodriguez',
	'conchitardz@gmail.com',
	'conchita',
	3,
	69,
	3
);

insert into roles (
	name_role
) values (
	'Admin'
), (
	'Teacher'
), (
	'Student'
);


insert into level (
	level_name 
) values (
	'Beginner'
), (
	'Intermediate'
), (
	'Advanced'
);

insert into categories (
	name_categorie 
) values (
	'Development'
), (
	'Business'
), (
	'Finance & Accounting'
), (
	'IT & Software'
), (
	'Office productivity'
), (
	'Personal development'
), (
	'Desingn'
), (
	'Marketing'
), (
	'Lifestyle'
), (
	'Photografy & Video'
), (
	'Healt & Fitness'
), (
	'Music'
);

insert into courses (
	id,
	title_course,
	description,
	level_id,
	categorie_id 
) values (
	'c3d90d31-181a-4d04-bb93-f26b49a93215',
	'Web development',
	'Curso de desarrollo web desde 0 a Senior',
	1,
	1
), (
	'891ddb13-5084-44a0-8629-b21a45a7f2bb',
	'Bussines strategy',
	'Estrategias para mejorar ventas',
	3,
	2
);

insert into courses_videos (
	id,
	title_video,
	url_video,
	duration_video,
	course_id
) values (
	'bd86ed0b-78ac-4d79-af70-cb5b80793577',
	'Estrategia de negocios',
	'https://www.youtube.com/watch?v=tiDM_WHGT3E',
	7,
	'c3d90d31-181a-4d04-bb93-f26b49a93215'
);

insert into courses_videos (
	id,
	title_video,
	url_video,
	duration_video,
	course_id
) values (
	'23aa5bb4-1bab-414b-b284-ff83fbecac1a',
	'iniciando en la programacion web',
	'https://www.youtube.com/watch?v=wEIN3PGiOuw',
	8,
	'c3d90d31-181a-4d04-bb93-f26b49a93215'
);