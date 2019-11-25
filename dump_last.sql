--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: advantages; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.advantages (
    id bigint NOT NULL,
    image character varying,
    title character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.advantages OWNER TO yernazar;

--
-- Name: advantages_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.advantages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.advantages_id_seq OWNER TO yernazar;

--
-- Name: advantages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.advantages_id_seq OWNED BY public.advantages.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO yernazar;

--
-- Name: buys; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.buys (
    id bigint NOT NULL,
    name character varying,
    phone character varying,
    course_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.buys OWNER TO yernazar;

--
-- Name: buys_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.buys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buys_id_seq OWNER TO yernazar;

--
-- Name: buys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.buys_id_seq OWNED BY public.buys.id;


--
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.ckeditor_assets (
    id bigint NOT NULL,
    data_file_name character varying NOT NULL,
    data_content_type character varying,
    data_file_size integer,
    type character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ckeditor_assets OWNER TO yernazar;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ckeditor_assets_id_seq OWNER TO yernazar;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.ckeditor_assets_id_seq OWNED BY public.ckeditor_assets.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    user_id integer,
    lesson_id integer,
    text text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO yernazar;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO yernazar;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: cons; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.cons (
    id bigint NOT NULL,
    title character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    icon character varying
);


ALTER TABLE public.cons OWNER TO yernazar;

--
-- Name: cons_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.cons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cons_id_seq OWNER TO yernazar;

--
-- Name: cons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.cons_id_seq OWNED BY public.cons.id;


--
-- Name: course_faqs; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.course_faqs (
    id bigint NOT NULL,
    title character varying,
    answer text,
    course_id integer
);


ALTER TABLE public.course_faqs OWNER TO yernazar;

--
-- Name: course_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.course_faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_faqs_id_seq OWNER TO yernazar;

--
-- Name: course_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.course_faqs_id_seq OWNED BY public.course_faqs.id;


--
-- Name: course_whos; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.course_whos (
    id bigint NOT NULL,
    icon character varying,
    title character varying,
    description text,
    course_id integer
);


ALTER TABLE public.course_whos OWNER TO yernazar;

--
-- Name: course_whos_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.course_whos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_whos_id_seq OWNER TO yernazar;

--
-- Name: course_whos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.course_whos_id_seq OWNED BY public.course_whos.id;


--
-- Name: courses; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.courses (
    id bigint NOT NULL,
    title character varying,
    image character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    color character varying,
    language_id integer,
    landing_header_title character varying,
    landing_header_paragraph text,
    landing_about_title character varying,
    landing_about_paragraph text,
    landing_program_description character varying,
    price text
);


ALTER TABLE public.courses OWNER TO yernazar;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO yernazar;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: courses_users; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.courses_users (
    id bigint NOT NULL,
    user_id integer,
    course_id integer
);


ALTER TABLE public.courses_users OWNER TO yernazar;

--
-- Name: courses_users_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.courses_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_users_id_seq OWNER TO yernazar;

--
-- Name: courses_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.courses_users_id_seq OWNED BY public.courses_users.id;


--
-- Name: faq_categories; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.faq_categories (
    id bigint NOT NULL,
    title character varying,
    language_id integer
);


ALTER TABLE public.faq_categories OWNER TO yernazar;

--
-- Name: faq_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.faq_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faq_categories_id_seq OWNER TO yernazar;

--
-- Name: faq_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;


--
-- Name: faqs; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.faqs (
    id bigint NOT NULL,
    question character varying,
    answer text,
    faq_category_id integer
);


ALTER TABLE public.faqs OWNER TO yernazar;

--
-- Name: faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faqs_id_seq OWNER TO yernazar;

--
-- Name: faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.feedbacks (
    id bigint NOT NULL,
    first_question character varying,
    second_question character varying,
    third_question character varying,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    lesson_id integer
);


ALTER TABLE public.feedbacks OWNER TO yernazar;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.feedbacks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedbacks_id_seq OWNER TO yernazar;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;


--
-- Name: hometasks; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.hometasks (
    id bigint NOT NULL,
    user_id integer,
    lesson_id integer,
    file character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    rate integer,
    comment text
);


ALTER TABLE public.hometasks OWNER TO yernazar;

--
-- Name: hometasks_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.hometasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hometasks_id_seq OWNER TO yernazar;

--
-- Name: hometasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.hometasks_id_seq OWNED BY public.hometasks.id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.languages (
    id bigint NOT NULL,
    title character varying,
    abbr character varying
);


ALTER TABLE public.languages OWNER TO yernazar;

--
-- Name: languages_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.languages_id_seq OWNER TO yernazar;

--
-- Name: languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.languages_id_seq OWNED BY public.languages.id;


--
-- Name: lessons; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.lessons (
    id bigint NOT NULL,
    title character varying,
    content text,
    course_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    video character varying,
    content_mini text,
    task text,
    description text,
    materials character varying
);


ALTER TABLE public.lessons OWNER TO yernazar;

--
-- Name: lessons_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.lessons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lessons_id_seq OWNER TO yernazar;

--
-- Name: lessons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;


--
-- Name: multiple_answers; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.multiple_answers (
    id bigint NOT NULL,
    multiple_question_id integer,
    answer text,
    correct boolean
);


ALTER TABLE public.multiple_answers OWNER TO yernazar;

--
-- Name: multiple_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.multiple_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiple_answers_id_seq OWNER TO yernazar;

--
-- Name: multiple_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.multiple_answers_id_seq OWNED BY public.multiple_answers.id;


--
-- Name: multiple_questions; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.multiple_questions (
    id bigint NOT NULL,
    multiple_id integer,
    question text
);


ALTER TABLE public.multiple_questions OWNER TO yernazar;

--
-- Name: multiple_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.multiple_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiple_questions_id_seq OWNER TO yernazar;

--
-- Name: multiple_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.multiple_questions_id_seq OWNED BY public.multiple_questions.id;


--
-- Name: multiple_results; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.multiple_results (
    id bigint NOT NULL,
    multiple_id integer,
    user_id integer,
    result double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.multiple_results OWNER TO yernazar;

--
-- Name: multiple_results_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.multiple_results_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiple_results_id_seq OWNER TO yernazar;

--
-- Name: multiple_results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.multiple_results_id_seq OWNED BY public.multiple_results.id;


--
-- Name: multiples; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.multiples (
    id bigint NOT NULL,
    lesson_id integer,
    title character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.multiples OWNER TO yernazar;

--
-- Name: multiples_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.multiples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiples_id_seq OWNER TO yernazar;

--
-- Name: multiples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.multiples_id_seq OWNED BY public.multiples.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.news (
    id bigint NOT NULL,
    title character varying,
    description_short text,
    description text,
    image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_dominant_color character varying,
    content text,
    language_id integer
);


ALTER TABLE public.news OWNER TO yernazar;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO yernazar;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: programs; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.programs (
    id bigint NOT NULL,
    title character varying,
    description text,
    course_id integer
);


ALTER TABLE public.programs OWNER TO yernazar;

--
-- Name: programs_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.programs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.programs_id_seq OWNER TO yernazar;

--
-- Name: programs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.programs_id_seq OWNED BY public.programs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO yernazar;

--
-- Name: socials; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.socials (
    id bigint NOT NULL,
    link character varying,
    label character varying,
    icon character varying
);


ALTER TABLE public.socials OWNER TO yernazar;

--
-- Name: socials_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.socials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socials_id_seq OWNER TO yernazar;

--
-- Name: socials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.socials_id_seq OWNED BY public.socials.id;


--
-- Name: student_questions; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.student_questions (
    id bigint NOT NULL,
    lesson_id integer,
    user_id integer,
    question text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    answer text
);


ALTER TABLE public.student_questions OWNER TO yernazar;

--
-- Name: student_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.student_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_questions_id_seq OWNER TO yernazar;

--
-- Name: student_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.student_questions_id_seq OWNED BY public.student_questions.id;


--
-- Name: template_modules; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.template_modules (
    id bigint NOT NULL,
    title character varying,
    language_id integer,
    label character varying
);


ALTER TABLE public.template_modules OWNER TO yernazar;

--
-- Name: template_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.template_modules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.template_modules_id_seq OWNER TO yernazar;

--
-- Name: template_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.template_modules_id_seq OWNED BY public.template_modules.id;


--
-- Name: templates; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.templates (
    id bigint NOT NULL,
    label character varying,
    template_module_id integer,
    title text
);


ALTER TABLE public.templates OWNER TO yernazar;

--
-- Name: templates_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.templates_id_seq OWNER TO yernazar;

--
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.templates_id_seq OWNED BY public.templates.id;


--
-- Name: user_choices; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.user_choices (
    id bigint NOT NULL,
    multiple_question_id integer,
    multiple_answer_id integer,
    user_id integer
);


ALTER TABLE public.user_choices OWNER TO yernazar;

--
-- Name: user_choices_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.user_choices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_choices_id_seq OWNER TO yernazar;

--
-- Name: user_choices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.user_choices_id_seq OWNED BY public.user_choices.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    name_surname character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    gender integer DEFAULT 1 NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    birthday timestamp without time zone,
    avatar character varying,
    admin boolean
);


ALTER TABLE public.users OWNER TO yernazar;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO yernazar;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: advantages id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.advantages ALTER COLUMN id SET DEFAULT nextval('public.advantages_id_seq'::regclass);


--
-- Name: buys id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.buys ALTER COLUMN id SET DEFAULT nextval('public.buys_id_seq'::regclass);


--
-- Name: ckeditor_assets id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('public.ckeditor_assets_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: cons id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.cons ALTER COLUMN id SET DEFAULT nextval('public.cons_id_seq'::regclass);


--
-- Name: course_faqs id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.course_faqs ALTER COLUMN id SET DEFAULT nextval('public.course_faqs_id_seq'::regclass);


--
-- Name: course_whos id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.course_whos ALTER COLUMN id SET DEFAULT nextval('public.course_whos_id_seq'::regclass);


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Name: courses_users id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.courses_users ALTER COLUMN id SET DEFAULT nextval('public.courses_users_id_seq'::regclass);


--
-- Name: faq_categories id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);


--
-- Name: faqs id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);


--
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);


--
-- Name: hometasks id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.hometasks ALTER COLUMN id SET DEFAULT nextval('public.hometasks_id_seq'::regclass);


--
-- Name: languages id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.languages ALTER COLUMN id SET DEFAULT nextval('public.languages_id_seq'::regclass);


--
-- Name: lessons id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);


--
-- Name: multiple_answers id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.multiple_answers ALTER COLUMN id SET DEFAULT nextval('public.multiple_answers_id_seq'::regclass);


--
-- Name: multiple_questions id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.multiple_questions ALTER COLUMN id SET DEFAULT nextval('public.multiple_questions_id_seq'::regclass);


--
-- Name: multiple_results id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.multiple_results ALTER COLUMN id SET DEFAULT nextval('public.multiple_results_id_seq'::regclass);


--
-- Name: multiples id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.multiples ALTER COLUMN id SET DEFAULT nextval('public.multiples_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: programs id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.programs ALTER COLUMN id SET DEFAULT nextval('public.programs_id_seq'::regclass);


--
-- Name: socials id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.socials ALTER COLUMN id SET DEFAULT nextval('public.socials_id_seq'::regclass);


--
-- Name: student_questions id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.student_questions ALTER COLUMN id SET DEFAULT nextval('public.student_questions_id_seq'::regclass);


--
-- Name: template_modules id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.template_modules ALTER COLUMN id SET DEFAULT nextval('public.template_modules_id_seq'::regclass);


--
-- Name: templates id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.templates ALTER COLUMN id SET DEFAULT nextval('public.templates_id_seq'::regclass);


--
-- Name: user_choices id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.user_choices ALTER COLUMN id SET DEFAULT nextval('public.user_choices_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: advantages; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.advantages (id, image, title, description, created_at, updated_at) FROM stdin;
1	54uolC2jjm4_2x.jpg	ЗАНИМАЙСЯ В МИНИ-ГРУППАХ	Небольшие группы от 2х до 8ми человек, в которых преподаватель уделяет внимание каждому ученику и знает его лично\r\n\r\n	2019-11-25 09:39:53.701902	2019-11-25 09:39:53.701902
2	2.jpg	БУДЬ ГОТОВ К РЕАЛЬНОМУ ЕНТ(ЕГЭ) !	Каждый месяц мы сдаём ЕНТ(ЕГЭ) на реальных бланках и с ограничением по времени   \r\n\r\n	2019-11-25 09:40:11.486379	2019-11-25 09:40:11.486379
3	3.jpg	ЗАНИМАЙСЯ КОГДА УДОБНО	Ты сам выбираешь заниматься 2 или 3 раза в неделю, а также день и время занятий\r\n\r\n	2019-11-25 09:40:26.446709	2019-11-25 09:40:26.446709
4	4.jpg	УДОБНОЕ РАСПОЛОЖЕНИЕ ФИЛИАЛА	До нашего филиала удобно добраться из всех районов города\r\n\r\n	2019-11-25 09:40:40.770313	2019-11-25 09:40:40.770313
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-11-05 22:15:17.677578	2019-11-05 22:15:17.677578
\.


--
-- Data for Name: buys; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.buys (id, name, phone, course_id, created_at, updated_at) FROM stdin;
1	Я педик	8747712343	5	2019-07-19 17:25:49.864123	2019-07-19 17:25:49.864123
2			13	2019-07-20 23:35:53.838384	2019-07-20 23:35:53.838384
3	Мандир Дильназ	87755793239	15	2019-07-21 13:42:43.81228	2019-07-21 13:42:43.81228
4	Зинуллина Нұрайна Нартайқызы 	87053284084 	15	2019-07-21 13:42:49.198352	2019-07-21 13:42:49.198352
5	Зинуллина Нұрайна Нартайқызы 	87053284084 	15	2019-07-21 13:43:21.426996	2019-07-21 13:43:21.426996
6	Айгерим	87714650382	15	2019-07-21 13:46:51.079043	2019-07-21 13:46:51.079043
7			13	2019-07-21 13:46:52.047909	2019-07-21 13:46:52.047909
8	Айгерим	87714650382	15	2019-07-21 13:47:20.19281	2019-07-21 13:47:20.19281
9			15	2019-07-21 13:48:13.369691	2019-07-21 13:48:13.369691
10	Меруерт Бисенбай 	+77785491150	15	2019-07-21 13:48:24.510908	2019-07-21 13:48:24.510908
11			15	2019-07-21 13:49:02.076499	2019-07-21 13:49:02.076499
12	Алтын Мендыбаева Мергенқызы	87761408031	15	2019-07-21 13:51:52.339989	2019-07-21 13:51:52.339989
13	Назира Куанышбекова	87028260999	15	2019-07-21 13:53:04.95539	2019-07-21 13:53:04.95539
14	Арай Женис	87021197950	15	2019-07-21 13:53:45.979645	2019-07-21 13:53:45.979645
15	Абдул-фато қызы Гүлсезім 	87059711724	15	2019-07-21 13:56:48.98625	2019-07-21 13:56:48.98625
16	Балнұр Арманқызы	87781433055	15	2019-07-21 13:59:12.243605	2019-07-21 13:59:12.243605
17	Жнксенбай Акмоншак	+77776329607	15	2019-07-21 13:59:42.774516	2019-07-21 13:59:42.774516
18	Gulim Boranbaeva	87712247691	15	2019-07-21 13:59:50.61379	2019-07-21 13:59:50.61379
19	Айжан Сергазиева	87768636199	15	2019-07-21 14:00:26.655183	2019-07-21 14:00:26.655183
20	Əсем Əбдіхат 	87476504210	15	2019-07-21 14:01:20.895078	2019-07-21 14:01:20.895078
21	Shukirbaeva Bagdat	87071112003	15	2019-07-21 14:04:14.754057	2019-07-21 14:04:14.754057
22	Bagdat Shukirbaeva	87071112003	15	2019-07-21 14:04:38.023557	2019-07-21 14:04:38.023557
23	Айдина Секербек 	+7(702)4593565	15	2019-07-21 14:04:45.707838	2019-07-21 14:04:45.707838
24	Бауыржанкызы Дана	87026180312	15	2019-07-21 14:06:38.020746	2019-07-21 14:06:38.020746
25	Aya	87752838815	15	2019-07-21 14:08:19.731793	2019-07-21 14:08:19.731793
26	Байходжаева Гулжайна	87759077143	15	2019-07-21 14:10:48.378268	2019-07-21 14:10:48.378268
27	Балбөбек Баймырзаева Серікқызы	87754692048	15	2019-07-21 14:13:13.704993	2019-07-21 14:13:13.704993
28			15	2019-07-21 14:17:22.934825	2019-07-21 14:17:22.934825
29	Аружан Садық	87075287403	15	2019-07-21 14:18:21.588164	2019-07-21 14:18:21.588164
30	Сүлеймен  Гүлзейнеп 	87472347015	15	2019-07-21 14:18:53.431695	2019-07-21 14:18:53.431695
31	Іңкəрім Абжан	87754213316	15	2019-07-21 14:19:49.834554	2019-07-21 14:19:49.834554
32	Байходжаева Гулжайна	87759077143	15	2019-07-21 14:21:14.926556	2019-07-21 14:21:14.926556
33	Алибекова Арай	+77027125708	15	2019-07-21 14:25:09.665375	2019-07-21 14:25:09.665375
34	Әлия Сақтағанова	+77757445124	15	2019-07-21 14:25:56.929586	2019-07-21 14:25:56.929586
35	Сүйін Ажар	87021794197	15	2019-07-21 14:27:40.581372	2019-07-21 14:27:40.581372
36			15	2019-07-21 14:28:29.820084	2019-07-21 14:28:29.820084
37	Тасболат Ақмарал	87783049302	15	2019-07-21 14:34:00.571519	2019-07-21 14:34:00.571519
38	Мадина Ерғалиева 	87472381613	15	2019-07-21 14:37:57.6703	2019-07-21 14:37:57.6703
39	Танатова Гулбану	87074468498	15	2019-07-21 14:46:08.792127	2019-07-21 14:46:08.792127
40	Суханбердина Сабина	87710845645	15	2019-07-21 14:48:39.807744	2019-07-21 14:48:39.807744
41	Гүлназ Жақсылыкова 	87477459057	15	2019-07-21 14:52:13.315062	2019-07-21 14:52:13.315062
42	Шолпан Койманова	87753908869	15	2019-07-21 14:52:57.540439	2019-07-21 14:52:57.540439
43	Назира Зияна	87075489203	15	2019-07-21 14:53:45.371794	2019-07-21 14:53:45.371794
44	Турақова Гүлнұр	87778001003	15	2019-07-21 14:54:23.157735	2019-07-21 14:54:23.157735
45	Турақова Гүлнұр	87778001003	15	2019-07-21 14:54:23.568349	2019-07-21 14:54:23.568349
46	Елигай Нуртаева	77079423128	15	2019-07-21 14:54:33.821875	2019-07-21 14:54:33.821875
47	Қоскелді Дильназ 	+77476683212	15	2019-07-21 14:55:56.272447	2019-07-21 14:55:56.272447
48	Мандир Дильназ	87755793239	15	2019-07-21 14:57:25.888871	2019-07-21 14:57:25.888871
49	Фариза 	Укубас	15	2019-07-21 14:57:39.763937	2019-07-21 14:57:39.763937
50	Әйгерім Сапарбек	87024238396	15	2019-07-21 14:58:03.566133	2019-07-21 14:58:03.566133
51	Дильназ Избасарова	87716982338	15	2019-07-21 14:59:50.860304	2019-07-21 14:59:50.860304
52	Сүлеймен  Гүлзейнеп 	87472347015	15	2019-07-21 15:00:57.960643	2019-07-21 15:00:57.960643
53	Балбөбек Баймырзаева Серікқызы	87754692048	15	2019-07-21 15:01:00.767712	2019-07-21 15:01:00.767712
54	Ержан Құралай	87473797602	15	2019-07-21 15:01:20.887115	2019-07-21 15:01:20.887115
55	Айбулат Камшат	87475382295	15	2019-07-21 15:01:25.359494	2019-07-21 15:01:25.359494
56	Ержан Құралай	87473797602	15	2019-07-21 15:01:30.110338	2019-07-21 15:01:30.110338
57	Балнур Маукенова 	87073105330	15	2019-07-21 15:02:05.597731	2019-07-21 15:02:05.597731
58	Жанерке Айдаркызы	+7781380934	15	2019-07-21 15:02:25.53377	2019-07-21 15:02:25.53377
59	Еспанова 	Аружан	15	2019-07-21 15:02:29.782087	2019-07-21 15:02:29.782087
60	Айшолпан Уразбаева	87025970219	15	2019-07-21 15:02:40.353316	2019-07-21 15:02:40.353316
61	Ержан Құралай	87473797602	15	2019-07-21 15:02:53.286689	2019-07-21 15:02:53.286689
62	Балбөбек Баймырзаева Серікқызы	87754692048	15	2019-07-21 15:03:02.225786	2019-07-21 15:03:02.225786
63	Жанерке Айдаркызы	+7781380934	15	2019-07-21 15:03:14.054335	2019-07-21 15:03:14.054335
64	Нурсултан Куралбаев 	87718571815	15	2019-07-21 15:04:59.849473	2019-07-21 15:04:59.849473
65	Балбөбек Баймырзаева Серікқызы	87754692048	15	2019-07-21 15:05:26.163064	2019-07-21 15:05:26.163064
66	Ғарифоллаева Гүлдарай	+77757725312	15	2019-07-21 15:06:05.902202	2019-07-21 15:06:05.902202
67	Шұғыла Нағашбек	87474601805	15	2019-07-21 15:06:09.062257	2019-07-21 15:06:09.062257
68	Нұрлыбай Жанерке	87778861224	15	2019-07-21 15:06:18.163776	2019-07-21 15:06:18.163776
69	Гүлден Алмаз	87753424596	15	2019-07-21 15:06:24.969132	2019-07-21 15:06:24.969132
70	Ержанова  Құралай	87473797602	15	2019-07-21 15:06:41.488119	2019-07-21 15:06:41.488119
71	Ержанова  Құралай	87473797602	15	2019-07-21 15:06:44.126385	2019-07-21 15:06:44.126385
72	Мәжіт Қарлығаш	87009861160	15	2019-07-21 15:07:12.643594	2019-07-21 15:07:12.643594
73	Нұрлыбай Жанерке	87778861224	15	2019-07-21 15:08:06.525188	2019-07-21 15:08:06.525188
74	Ғарифоллаева	Гүлдарай	15	2019-07-21 15:08:21.942705	2019-07-21 15:08:21.942705
75	Ғарифоллаева Гүлдерай	87027873433	15	2019-07-21 15:08:47.428071	2019-07-21 15:08:47.428071
76	Сапар Балмира	87713881841	15	2019-07-21 15:09:19.456887	2019-07-21 15:09:19.456887
77	Сапар Балмира	87713881841	15	2019-07-21 15:09:59.382502	2019-07-21 15:09:59.382502
78	Аңсағаным Нығметоллина	87058005407	15	2019-07-21 15:11:16.737883	2019-07-21 15:11:16.737883
79			15	2019-07-21 15:11:22.274255	2019-07-21 15:11:22.274255
80	Gulim Boranbaeva	87712247691	15	2019-07-21 15:11:22.396471	2019-07-21 15:11:22.396471
81	Балмира Сапар	87713881841	15	2019-07-21 15:11:37.20705	2019-07-21 15:11:37.20705
86			15	2019-07-21 15:22:20.9084	2019-07-21 15:22:20.9084
82	Аңсағаным Нығметоллина	87058005407	15	2019-07-21 15:11:43.522869	2019-07-21 15:11:43.522869
87	Жалғасбек Нұрай 	87473407939	15	2019-07-21 15:23:00.117352	2019-07-21 15:23:00.117352
89	Саржанова Жайнар 	87784872003	15	2019-07-21 15:23:55.659247	2019-07-21 15:23:55.659247
91	Фариза 	Укубас	15	2019-07-21 15:26:38.683853	2019-07-21 15:26:38.683853
92	Хажбаханқызы Балжан	87055269185	15	2019-07-21 15:26:43.195753	2019-07-21 15:26:43.195753
93	Сарина Айжан	87712915516	15	2019-07-21 15:26:59.030614	2019-07-21 15:26:59.030614
94	Сапарова Әйгерім 	87789340846	15	2019-07-21 15:27:18.486147	2019-07-21 15:27:18.486147
96	Амангелді Мәдина	87756625260	15	2019-07-21 15:32:28.01636	2019-07-21 15:32:28.01636
97	Zhaina Baimakhanova	+7 (708) 639-80-61	15	2019-07-21 15:32:43.231582	2019-07-21 15:32:43.231582
101	Аника Қабылбек 	87022323803	15	2019-07-21 15:49:07.336645	2019-07-21 15:49:07.336645
102	Шұғыла Нағашбек	87474601805	15	2019-07-21 15:49:17.613838	2019-07-21 15:49:17.613838
103	Аника Қабылбек 	87022323803	15	2019-07-21 15:49:49.475883	2019-07-21 15:49:49.475883
104	Құдайберген Мөлдір	87772437617	15	2019-07-21 15:50:49.105217	2019-07-21 15:50:49.105217
105	Хамитова Диана	+7 (776) 257-45-88	15	2019-07-21 15:51:02.802019	2019-07-21 15:51:02.802019
107	Елубаева Маржан	87754637853	15	2019-07-21 15:54:57.683975	2019-07-21 15:54:57.683975
83	Сейдолла Аяулым Ерболқызы 	87788451066 	15	2019-07-21 15:14:30.50757	2019-07-21 15:14:30.50757
84	Жалғасбек Нұрай 	87473407939	15	2019-07-21 15:19:14.154653	2019-07-21 15:19:14.154653
85	87082429707	87082429707	15	2019-07-21 15:21:39.933092	2019-07-21 15:21:39.933092
88	Саржанова Жайнар 	87784872003	15	2019-07-21 15:23:33.78289	2019-07-21 15:23:33.78289
90	Саржанова Жайнар 	87784872003	15	2019-07-21 15:24:55.004537	2019-07-21 15:24:55.004537
95	Ggg	87768677180	15	2019-07-21 15:31:51.243292	2019-07-21 15:31:51.243292
98	Гүлдана Кенесарева	87479199574	15	2019-07-21 15:41:26.788046	2019-07-21 15:41:26.788046
99	Шұғыла Нағашбек	87474601805	15	2019-07-21 15:43:28.059818	2019-07-21 15:43:28.059818
100	Аника Қабылбек 	87022323803	15	2019-07-21 15:48:21.676535	2019-07-21 15:48:21.676535
106	Аника Қабылбек 	87022323803	15	2019-07-21 15:51:28.602014	2019-07-21 15:51:28.602014
108	Көлдеев Жанат	87711675126	15	2019-07-21 15:58:22.677484	2019-07-21 15:58:22.677484
109	Тұрсынбекова Сымбат	87715434973	15	2019-07-21 16:13:24.991567	2019-07-21 16:13:24.991567
110	Тұрсынбекова Сымбат	87715434973	15	2019-07-21 16:13:29.585655	2019-07-21 16:13:29.585655
111	Макенова Саяжан	+77757612695	9	2019-07-21 16:39:47.581596	2019-07-21 16:39:47.581596
112	Макенова Саяжан	+7 (775) 761-26-95	9	2019-07-21 16:40:23.473441	2019-07-21 16:40:23.473441
113	Айсулу	87754955331	15	2019-07-21 16:51:57.224635	2019-07-21 16:51:57.224635
114	Нұрбақыт Наурызова	87073061562	15	2019-07-21 17:07:44.897335	2019-07-21 17:07:44.897335
115	Assel Batyrgali	87757504102	15	2019-07-21 17:15:08.326774	2019-07-21 17:15:08.326774
116	Азима Есмағанбетова	+7(775)2641668	15	2019-07-21 18:14:41.791747	2019-07-21 18:14:41.791747
117	Еламан Ашимов	87020983546	15	2019-07-21 18:26:05.330961	2019-07-21 18:26:05.330961
118	Шүкірбаева Бағдат	87071112003	15	2019-07-21 19:00:20.572767	2019-07-21 19:00:20.572767
119	Шукирбаева Багдат	87071112003	15	2019-07-21 19:02:48.744184	2019-07-21 19:02:48.744184
120	Ақмарал Сабыржанқызы	87082224745	15	2019-07-21 19:06:01.597308	2019-07-21 19:06:01.597308
121	Аружан Ермекбай 	87782370046	15	2019-07-21 19:18:43.542806	2019-07-21 19:18:43.542806
122			15	2019-07-21 19:22:05.315041	2019-07-21 19:22:05.315041
123	Русламова	Айнара	15	2019-07-22 00:08:24.827251	2019-07-22 00:08:24.827251
124	РусламоваАйнара	87054338889	15	2019-07-22 00:17:41.377718	2019-07-22 00:17:41.377718
125	Фариза Жалалова	+77075239731	15	2019-07-22 07:35:27.729957	2019-07-22 07:35:27.729957
126	Жібек Кожахметова	87079345262	15	2019-07-22 09:41:45.356672	2019-07-22 09:41:45.356672
127	bekzhan	7081971302	15	2019-07-22 10:22:24.562684	2019-07-22 10:22:24.562684
128	Денберген Дариға	87773774160	15	2019-07-22 10:49:07.683166	2019-07-22 10:49:07.683166
129	Гүлім Алибекова	87079683537	15	2019-07-22 17:18:13.850575	2019-07-22 17:18:13.850575
130	Дариға Абдихалыкова	87009623934	15	2019-07-23 05:01:47.502535	2019-07-23 05:01:47.502535
131			15	2019-07-24 02:27:00.535143	2019-07-24 02:27:00.535143
132	Жұмаділла Гүлнұр 	87053512617	15	2019-07-24 02:28:31.794585	2019-07-24 02:28:31.794585
133	Жұмаділла Гүлнұр 	87053512617	15	2019-07-24 02:29:29.055729	2019-07-24 02:29:29.055729
134	Сағындықов Аида	87783968754	11	2019-07-24 11:09:01.89437	2019-07-24 11:09:01.89437
135	Сағындықова Аида	87783968754	15	2019-07-24 11:11:39.523549	2019-07-24 11:11:39.523549
136	Сағындықова  Аида	87783968754	12	2019-07-24 11:12:39.55433	2019-07-24 11:12:39.55433
137	Каскирбаева Нурайым	87714220906	15	2019-07-24 12:57:31.763888	2019-07-24 12:57:31.763888
138	Алия Бодыбаева	87774884158	15	2019-07-24 16:46:56.956928	2019-07-24 16:46:56.956928
139	Asemgul	87789544406	15	2019-07-24 16:54:40.413645	2019-07-24 16:54:40.413645
140	Асемгул	87789544406	15	2019-07-24 16:57:37.129346	2019-07-24 16:57:37.129346
141	Fariza Dauletova 	87471244754	15	2019-07-24 17:01:57.901434	2019-07-24 17:01:57.901434
142	София Қадым	87788124489	15	2019-07-24 17:30:55.314196	2019-07-24 17:30:55.314196
143	София Қадым	87788124489	15	2019-07-24 17:31:38.591683	2019-07-24 17:31:38.591683
144	София Қадым	87788124489	15	2019-07-24 17:35:01.874907	2019-07-24 17:35:01.874907
145	Асемгул	87789544406	15	2019-07-24 17:35:46.318343	2019-07-24 17:35:46.318343
146	Жайна Мадиева	87716027737	15	2019-07-24 18:13:31.275007	2019-07-24 18:13:31.275007
147	Мадина Азаматқызы	+77058803224	15	2019-07-24 18:43:25.329047	2019-07-24 18:43:25.329047
148	София Қадым	87788124489	15	2019-07-24 18:47:12.333589	2019-07-24 18:47:12.333589
149	Дариға Абдихалыкова	87009623934	15	2019-07-24 18:51:44.763966	2019-07-24 18:51:44.763966
150	Асемгул	87789544406	15	2019-07-24 20:10:09.028159	2019-07-24 20:10:09.028159
151	87028520118		15	2019-07-25 05:50:34.224344	2019-07-25 05:50:34.224344
152	Дана Токтарбаева	87027520118	15	2019-07-25 05:51:13.632744	2019-07-25 05:51:13.632744
153	Уалихан Əсем	87763458511	15	2019-07-25 05:51:21.347761	2019-07-25 05:51:21.347761
154	Уалихан Əсем	87763458511	15	2019-07-25 05:54:54.224846	2019-07-25 05:54:54.224846
155			15	2019-07-25 06:05:04.917018	2019-07-25 06:05:04.917018
156	Сауранбек Гулдана	87782031314	15	2019-07-25 06:05:35.410607	2019-07-25 06:05:35.410607
157	Қарлығаш 	+7(707)719-85-91	15	2019-07-25 06:55:56.899001	2019-07-25 06:55:56.899001
158	Gauhar	87756496506	15	2019-07-25 08:47:14.124238	2019-07-25 08:47:14.124238
159	Gauhar	87756496506	15	2019-07-25 08:47:14.623447	2019-07-25 08:47:14.623447
160	Қарасайқызы Жаңашүл	+77753463379	10	2019-07-25 09:27:55.402024	2019-07-25 09:27:55.402024
161	Қарасайқызы Жаңагүл	+77753463379	13	2019-07-25 09:32:28.213891	2019-07-25 09:32:28.213891
162	Серіков Арман	87781237213	12	2019-07-27 17:13:20.05074	2019-07-27 17:13:20.05074
163	Жанерке	87781380934	12	2019-07-27 17:22:46.102046	2019-07-27 17:22:46.102046
164	Тұрсынбекова Сымбат	87715434973	10	2019-07-27 18:03:24.046155	2019-07-27 18:03:24.046155
165	Темірбай Назгүл	87714786614	11	2019-07-27 18:06:15.860065	2019-07-27 18:06:15.860065
166	Сабитова Батима 	87022804385	14	2019-07-27 18:16:08.861343	2019-07-27 18:16:08.861343
167	Тұрсынбай Зухра	87751296074	14	2019-07-27 19:06:57.671185	2019-07-27 19:06:57.671185
168	Әділхан 	Әсел 	11	2019-07-27 19:16:08.029432	2019-07-27 19:16:08.029432
169	Балнұр Ерлікқызы	87766626246	10	2019-07-28 09:30:23.172472	2019-07-28 09:30:23.172472
170	Сапарбек Жанерке 	87475642168	13	2019-07-28 17:14:22.80359	2019-07-28 17:14:22.80359
171			13	2019-07-29 11:58:11.742107	2019-07-29 11:58:11.742107
172			13	2019-07-29 11:58:13.319815	2019-07-29 11:58:13.319815
173	Торғайбай Айшагул	87011517016	14	2019-07-29 15:29:11.893834	2019-07-29 15:29:11.893834
174	Торғайбай Айшагул	87011517016	13	2019-07-29 15:29:44.414011	2019-07-29 15:29:44.414011
175	Кенеариева Гүлдана	87479199574	14	2019-07-30 04:07:32.867077	2019-07-30 04:07:32.867077
176	Жанерке Сагымханова	87781380934	12	2019-07-30 15:34:54.825139	2019-07-30 15:34:54.825139
177	Нұртлеуова Таңшолпан 	87071570673	10	2019-07-30 19:46:16.343937	2019-07-30 19:46:16.343937
178	Нұртлеуова Таңшолпан 	87071570673	13	2019-07-30 19:47:00.476639	2019-07-30 19:47:00.476639
179	Нұртлеуова Таңшолпан 	87071570673	9	2019-07-30 19:47:24.115001	2019-07-30 19:47:24.115001
180	Нұртлеуова Таңшолпан 	87071570673	14	2019-07-30 19:47:57.120265	2019-07-30 19:47:57.120265
181	Бекзат	87711494430	11	2019-08-03 07:08:43.657663	2019-08-03 07:08:43.657663
182	Қаблаев Құралай	+77759254167	13	2019-08-05 07:50:42.763993	2019-08-05 07:50:42.763993
183	Балнұр Ерлікқызы	87766626246	10	2019-08-05 09:01:20.191226	2019-08-05 09:01:20.191226
184	Diana	87475451002	9	2019-08-06 10:49:08.708702	2019-08-06 10:49:08.708702
185			11	2019-08-06 20:06:38.986926	2019-08-06 20:06:38.986926
186	bekzat.zhanysbay	ывы	16	2019-08-08 23:44:59.457567	2019-08-08 23:44:59.457567
187	Аңсағаным Нығметоллина	87058005407	16	2019-08-09 15:46:44.082385	2019-08-09 15:46:44.082385
188	Есмурзина Арай 	87059154575	16	2019-08-13 08:32:43.903367	2019-08-13 08:32:43.903367
189	Нұрлан мөлдір	87018681304	16	2019-08-13 09:01:48.940837	2019-08-13 09:01:48.940837
190	Alikhanova Moldir	87475496798	16	2019-08-13 09:14:51.400775	2019-08-13 09:14:51.400775
191	Каламкас	87058887220	16	2019-08-13 09:15:22.486803	2019-08-13 09:15:22.486803
192	Sultanova Salidat	87479337159	16	2019-08-13 09:22:20.268403	2019-08-13 09:22:20.268403
193	Каныбек Нурсезим	87074608341	16	2019-08-13 09:28:42.598019	2019-08-13 09:28:42.598019
194	Акимгалиева Аружан 	+77474523545	16	2019-08-13 09:35:03.990339	2019-08-13 09:35:03.990339
195	Акимгалиева Аружан	+77474523545	16	2019-08-13 09:37:15.939157	2019-08-13 09:37:15.939157
196	Аббас Ләззат	87718053328	16	2019-08-13 09:37:30.14104	2019-08-13 09:37:30.14104
197	Аббас Ләззат	87718053328	16	2019-08-13 09:37:34.465858	2019-08-13 09:37:34.465858
198	Каныбек Нурсезим	87074608341	16	2019-08-13 09:45:51.872919	2019-08-13 09:45:51.872919
199	Каныбек Нурсезим	87074608341	16	2019-08-13 09:46:24.822926	2019-08-13 09:46:24.822926
200	Намазбай Жаным	87089214463	16	2019-08-13 09:51:44.726792	2019-08-13 09:51:44.726792
201	Альбина	87476040185	16	2019-08-13 09:55:01.5844	2019-08-13 09:55:01.5844
202	Мекемтас Аружан	87084900449	16	2019-08-13 10:12:52.172206	2019-08-13 10:12:52.172206
203	Каныбек Нурсезим 	87074608341	16	2019-08-13 10:16:39.439271	2019-08-13 10:16:39.439271
204	Зарина Игенова	87056281640	16	2019-08-13 11:08:20.527446	2019-08-13 11:08:20.527446
205	Дамира Аxметова	87784484220	16	2019-08-13 11:17:00.336829	2019-08-13 11:17:00.336829
206	Коныс Сымбат		16	2019-08-13 11:48:04.034314	2019-08-13 11:48:04.034314
207	Коныс Сымбат 	8 707 808 20 03	16	2019-08-13 11:48:51.832353	2019-08-13 11:48:51.832353
208	Мухитова Коркемай	87058796375	16	2019-08-13 12:02:52.81733	2019-08-13 12:02:52.81733
209	Жұбатқан Ақбота	87761059291	16	2019-08-13 12:29:23.504389	2019-08-13 12:29:23.504389
210	Жұбатқан Ақбота	87761059291	16	2019-08-13 12:31:03.695269	2019-08-13 12:31:03.695269
211	Аружан	+77757413491	16	2019-08-13 12:39:11.291322	2019-08-13 12:39:11.291322
212	Aldazhar Aidana 	87072812402	16	2019-08-13 12:47:52.710277	2019-08-13 12:47:52.710277
213		+77750674582	16	2019-08-13 12:54:52.662288	2019-08-13 12:54:52.662288
214	Назгул Жолым	+77750674582	16	2019-08-13 12:56:41.369806	2019-08-13 12:56:41.369806
215	Aldazhar Aidana 	87072812402	16	2019-08-13 12:59:07.267386	2019-08-13 12:59:07.267386
216	Базылхан Карлығаш	87077198591	16	2019-08-13 13:03:40.546168	2019-08-13 13:03:40.546168
217	Сейткерей Малика	87761949947	16	2019-08-13 13:03:46.148057	2019-08-13 13:03:46.148057
218	Биболқызы Қарагөз	87478089618	16	2019-08-13 14:12:01.946236	2019-08-13 14:12:01.946236
219	Сая Карипулла 	87478301433	16	2019-08-13 14:16:52.108121	2019-08-13 14:16:52.108121
220	Байбала Шұғыла	87074435025	16	2019-08-13 14:44:08.36255	2019-08-13 14:44:08.36255
221	Байбала Шұғыла 	87074435025	16	2019-08-13 14:45:22.485665	2019-08-13 14:45:22.485665
222	Акару	87085705074	16	2019-08-13 14:54:52.026781	2019-08-13 14:54:52.026781
223	Байбала Шұғыла	87072643227	16	2019-08-13 14:57:05.841762	2019-08-13 14:57:05.841762
224	Акмаржан 	87029242177	16	2019-08-13 14:59:23.97536	2019-08-13 14:59:23.97536
225	Ketebaeva Anel	87075462879	16	2019-08-13 15:58:08.174724	2019-08-13 15:58:08.174724
226	Анель Кетебаева	87075462879	16	2019-08-13 16:00:36.112537	2019-08-13 16:00:36.112537
227	Жузболсын Еркеназ 	87009823603	16	2019-08-13 16:05:14.757645	2019-08-13 16:05:14.757645
228	Гүлмира	87027300790	16	2019-08-13 16:10:31.684618	2019-08-13 16:10:31.684618
229	Акару	87085705074	16	2019-08-13 16:18:38.710074	2019-08-13 16:18:38.710074
230	Еділ Айдана	87765194470	16	2019-08-13 16:27:03.521947	2019-08-13 16:27:03.521947
231	Даулетжанова Дильназ	87718595263	16	2019-08-13 16:27:38.118139	2019-08-13 16:27:38.118139
232	Сағызбаева Гүлзада	87020622380	16	2019-08-13 16:29:13.320072	2019-08-13 16:29:13.320072
233	Алтынай 	87716936702	16	2019-08-13 16:32:06.890943	2019-08-13 16:32:06.890943
234	Ақерке	87029319612	16	2019-08-13 16:33:41.587348	2019-08-13 16:33:41.587348
235	Ұлжан Амангелжиева	87789499344	16	2019-08-13 16:34:36.610382	2019-08-13 16:34:36.610382
236			16	2019-08-13 16:34:53.134752	2019-08-13 16:34:53.134752
237		87473603503	16	2019-08-13 16:52:06.137232	2019-08-13 16:52:06.137232
238	Темірханова Нұржамал	87021230938	16	2019-08-13 17:04:35.016163	2019-08-13 17:04:35.016163
239	Ерсинали Самал	87783701336	16	2019-08-13 17:25:48.850604	2019-08-13 17:25:48.850604
240	Уалихан Алина	87079740252	16	2019-08-13 17:30:41.623116	2019-08-13 17:30:41.623116
241	Аружан	+777757413491	16	2019-08-13 17:34:28.550141	2019-08-13 17:34:28.550141
242	Altybaykyzy Indira	87002146513	16	2019-08-13 18:02:11.635447	2019-08-13 18:02:11.635447
243	Нұрғиса 	Таскибаев 	16	2019-08-13 18:02:27.016054	2019-08-13 18:02:27.016054
244	Оспан Майса	+77085641342	16	2019-08-13 18:04:20.22052	2019-08-13 18:04:20.22052
245	Altybaykyzy Indira	87002146513	16	2019-08-13 18:04:23.64046	2019-08-13 18:04:23.64046
246	Оспан Майса	+77085641342	16	2019-08-13 18:07:07.545321	2019-08-13 18:07:07.545321
247	Даниал Телтай	87071306203	16	2019-08-13 18:17:41.975399	2019-08-13 18:17:41.975399
248	Турысбекова Диляра	87477578921	16	2019-08-13 18:20:41.511201	2019-08-13 18:20:41.511201
249	Даниал Телтай	87071306203	16	2019-08-13 18:24:08.676812	2019-08-13 18:24:08.676812
250	Сансызбай Ирэн	87020423712	16	2019-08-13 18:46:48.434347	2019-08-13 18:46:48.434347
251	Назым Жаксылыкова 	+77777393438	16	2019-08-13 19:27:28.04714	2019-08-13 19:27:28.04714
252	Жибек Курмангазыкызы	87774537923	16	2019-08-13 20:02:34.960664	2019-08-13 20:02:34.960664
253	Ермуханбетова Аружан		16	2019-08-13 20:09:27.07644	2019-08-13 20:09:27.07644
254	Ермуханбетова Аружан	87713544727	16	2019-08-13 20:09:56.505718	2019-08-13 20:09:56.505718
255		87716566811	16	2019-08-13 21:34:42.907063	2019-08-13 21:34:42.907063
256	Арайлым	87716566811	16	2019-08-13 21:35:50.287696	2019-08-13 21:35:50.287696
257	Базарбек Айгерім	87021055603	16	2019-08-14 04:13:12.022896	2019-08-14 04:13:12.022896
258	Аманкелді Әсем 	+77782931353	16	2019-08-14 05:11:26.74866	2019-08-14 05:11:26.74866
259	Исмаилова Камила	87712616500	16	2019-08-14 06:03:29.62963	2019-08-14 06:03:29.62963
260	Маржан Ержанкызы	87773824594	16	2019-08-14 06:35:33.360516	2019-08-14 06:35:33.360516
261	Ержанова Маржан	87773824594	16	2019-08-14 06:36:09.348112	2019-08-14 06:36:09.348112
262	Ержанова Маржан	87773824594	16	2019-08-14 06:36:26.017094	2019-08-14 06:36:26.017094
263	Жүсіпбекова Инабат	87078243142	16	2019-08-14 08:07:04.622569	2019-08-14 08:07:04.622569
264	Жүсіпбекова Инабат	87078243142	16	2019-08-14 08:09:04.467325	2019-08-14 08:09:04.467325
265	Ashirkhan Gulnaz Maratkyzy	87076929920	16	2019-08-14 08:16:29.631005	2019-08-14 08:16:29.631005
266	Жүсіпбекова Сымбат	87078243152	16	2019-08-14 08:16:56.017058	2019-08-14 08:16:56.017058
267	Кристина Бойко	87052418648	16	2019-08-14 09:22:37.650074	2019-08-14 09:22:37.650074
268	Мелис Кундыз	87027911243	16	2019-08-14 09:23:36.34456	2019-08-14 09:23:36.34456
269	Мелис Кундыз	87027911243	16	2019-08-14 09:27:04.074107	2019-08-14 09:27:04.074107
270	Мелис Кундыз	87027911243	16	2019-08-14 09:27:04.321505	2019-08-14 09:27:04.321505
271	Мелис Кундыз	87027911243	16	2019-08-14 09:27:06.690408	2019-08-14 09:27:06.690408
272	Мелис Кундыз	87027911243	16	2019-08-14 09:27:06.987698	2019-08-14 09:27:06.987698
273	Өтешова Жарқынай	+77475060242	16	2019-08-15 07:27:17.844514	2019-08-15 07:27:17.844514
274			16	2019-08-15 07:28:02.735184	2019-08-15 07:28:02.735184
275	Ултусын 	87076214158	16	2019-08-15 18:28:45.075544	2019-08-15 18:28:45.075544
276	Ултусын 	87076214158	16	2019-08-15 18:30:06.598816	2019-08-15 18:30:06.598816
277		87078910073	16	2019-08-15 21:30:24.242414	2019-08-15 21:30:24.242414
278	Аяулым Жандылдина 	87078910073	16	2019-08-15 21:30:56.538322	2019-08-15 21:30:56.538322
279			14	2019-08-28 10:30:41.454701	2019-08-28 10:30:41.454701
280			14	2019-08-31 14:34:55.969294	2019-08-31 14:34:55.969294
281	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:27.924733	2019-09-01 07:52:27.924733
282	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:28.295462	2019-09-01 07:52:28.295462
283	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:29.443914	2019-09-01 07:52:29.443914
284	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:32.690573	2019-09-01 07:52:32.690573
285	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:33.153149	2019-09-01 07:52:33.153149
286	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:34.41135	2019-09-01 07:52:34.41135
287	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:34.797349	2019-09-01 07:52:34.797349
288	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:36.689096	2019-09-01 07:52:36.689096
289	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:37.516554	2019-09-01 07:52:37.516554
290	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:37.799199	2019-09-01 07:52:37.799199
291	Қаблаева Құралай	+77759254167	13	2019-09-01 07:52:39.91546	2019-09-01 07:52:39.91546
292	Қуандықова Айбота	87716006832	9	2019-09-01 10:33:24.084907	2019-09-01 10:33:24.084907
293	Жанагул Сыдыкова 	87757459186	12	2019-09-01 13:29:40.094721	2019-09-01 13:29:40.094721
294	Аружан Асылбекова 	87781334547	10	2019-09-03 17:37:52.909117	2019-09-03 17:37:52.909117
295	Мұқағали	87001146614	11	2019-09-14 16:26:27.783454	2019-09-14 16:26:27.783454
296	Мұқағали	87001146614	11	2019-09-14 16:26:52.880291	2019-09-14 16:26:52.880291
297	Alkenova	77081286827	9	2019-09-14 16:27:37.43705	2019-09-14 16:27:37.43705
298	Мұқағали	Нглшщ	11	2019-09-14 16:29:30.834115	2019-09-14 16:29:30.834115
299	Алма Мадхат	87789038508	9	2019-09-14 19:50:12.488737	2019-09-14 19:50:12.488737
300			9	2019-09-23 11:08:21.683866	2019-09-23 11:08:21.683866
301			13	2019-09-24 14:24:58.87188	2019-09-24 14:24:58.87188
302			10	2019-09-27 14:46:05.269153	2019-09-27 14:46:05.269153
303	Әлібаева Аружан	+77776703137	10	2019-09-27 14:47:21.827116	2019-09-27 14:47:21.827116
304			11	2019-09-28 13:24:23.439013	2019-09-28 13:24:23.439013
305		87718135694	11	2019-09-28 13:36:23.568389	2019-09-28 13:36:23.568389
306	Жумабаев Нурбол	87718135694	11	2019-09-28 13:38:53.095087	2019-09-28 13:38:53.095087
307	Жумабаев Нурбол	87718135694	11	2019-09-28 13:38:55.46316	2019-09-28 13:38:55.46316
308			13	2019-09-29 06:24:01.394641	2019-09-29 06:24:01.394641
309	Махаббат Боранбева	87022698418 	13	2019-09-29 06:24:41.750346	2019-09-29 06:24:41.750346
310	Муратбекова Асем	87006743895	9	2019-09-29 09:22:22.70728	2019-09-29 09:22:22.70728
311			14	2019-09-29 10:04:25.409499	2019-09-29 10:04:25.409499
312			11	2019-09-29 16:15:16.463946	2019-09-29 16:15:16.463946
313	Динара	87024391341	11	2019-09-29 16:18:06.933991	2019-09-29 16:18:06.933991
314	Козы-Корпеш Айзере	87053344511	10	2019-10-07 14:09:26.947731	2019-10-07 14:09:26.947731
315	Козы-Корпеш Айзере	87053344511	10	2019-10-07 16:16:00.855419	2019-10-07 16:16:00.855419
316	Гулжаз Жадигер	87472384159	14	2019-10-16 10:31:15.982115	2019-10-16 10:31:15.982115
317	Әділет 	87071397327	11	2019-10-18 15:43:19.493036	2019-10-18 15:43:19.493036
318	Козы-Корпеш Айзере	87053344511	10	2019-10-18 16:00:49.045949	2019-10-18 16:00:49.045949
319	Бахонова Аружан	87083915731	11	2019-10-19 08:48:40.823912	2019-10-19 08:48:40.823912
320	Бахонова Аружан	87083915731	12	2019-10-19 08:49:31.969688	2019-10-19 08:49:31.969688
321	Ринатқызы Динара	87006781610	13	2019-10-19 13:48:18.367909	2019-10-19 13:48:18.367909
322			13	2019-10-19 15:22:31.616409	2019-10-19 15:22:31.616409
323			14	2019-10-19 17:09:28.141736	2019-10-19 17:09:28.141736
324	Динара Куанай		11	2019-10-20 19:39:29.396059	2019-10-20 19:39:29.396059
325			12	2019-10-21 04:50:54.834598	2019-10-21 04:50:54.834598
326	Аружан Амандыкова	87470735240	14	2019-10-21 11:37:59.269611	2019-10-21 11:37:59.269611
327	Аружан Амандыкова 	87470735240	13	2019-10-21 11:38:53.425054	2019-10-21 11:38:53.425054
328	Алдиярова Диана 	8705 231 65 60	10	2019-10-21 18:26:23.686965	2019-10-21 18:26:23.686965
329	Диана Алдиярова	8705 2316560	10	2019-10-21 18:27:23.895029	2019-10-21 18:27:23.895029
330	Альгужинова Мадина	87059938147	12	2019-10-21 18:43:54.531822	2019-10-21 18:43:54.531822
331	Айсұлу	87711434868	12	2019-10-22 01:56:48.021312	2019-10-22 01:56:48.021312
332	Айсұлу	87711434868	12	2019-10-22 01:57:18.642092	2019-10-22 01:57:18.642092
333	Айсұлу Мамырова	87751939441	12	2019-10-22 02:01:51.763701	2019-10-22 02:01:51.763701
334	Айсұлу Мамырова	87751939441	14	2019-10-22 02:02:23.300567	2019-10-22 02:02:23.300567
\.


--
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.ckeditor_assets (id, data_file_name, data_content_type, data_file_size, type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.comments (id, user_id, lesson_id, text, created_at, updated_at) FROM stdin;
14	302	23	Барлығы түсінікті рахмет 	2019-09-02 15:22:17.973522	2019-09-02 15:22:17.973522
15	316	6	Кіріспе сабақ ұнады.	2019-09-02 15:26:53.765069	2019-09-02 15:26:53.765069
16	310	23	Түсінікті болды	2019-09-02 15:35:19.041511	2019-09-02 15:35:19.041511
17	298	6	👍🏻	2019-09-02 15:38:17.934305	2019-09-02 15:38:17.934305
18	287	6	Пайдалы сабақ болды, рахмет!	2019-09-02 16:03:04.087756	2019-09-02 16:03:04.087756
19	300	6	Кіріспе сабақ ұнады	2019-09-02 16:20:57.313346	2019-09-02 16:20:57.313346
20	305	23	Түсінікті 	2019-09-02 16:40:35.601645	2019-09-02 16:40:35.601645
21	294	6	Кіріспе сабақ өте пайдалы болды!	2019-09-02 16:41:58.46629	2019-09-02 16:41:58.46629
22	312	6	Өте түсінікті😍рахметт	2019-09-03 02:22:22.371901	2019-09-03 02:22:22.371901
23	323	25	оте коп дайыындык кажет	2019-09-03 16:31:23.509797	2019-09-03 16:31:23.509797
24	325	26	Көп тапсырманың жауабын білегендіктен интуиция арқылы белгіледім! Алдағы уақытта барлық сабақтарды меңгеріп аламын деп үміттенемін!¥	2019-09-03 16:33:36.185908	2019-09-03 16:33:36.185908
25	318	26	иә , шыны керек менде ішкі түйсікпен белгілідім ,біразын. Кейде солар да жұрыс боп кетуші еді..☺🙃😶	2019-09-04 12:52:56.842995	2019-09-04 12:52:56.842995
26	302	27	Барлығы түсінікті рахмет 😊	2019-09-04 17:30:46.437968	2019-09-04 17:30:46.437968
27	309	29		2019-09-05 02:21:04.026562	2019-09-05 02:21:04.026562
28	309	29		2019-09-05 02:21:08.103145	2019-09-05 02:21:08.103145
29	321	27	Рақмет барлығы түсiнiктi	2019-09-05 12:19:58.458823	2019-09-05 12:19:58.458823
30	300	29	Сабақ ұнады	2019-09-05 14:14:46.316833	2019-09-05 14:14:46.316833
31	294	27	сабақ маған ұнады	2019-09-05 16:32:33.565905	2019-09-05 16:32:33.565905
32	310	27	Сабақтың түсіндірілуі барлығы керемет.Келесі сабақтар бұдан да қызықты өтеді деген ойдамын.Рахмет	2019-09-05 16:47:19.18619	2019-09-05 16:47:19.18619
33	315	30	Rakhmeet tusinikti❤️	2019-09-06 12:53:41.870598	2019-09-06 12:53:41.870598
34	321	30	Сабақ өте қызықты болды рақмет материалдар өте көп екен 	2019-09-06 13:11:57.6652	2019-09-06 13:11:57.6652
35	307	28	Сабақ түсінікті болды. Бүгін тест жаздық мектепте 1 сұрақ келді сіз айтқан	2019-09-06 13:30:31.14916	2019-09-06 13:30:31.14916
36	310	31	Көп рахмет	2019-09-07 10:34:49.955081	2019-09-07 10:34:49.955081
37	321	31	Сабақ өте қызықты болды рақмет материалдар өте көп екен 	2019-09-07 10:36:46.230563	2019-09-07 10:36:46.230563
38	294	29	сабақ ұнады	2019-09-07 10:47:56.870419	2019-09-07 10:47:56.870419
39	294	31	Сабақ қызықты болды	2019-09-07 12:21:37.860135	2019-09-07 12:21:37.860135
40	321	32	Видео 13-ақ минут болса да, мәліметтер өте көп екен 1 сағатта конспект жаздым)))) 	2019-09-07 18:12:56.180176	2019-09-07 18:12:56.180176
41	315	33	👍🏻👍🏻👍🏻	2019-09-08 08:05:27.843027	2019-09-08 08:05:27.843027
42	300	35	Сабақ ұнады	2019-09-08 12:28:10.371635	2019-09-08 12:28:10.371635
43	321	36	Рақмет барлығы түсiнiктi. Мәліметтер өте көп екен! 	2019-09-09 11:21:19.417073	2019-09-09 11:21:19.417073
44	294	32	сабақ ұнады	2019-09-09 17:12:03.456475	2019-09-09 17:12:03.456475
45	294	36	Барлығы түсінікті, рахмет	2019-09-10 08:12:34.690433	2019-09-10 08:12:34.690433
46	294	37	сабақ маған ұнады, жақсы түсіндірілген	2019-09-10 08:13:58.830618	2019-09-10 08:13:58.830618
47	315	37	👍🏻👍🏻👍🏻🔥🔥	2019-09-12 08:27:23.260279	2019-09-12 08:27:23.260279
48	307	43	4 сабақ қатты ұнады. Рахмет❤. 	2019-09-12 15:17:42.712634	2019-09-12 15:17:42.712634
\.


--
-- Data for Name: cons; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.cons (id, title, description, created_at, updated_at, icon) FROM stdin;
3	ЕНТ(ЕГЭ) 	Подготовка к ЕНТ(ЕГЭ) по всем предметам\r\n\r\n	2019-11-25 09:02:25.220038	2019-11-25 09:26:35.927113	http://icons.iconarchive.com/icons/paomedia/small-n-flat/512/light-bulb-icon.png
2	72 филиала 	72 филиала в СНГ\r\n\r\n	2019-11-25 09:01:54.841429	2019-11-25 09:26:40.636864	http://icons.iconarchive.com/icons/paomedia/small-n-flat/512/light-bulb-icon.png
1	97% ПОСТУПИВШИХ	За 9 лет 97% наших учеников поступили в вуз\r\n\r\n	2019-11-25 09:01:45.853617	2019-11-25 09:26:46.080057	http://icons.iconarchive.com/icons/paomedia/small-n-flat/512/light-bulb-icon.png
\.


--
-- Data for Name: course_faqs; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.course_faqs (id, title, answer, course_id) FROM stdin;
20	Курс біткеннен соң сертификат беріледі ме?(Қазақстан тарихы | ҰБТ)	Иа, курстың барлық сабақтарын қарап, үй жұмыстарын жасаған адамдарға сертификат беріледі(Қазақстан тарихы | ҰБТ)	14
11	Сабақтарды уақытында көре алмай қалсам не болады?	Сабақтар әр күн сайын азанда шығып отырады. Оны азанда көре алмай қалсаңыз түсте немесе кешке көре аласыз.	13
10	Төлемді қалай жасасам болады?	Төлемді Kaspi Gold, QIWI және Халық банк арқылы жасасаңыз болады. \r\n\r\nИИН: 010208501093\r\nKaspi Gold: 5169 4931 2952 5773\r\nQIWI: 87471086530\r\nHALYK BANK: 4390 8722 2246 9787\r\nЖанысбай Бекзат Ғаниұлы\r\nZhanysbay Bekzat\r\n\r\nТөлем жасаған соң, міндетті түрде Чекті 87471086530 номеріне ватсап арқылы жіберіңіз!	13
9	Тапсырма орындап үлгермесем, курстан шығамын ба?	Жоқ. курстан шықпайсыз. Бірақ, сертификат алмайсыз.	13
14	Сабақ шыққан уақытында интернетім болмай көре алмай қалсам не болады?(Қазақстан тарихы | ҰБТ)	Бізде сабақтар прямой эфирда өтпейді және әрқашан сақталып тұрады. Сондықтан күннің қай уақытында және неше рет көрсеңіз де өз еркіңіз!(Қазақстан тарихы | ҰБТ)	14
15	Сабақтарды уақытында көре алмай қалсам не болады?(Қазақстан тарихы | ҰБТ)	Сабақтар әр күн сайын азанда шығып отырады. Оны азанда көре алмай қалсаңыз түсте немесе кешке көре аласыз.(Қазақстан тарихы | ҰБТ)	14
16	Төлемді қалай жасасам болады?(Қазақстан тарихы | ҰБТ)	Төлемді Kaspi Gold, QIWI және Халық банк арқылы жасасаңыз болады. \r\n\r\nИИН: 010208501093\r\nKaspi Gold: 5169 4931 2952 5773\r\nQIWI: 87471086530\r\nHALYK BANK: 4390 8722 2246 9787\r\nЖанысбай Бекзат Ғаниұлы\r\nZhanysbay Bekzat\r\n\r\nТөлем жасаған соң, міндетті түрде Чекті 87471086530 номеріне ватсап арқылы жіберіңіз!(Қазақстан тарихы | ҰБТ)	14
17	Тапсырма орындап үлгермесем, курстан шығамын ба?(Қазақстан тарихы | ҰБТ)	Жоқ. курстан шықпайсыз. Бірақ, сертификат алмайсыз.(Қазақстан тарихы | ҰБТ)	14
18	Тапсырмалар болады ма? Кім тексереді?(Қазақстан тарихы | ҰБТ)	Әр сабақтан кейін сізге тапсырмалар беріледі. Үй жұмысын сіздің мұғаліміңіз тексеріп жауабы мен кеңесін айтып отырады.(Қазақстан тарихы | ҰБТ)	14
19	Курсқа қалай тіркелемін?(Қазақстан тарихы | ҰБТ)	Курсқа тіркелу үшін жоғарыдағы форманы толтырыңыз, немесе, 87471086530 нөміріне ватсап арқылы жазыңыз(Қазақстан тарихы | ҰБТ)	14
21	Курста үй жұмыстары беріледі ме?(Қазақстан тарихы | ҰБТ)	Иа, курс барысында үй жұмыстары мен тестілеу де болады.(Қазақстан тарихы | ҰБТ)	14
8	Тапсырмалар болады ма? Кім тексереді?	Әр сабақтан кейін сізге тапсырмалар беріледі. Үй жұмысын сіздің мұғаліміңіз тексеріп жауабы мен кеңесін айтып отырады.	13
7	Курсқа қалай тіркелемін?	Курсқа тіркелу үшін жоғарыдағы форманы толтырыңыз, немесе, 87471086530 нөміріне ватсап арқылы жазыңыз	13
6	Курс біткеннен соң сертификат беріледі ме?	Иа, курстың барлық сабақтарын қарап, үй жұмыстарын жасаған адамдарға сертификат беріледі	13
5	Курста үй жұмыстары беріледі ме?	Иа, курс барысында үй жұмыстары мен тестілеу де болады.	13
4	Курс қашан басталады?	Курс 25 тамыз басталады	13
3	Сабақтар қай жерде өтеді?	Сабақтар осы вебсайтымызда өтеді. Сіз төлем жасағаннан соң, сізге осы сайттан жеке кабинет беріледі.	13
2	Курс прямой эфирде өтеді ме?	Жоқ курс прямой эфирде өтпейді. Күн сайын сабақ сіздің жеке кабинетіңізде шығып отырады, әр сабақтың астында сұрақ қоятын жер бар. Сұрақ туындаса сол жерге жазасыз, мұғалім жауап береді.	13
12	Сабақ шыққан уақытында интернетім болмай көре алмай қалсам не болады?	Бізде сабақтар прямой эфирда өтпейді және әрқашан сақталып тұрады. Сондықтан күннің қай уақытында және неше рет көрсеңіз де өз еркіңіз!	13
22	Курс қашан басталады?(Қазақстан тарихы | ҰБТ)	Курс 25 тамыз басталады(Қазақстан тарихы | ҰБТ)	14
23	Сабақтар қай жерде өтеді?(Қазақстан тарихы | ҰБТ)	Сабақтар осы вебсайтымызда өтеді. Сіз төлем жасағаннан соң, сізге осы сайттан жеке кабинет беріледі.(Қазақстан тарихы | ҰБТ)	14
24	Курс прямой эфирде өтеді ме?(Қазақстан тарихы | ҰБТ)	Жоқ курс прямой эфирде өтпейді. Күн сайын сабақ сіздің жеке кабинетіңізде шығып отырады, әр сабақтың астында сұрақ қоятын жер бар. Сұрақ туындаса сол жерге жазасыз, мұғалім жауап береді.(Қазақстан тарихы | ҰБТ)	14
25	Сабақ шыққан уақытында интернетім болмай көре алмай қалсам не болады?	Бізде сабақтар прямой эфирда өтпейді және әрқашан сақталып тұрады. Сондықтан күннің қай уақытында және неше рет көрсеңіз де өз еркіңіз!	12
26	Сабақ шыққан уақытында интернетім болмай көре алмай қалсам не болады?	Бізде сабақтар прямой эфирда өтпейді және әрқашан сақталып тұрады. Сондықтан күннің қай уақытында және неше рет көрсеңіз де өз еркіңіз!	11
27	Сабақ шыққан уақытында интернетім болмай көре алмай қалсам не болады?	Бізде сабақтар прямой эфирда өтпейді және әрқашан сақталып тұрады. Сондықтан күннің қай уақытында және неше рет көрсеңіз де өз еркіңіз!	10
28	Сабақ шыққан уақытында интернетім болмай көре алмай қалсам не болады?	Бізде сабақтар прямой эфирда өтпейді және әрқашан сақталып тұрады. Сондықтан күннің қай уақытында және неше рет көрсеңіз де өз еркіңіз!	9
29	Сабақтарды уақытында көре алмай қалсам не болады?	Сабақтар әр күн сайын азанда шығып отырады. Оны азанда көре алмай қалсаңыз түсте немесе кешке көре аласыз.	12
30	Сабақтарды уақытында көре алмай қалсам не болады?	Сабақтар әр күн сайын азанда шығып отырады. Оны азанда көре алмай қалсаңыз түсте немесе кешке көре аласыз.	11
31	Сабақтарды уақытында көре алмай қалсам не болады?	Сабақтар әр күн сайын азанда шығып отырады. Оны азанда көре алмай қалсаңыз түсте немесе кешке көре аласыз.	10
32	Сабақтарды уақытында көре алмай қалсам не болады?	Сабақтар әр күн сайын азанда шығып отырады. Оны азанда көре алмай қалсаңыз түсте немесе кешке көре аласыз.	9
33	Төлемді қалай жасасам болады?	Төлемді Kaspi Gold, QIWI және Халық банк арқылы жасасаңыз болады. \r\n\r\nИИН: 010208501093\r\nKaspi Gold: 5169 4931 2952 5773\r\nQIWI: 87471086530\r\nHALYK BANK: 4390 8722 2246 9787\r\nЖанысбай Бекзат Ғаниұлы\r\nZhanysbay Bekzat\r\n\r\nТөлем жасаған соң, міндетті түрде Чекті 87471086530 номеріне ватсап арқылы жіберіңіз!	12
35	Төлемді қалай жасасам болады?	Төлемді Kaspi Gold, QIWI және Халық банк арқылы жасасаңыз болады. \r\n\r\nИИН: 010208501093\r\nKaspi Gold: 5169 4931 2952 5773\r\nQIWI: 87471086530\r\nHALYK BANK: 4390 8722 2246 9787\r\nЖанысбай Бекзат Ғаниұлы\r\nZhanysbay Bekzat\r\n\r\nТөлем жасаған соң, міндетті түрде Чекті 87471086530 номеріне ватсап арқылы жіберіңіз!	11
36	Төлемді қалай жасасам болады?	Төлемді Kaspi Gold, QIWI және Халық банк арқылы жасасаңыз болады. \r\n\r\nИИН: 010208501093\r\nKaspi Gold: 5169 4931 2952 5773\r\nQIWI: 87471086530\r\nHALYK BANK: 4390 8722 2246 9787\r\nЖанысбай Бекзат Ғаниұлы\r\nZhanysbay Bekzat\r\n\r\nТөлем жасаған соң, міндетті түрде Чекті 87471086530 номеріне ватсап арқылы жіберіңіз!	10
37	Төлемді қалай жасасам болады?	Төлемді Kaspi Gold, QIWI және Халық банк арқылы жасасаңыз болады. \r\n\r\nИИН: 010208501093\r\nKaspi Gold: 5169 4931 2952 5773\r\nQIWI: 87471086530\r\nHALYK BANK: 4390 8722 2246 9787\r\nЖанысбай Бекзат Ғаниұлы\r\nZhanysbay Bekzat\r\n\r\nТөлем жасаған соң, міндетті түрде Чекті 87471086530 номеріне ватсап арқылы жіберіңіз!	9
38	Тапсырма орындап үлгермесем, курстан шығамын ба?	Жоқ. курстан шықпайсыз. Бірақ, сертификат алмайсыз.	12
39	Тапсырма орындап үлгермесем, курстан шығамын ба?	Жоқ. курстан шықпайсыз. Бірақ, сертификат алмайсыз.	11
40	Тапсырма орындап үлгермесем, курстан шығамын ба?	Жоқ. курстан шықпайсыз. Бірақ, сертификат алмайсыз.	10
41	Тапсырма орындап үлгермесем, курстан шығамын ба?	Жоқ. курстан шықпайсыз. Бірақ, сертификат алмайсыз.	9
42	Тапсырмалар болады ма? Кім тексереді?	Әр сабақтан кейін сізге тапсырмалар беріледі. Үй жұмысын сіздің мұғаліміңіз тексеріп жауабы мен кеңесін айтып отырады.	12
43	Тапсырмалар болады ма? Кім тексереді?	Әр сабақтан кейін сізге тапсырмалар беріледі. Үй жұмысын сіздің мұғаліміңіз тексеріп жауабы мен кеңесін айтып отырады.	11
44	Тапсырмалар болады ма? Кім тексереді?	Әр сабақтан кейін сізге тапсырмалар беріледі. Үй жұмысын сіздің мұғаліміңіз тексеріп жауабы мен кеңесін айтып отырады.	10
45	Тапсырмалар болады ма? Кім тексереді?	Әр сабақтан кейін сізге тапсырмалар беріледі. Үй жұмысын сіздің мұғаліміңіз тексеріп жауабы мен кеңесін айтып отырады.	9
46	Курсқа қалай тіркелемін?	Курсқа тіркелу үшін жоғарыдағы форманы толтырыңыз, немесе, 87471086530 нөміріне ватсап арқылы жазыңыз	12
47	Курсқа қалай тіркелемін?	Курсқа тіркелу үшін жоғарыдағы форманы толтырыңыз, немесе, 87471086530 нөміріне ватсап арқылы жазыңыз	11
48	Курсқа қалай тіркелемін?	Курсқа тіркелу үшін жоғарыдағы форманы толтырыңыз, немесе, 87471086530 нөміріне ватсап арқылы жазыңыз	10
49	Курсқа қалай тіркелемін?	Курсқа тіркелу үшін жоғарыдағы форманы толтырыңыз, немесе, 87471086530 нөміріне ватсап арқылы жазыңыз	9
50	Курс біткеннен соң сертификат беріледі ме?	Иа, курстың барлық сабақтарын қарап, үй жұмыстарын жасаған адамдарға сертификат беріледі	12
51	Курс біткеннен соң сертификат беріледі ме?	Иа, курстың барлық сабақтарын қарап, үй жұмыстарын жасаған адамдарға сертификат беріледі	11
52	Курс біткеннен соң сертификат беріледі ме?	Иа, курстың барлық сабақтарын қарап, үй жұмыстарын жасаған адамдарға сертификат беріледі	10
53	Курс біткеннен соң сертификат беріледі ме?	Иа, курстың барлық сабақтарын қарап, үй жұмыстарын жасаған адамдарға сертификат беріледі	9
54	Курста үй жұмыстары беріледі ме?	Иа, курс барысында үй жұмыстары мен тестілеу де болады.	12
55	Курста үй жұмыстары беріледі ме?	Иа, курс барысында үй жұмыстары мен тестілеу де болады.	11
56	Курста үй жұмыстары беріледі ме?	Иа, курс барысында үй жұмыстары мен тестілеу де болады.	10
57	Курста үй жұмыстары беріледі ме?	Иа, курс барысында үй жұмыстары мен тестілеу де болады.	9
58	Курс қашан басталады?	Курс 25 тамыз басталады	12
59	Курс қашан басталады?	Курс 25 тамыз басталады	11
60	Курс қашан басталады?	Курс 25 тамыз басталады	10
61	Курс қашан басталады?	Курс 25 тамыз басталады	9
62	Сабақтар қай жерде өтеді?	Сабақтар осы вебсайтымызда өтеді. Сіз төлем жасағаннан соң, сізге осы сайттан жеке кабинет беріледі.	12
63	Сабақтар қай жерде өтеді?	Сабақтар осы вебсайтымызда өтеді. Сіз төлем жасағаннан соң, сізге осы сайттан жеке кабинет беріледі.	11
64	Сабақтар қай жерде өтеді?	Сабақтар осы вебсайтымызда өтеді. Сіз төлем жасағаннан соң, сізге осы сайттан жеке кабинет беріледі.	10
65	Сабақтар қай жерде өтеді?	Сабақтар осы вебсайтымызда өтеді. Сіз төлем жасағаннан соң, сізге осы сайттан жеке кабинет беріледі.	9
66	Курс прямой эфирде өтеді ме?	Жоқ курс прямой эфирде өтпейді. Күн сайын сабақ сіздің жеке кабинетіңізде шығып отырады, әр сабақтың астында сұрақ қоятын жер бар. Сұрақ туындаса сол жерге жазасыз, мұғалім жауап береді.	12
67	Курс прямой эфирде өтеді ме?	Жоқ курс прямой эфирде өтпейді. Күн сайын сабақ сіздің жеке кабинетіңізде шығып отырады, әр сабақтың астында сұрақ қоятын жер бар. Сұрақ туындаса сол жерге жазасыз, мұғалім жауап береді.	11
68	Курс прямой эфирде өтеді ме?	Жоқ курс прямой эфирде өтпейді. Күн сайын сабақ сіздің жеке кабинетіңізде шығып отырады, әр сабақтың астында сұрақ қоятын жер бар. Сұрақ туындаса сол жерге жазасыз, мұғалім жауап береді.	10
69	Курс прямой эфирде өтеді ме?	Жоқ курс прямой эфирде өтпейді. Күн сайын сабақ сіздің жеке кабинетіңізде шығып отырады, әр сабақтың астында сұрақ қоятын жер бар. Сұрақ туындаса сол жерге жазасыз, мұғалім жауап береді.	9
70	Тестілеу қай жерде өтеді?	Осы вебсайтқа тіркелсеңіз сізге доступ береміз	15
72	Курсқа қалай тіркелемін?	Курсқа тіркелу үшін инстаграмдағы шарттарды орындаңыз, сосын осы сайтқа тіркеліңіз. Одан соң сол күннің соңында сізді курсқа тіркейміз.	16
73	Курс тақырыптары қандай?	Ол құпия, курс барысында білесіз.	16
71	fdfd	fdfd	\N
\.


--
-- Data for Name: course_whos; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.course_whos (id, icon, title, description, course_id) FROM stdin;
6	oooo.plus_163.png	Математика пәнінен 40 ұпай керек болса	Біздің курста барлық тақырыптарды үйренумен қатар есептер шығарып, тестілеу барысында практика жасайсыз. Біздің курсымызды толықтай өтіп шықсаңыз 40 ұпай алатыныңызға кепілдік береміз.	12
1	YouTube-icon.png	Ютубқа жиі кіретін болсаңыз	Егер ютубқа жиі кіретін болсаңыз, осы курстан соң аз кіресіз	\N
2	oooo.plus_163.png	Математикалық сауаттылықтан 20 ұпай керек болса!	Біздің курста барлық тақырыптарды үйренумен қатар есептер шығарып, тестілеу барысында практика жасайсыз. Біздің курсымызды толықтай өтіп шықсаңыз 20 ұпай алатыныңызға кепілдік береміз.	13
9	oooo.plus_163.png	Химия пәнінен 40 ұпай керек болса	Біздің курста барлық тақырыптарды үйренумен қатар сұрақтар шығарып, тестілеу барысында практика жасайсыз. Біздің курсымызды толықтай өтіп шықсаңыз 40 ұпай алатыныңызға кепілдік береміз.	9
5	oooo.plus_163.png	Қазақстан тарихынан 20 ұпай керек болса	Біздің курста барлық тақырыптарды үйренумен қатар сұрақтар шығарып, тестілеу барысында практика жасайсыз. Біздің курсымызды толықтай өтіп шықсаңыз 20 ұпай алатыныңызға кепілдік береміз.	14
12	oooo.plus_28.png	Сұрақтар туындаса мұғалімнен жауап алғыңыз келсе (Математикалық сауаттылық | ҰБТ)	Курс барысында мұғаліміңізге сұрақ қоя аласыз. Бізде әр сабақтың астында "түсінбеген жерлеріңіз болса осында жаза аласыз" деген жер бар. Сол жерге кез келген зат жазсаңыз, мұғалім жауап береді.(Математикалық сауаттылық | ҰБТ)	13
13	oooo.plus_33.png	Сұрақтар туындаса мұғалімнен жауап алғыңыз келсе(Математикалық сауаттылық | ҰБТ)	Курс барысында мұғаліміңізге сұрақ қоя аласыз. Бізде әр сабақтың астында "түсінбеген жерлеріңіз болса осында жаза аласыз" деген жер бар. Сол жерге кез келген зат жазсаңыз, мұғалім жауап береді.(Математикалық сауаттылық | ҰБТ)	13
4	oooo.plus_28.png	Сұрақтар туындаса мұғалімнен жауап алғыңыз келсе	Курс барысында мұғаліміңізге сұрақ қоя аласыз. Бізде әр сабақтың астында "түсінбеген жерлеріңіз болса осында жаза аласыз" деген жер бар. Сол жерге кез келген зат жазсаңыз, мұғалім жауап береді.	\N
15	oooo.plus_33.png	Сабақты қалаған уақытта қайталап көргіңіз келсе	Сабақтар видео форматта сақталып тұрады. Қай уақытта, қанша рет қайталап көрсеңіз де өз еркіңіз.	11
8	oooo.plus_163.png	Биология пәнінен 40 ұпай керек болса	Біздің курста барлық тақырыптарды үйренумен қатар сұрақтар шығарып, тестілеу барысында практика жасайсыз. Біздің курсымызды толықтай өтіп шықсаңыз 40 ұпай алатыныңызға кепілдік береміз.	10
16	oooo.plus_33.png	Сабақты қалаған уақытта қайталап көргіңіз келсе	Сабақтар видео форматта сақталып тұрады. Қай уақытта, қанша рет қайталап көрсеңіз де өз еркіңіз.	10
3	oooo.plus_33.png	Сабақты қалаған уақытта қайталап көргіңіз келсе	Сабақтар видео форматта сақталып тұрады. Қай уақытта, қанша рет қайталап көрсеңіз де өз еркіңіз.	\N
14	oooo.plus_33.png	Сабақты қалаған уақытта қайталап көргіңіз келсе	Сабақтар видео форматта сақталып тұрады. Қай уақытта, қанша рет қайталап көрсеңіз де өз еркіңіз.	12
10	oooo.plus_28.png	Сұрақтар туындаса мұғалімнен жауап алғыңыз келсе (Қазақстан тарихы | ҰБТ)	Курс барысында мұғаліміңізге сұрақ қоя аласыз. Бізде әр сабақтың астында "түсінбеген жерлеріңіз болса осында жаза аласыз" деген жер бар. Сол жерге кез келген зат жазсаңыз, мұғалім жауап береді.(Қазақстан тарихы | ҰБТ)	14
7	oooo.plus_163.png	Физика пәнінен 40 ұпай керек болса	Біздің курста барлық тақырыптарды үйренумен қатар есептер шығарып, тестілеу барысында практика жасайсыз. Біздің курсымызды толықтай өтіп шықсаңыз 40 ұпай алатыныңызға кепілдік береміз.	11
11	oooo.plus_33.png	Сабақты қалаған уақытта қайталап көргіңіз келсе(Қазақстан тарихы | ҰБТ)	Сабақтар видео форматта сақталып тұрады. Қай уақытта, қанша рет қайталап көрсеңіз де өз еркіңіз.(Қазақстан тарихы | ҰБТ)	14
17	oooo.plus_33.png	Сабақты қалаған уақытта қайталап көргіңіз келсе	Сабақтар видео форматта сақталып тұрады. Қай уақытта, қанша рет қайталап көрсеңіз де өз еркіңіз.	9
18	oooo.plus_28.png	Сұрақтар туындаса мұғалімнен жауап алғыңыз келсе	Курс барысында мұғаліміңізге сұрақ қоя аласыз. Бізде әр сабақтың астында "түсінбеген жерлеріңіз болса осында жаза аласыз" деген жер бар. Сол жерге кез келген зат жазсаңыз, мұғалім жауап береді.	12
19	oooo.plus_28.png	Сұрақтар туындаса мұғалімнен жауап алғыңыз келсе	Курс барысында мұғаліміңізге сұрақ қоя аласыз. Бізде әр сабақтың астында "түсінбеген жерлеріңіз болса осында жаза аласыз" деген жер бар. Сол жерге кез келген зат жазсаңыз, мұғалім жауап береді.	11
20	oooo.plus_28.png	Сұрақтар туындаса мұғалімнен жауап алғыңыз келсе	Курс барысында мұғаліміңізге сұрақ қоя аласыз. Бізде әр сабақтың астында "түсінбеген жерлеріңіз болса осында жаза аласыз" деген жер бар. Сол жерге кез келген зат жазсаңыз, мұғалім жауап береді.	10
21	oooo.plus_28.png	Сұрақтар туындаса мұғалімнен жауап алғыңыз келсе	Курс барысында мұғаліміңізге сұрақ қоя аласыз. Бізде әр сабақтың астында "түсінбеген жерлеріңіз болса осында жаза аласыз" деген жер бар. Сол жерге кез келген зат жазсаңыз, мұғалім жауап береді.	9
22	\N	Өз дәрежеңізді білгіңіз келсе	Тестілеу арқылы дәрежеңізді анықтай аласыз	15
23	\N	Талдау арқылы тақырыптарды үйреніп алыңыз	Талдау арқылы жаңа тақырыптарды үйреніп алыңыз	15
24	blackboard-chalkboard-communication-355988.jpg	fdfd	fdfd	\N
25	oooo.plus_163.png	ҰБТ-дан жоғары ұпай жинағыңыз келсе	Біздің құпия әдісіміздің арқасында жоғары ұпайды оп-оңай жинап аласыз	16
26	oooo.plus_33.png	Уақыт аз болса	Аз уақыттың ішінде ҰБТ-ға дайындалып шыққыңыз келсе!	16
27	oooo.plus_28.png	Тәжірбиесі барлардан сұрағыңыз келсе	Біздің курста тәжірибелі мұғалімдерге сұрақ қоюға болады	16
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.courses (id, title, image, description, created_at, updated_at, color, language_id, landing_header_title, landing_header_paragraph, landing_about_title, landing_about_paragraph, landing_program_description, price) FROM stdin;
11	Физика | ҰБТ	physacs.jpg	Физика пәнінен ҰБТ-ға дайындық	2019-07-17 16:49:40.298514	2019-08-07 23:22:36.437812	linear-gradient(-225deg, #9fffff 0%, #bccccc 48%, #bccccc 100%)	2	Физика курсы	Курс 25 тамыз басталады	Курс қалай өтеді?	Бұл курстың ерекшелігі - сапалығы. ҰБТ жазған оқушылардың тәжірибелеріне сүйене отырып. Біз жаңа методика жасап шығардық. Бұл методика бойынша сабақтар күнде болады. Сабақтар күнде болғанымен, оқушы жалықпас үшін аз-аздан болады. Курс видео сабақтардан, сабақ барысындағы тапсырмалардан, үй тапсырмаларынан, тестілеулерден және тағы басқа пайдалы материалдардан тұрады. Осы методика арқылы оқушы 0 дәрежесінен 35-40 ұпай алатын дәрежеге 2 айда жетеді.	Сабақтар күн сайын өтеді. Яғни 60 күнде, яғни 2 айда, толық 60 сабақ болады.	<h3><tt>Бағасы айына <strong>10000</strong>тг</tt></h3>\r\n\r\n<p><strong><tt>Толық курс бағасы 20000тг болады</tt></strong></p>\r\n
13	Математикалық сауаттылық | ҰБТ	mathupmind.jpg	Математикалық сауаттылықтан ҰБТ-ға дайындық.	2019-07-17 16:51:37.319301	2019-08-07 23:23:19.674549	linear-gradient(-225deg, #9fffff 0%, #bccccc 48%, #bccccc 100%)	2	Математикалық сауаттылық курсы	Курс 25 тамыз басталады	Курс қалай өтеді?	Бұл курстың ерекшелігі - сапалығы. ҰБТ жазған оқушылардың тәжірибелеріне сүйене отырып. Біз жаңа методика жасап шығардық. Бұл методика бойынша сабақтар күнде болады. Сабақтар күнде болғанымен, оқушы жалықпас үшін аз-аздан болады. Курс видео сабақтардан, сабақ барысындағы тапсырмалардан, үй тапсырмаларынан, тестілеулерден және тағы басқа пайдалы материалдардан тұрады. Осы методика арқылы оқушы 0 дәрежесінен 18-20 ұпай алатын дәрежеге 1 айда жетеді.	Сабақтар күн сайын өтеді. Яғни 30 күнде толық 30 сабақ болады.	<h3><strong><tt>Толық курс бағасы 10000тг болады</tt></strong></h3>\r\n
12	Математика | ҰБТ	mathematupmind.jpg	Математика пәнінен ҰБТ-ға дайындық	2019-07-17 16:50:17.643929	2019-08-07 23:22:24.163973	linear-gradient(-225deg, #9fffff 0%, #bccccc 48%, #bccccc 100%)	2	Математика курсы	Курс 25 тамыз басталады	Курс қалай өтеді?	Бұл курстың ерекшелігі - сапалығы. ҰБТ жазған оқушылардың тәжірибелеріне сүйене отырып. Біз жаңа методика жасап шығардық. Бұл методика бойынша сабақтар күнде болады. Сабақтар күнде болғанымен, оқушы жалықпас үшін аз-аздан болады. Курс видео сабақтардан, сабақ барысындағы тапсырмалардан, үй тапсырмаларынан, тестілеулерден және тағы басқа пайдалы материалдардан тұрады. Осы методика арқылы оқушы 0 дәрежесінен 35-40 ұпай алатын дәрежеге 2 айда жетеді.	Сабақтар күн сайын өтеді. Яғни 60 күнде, яғни 2 айда, толық 60 сабақ болады.	<h3><tt>Бағасы айына <strong>10000</strong>тг</tt></h3>\r\n\r\n<p><strong><tt>Толық курс бағасы 20000тг болады</tt></strong></p>\r\n
9	Химия | ҰБТ	chement.jpg	Химия пәнінен ҰБТ-ға дайындық	2019-07-17 16:40:14.16732	2019-08-07 23:22:58.443044	linear-gradient(-225deg, #9fffff 0%, #bccccc 48%, #bccccc 100%)	2	Химия курсы	Курс 25 тамыз басталады	Курс қалай өтеді?	Бұл курстың ерекшелігі - сапалығы. ҰБТ жазған оқушылардың тәжірибелеріне сүйене отырып. Біз жаңа методика жасап шығардық. Бұл методика бойынша сабақтар күнде болады. Сабақтар күнде болғанымен, оқушы жалықпас үшін аз-аздан болады. Курс видео сабақтардан, сабақ барысындағы тапсырмалардан, үй тапсырмаларынан, тестілеулерден және тағы басқа пайдалы материалдардан тұрады. Осы методика арқылы оқушы 0 дәрежесінен 35-40 ұпай алатын дәрежеге 2 айда жетеді. Сізге курс барысында бір приложение беріледі, ол приложение кез келген құрылғымен жұмыс жасайды.  Ол приложение арқылы ойын форматында тарих сұрақтарын жаттап отырасыз. Сізге курс барысында бір приложение беріледі, ол приложение кез келген құрылғымен жұмыс жасайды. Ол приложение арқылы ойын форматында тарих сұрақтарын жаттап отырасыз.	Сабақтар күн сайын өтеді. Яғни 60 күнде, яғни 2 айда, толық 60 сабақ болады. Бірінші айда жалпы химия және бейорганикалық химия өтеміз. Екінші айда органикалық химияны өтеміз.	<h3><tt>Бағасы айына <strong>10000</strong>тг</tt></h3>\r\n\r\n<p><strong><tt>Толық курс бағасы 20000тг болады</tt></strong></p>\r\n
14	Қазақстан тарихы | ҰБТ	kazupmind.jpg	Қазақстан тарихынан ҰБТ-ға дайындық.	2019-07-17 16:52:26.942427	2019-08-07 23:22:10.618203	linear-gradient(-225deg, #9fffff 0%, #bccccc 48%, #bccccc 100%)	2	Қазақстан тарихы курсы	Курс 25 тамыз басталады	Курс қалай өтеді?	Бұл курстың ерекшелігі - сапалығы. ҰБТ жазған оқушылардың тәжірибелеріне сүйене отырып. Біз жаңа методика жасап шығардық. Бұл методика бойынша сабақтар күнде болады. Сабақтар күнде болғанымен, оқушы жалықпас үшін аз-аздан болады. Курс видео сабақтардан, сабақ барысындағы тапсырмалардан, үй тапсырмаларынан, тестілеулерден және тағы басқа пайдалы материалдардан тұрады. Осы методика арқылы оқушы 0 дәрежесінен 18-20 ұпай алатын дәрежеге 2 айда жетеді.\r\nСізге курс барысында бір приложение беріледі, ол приложение кез келген құрылғымен жұмыс жасайды.  Ол приложение арқылы ойын форматында тарих сұрақтарын жаттап отырасыз.	Сабақтар күн сайын өтеді. Яғни 60 күнде, яғни 2 айда, толық 60 сабақ болады.	<h3><tt>Бағасы айына <strong>10000</strong>тг</tt></h3>\r\n\r\n<p><strong><tt>Толық курс бағасы 20000тг болады</tt></strong></p>\r\n
10	Биология | ҰБТ	biologyent.jpg	Биология пәнінен ҰБТ-ға дайындық	2019-07-17 16:46:58.134006	2019-08-07 23:22:48.228259	linear-gradient(-225deg, #9fffff 0%, #bccccc 48%, #bccccc 100%)	2	Биология курсы	Курс 25 тамыз басталады	Курс қалай өтеді?	Бұл курстың ерекшелігі - сапалығы. ҰБТ жазған оқушылардың тәжірибелеріне сүйене отырып. Біз жаңа методика жасап шығардық. Бұл методика бойынша сабақтар күнде болады. Сабақтар күнде болғанымен, оқушы жалықпас үшін аз-аздан болады. Курс видео сабақтардан, сабақ барысындағы тапсырмалардан, үй тапсырмаларынан, тестілеулерден және тағы басқа пайдалы материалдардан тұрады. Осы методика арқылы оқушы 0 дәрежесінен 35-40 ұпай алатын дәрежеге 2 айда жетеді. 	Сабақтар күн сайын өтеді. Яғни 60 күнде, яғни 2 айда, толық 60 сабақ болады.	<h3><tt>Бағасы айына <strong>10000</strong>тг</tt></h3>\r\n\r\n<p><strong><tt>Толық курс бағасы 20000тг болады</tt></strong></p>\r\n
\.


--
-- Data for Name: courses_users; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.courses_users (id, user_id, course_id) FROM stdin;
288	284	14
289	284	13
290	284	12
292	284	10
293	284	9
296	307	9
297	313	13
298	321	14
299	321	13
300	310	14
301	292	9
302	293	14
303	293	13
304	317	13
305	295	13
306	294	14
307	294	13
310	285	13
311	318	9
312	311	13
313	308	9
314	324	9
315	322	14
316	322	13
317	320	14
318	320	13
319	316	13
320	306	13
321	315	14
322	325	9
323	319	14
324	319	13
326	312	13
327	314	13
328	300	13
329	298	13
330	304	13
331	302	14
332	302	13
333	288	14
334	288	13
335	290	14
336	323	13
337	309	13
338	286	9
339	305	14
340	326	14
341	326	13
342	287	13
343	301	14
344	327	14
345	327	13
346	328	14
347	328	13
348	328	9
349	291	10
350	291	12
351	291	11
\.


--
-- Data for Name: faq_categories; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.faq_categories (id, title, language_id) FROM stdin;
1	Платформаға қатысты сұрақтар	2
2	Оқу барысына қатысты сұрақтар	2
\.


--
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.faqs (id, question, answer, faq_category_id) FROM stdin;
1	Аудиозапись-ті, видеоларды жүктей алмай жатырмын. Қалай жүктеп алса болады?	Авторлық құқық сақталу барысында, аудио, видео файлдарды жүктеп алуға болмайды.	1
2	Платформаға кірдім, пароль ауыстыру қажет пе?	Қиын парольмен кіру қиындық туғызғандықтан, қазір тек сандардан тұратын жеңіл пароль жіберудеміз. Сол себепті ауыстырған жөн.	1
3	Парольді қалай ауыстырамын?	Платформаға кірген соң, жоғарғы оң жақ бөлігінде есіміңіз тұрады. Есіміңіздің үстінен бассаңыз, шыққан менюде «Аккаунт» деген батырманы басасыз. Жаңа құпия сөз, ескі құпия сөз енгізіп «Сақтау» батырмасын басасыз.	1
4	Сұрақты кімге қоямыз?	Біз мейлінше барлығы түсінікті болатындай, текст түрінде де видеода да барлығын түсіндіріп өттік. Сол себепті сұрақ қоймас бұрін міндетті түрде барлығымен танысыңыз. Болмаса, екінші рет қарап шығыңыз. «Релаксация» деген не? Секілді Google дан сұрап білуге болатын сұрақтарға жауап бермейміз. Дұрыс сұрақ - жарты жауап. Бір-біріміздің уақытымызды бағалайық!	2
\.


--
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.feedbacks (id, first_question, second_question, third_question, user_id, created_at, updated_at, lesson_id) FROM stdin;
13	Иа	Қызықты өтті	Негізі басы оңай, соңы қиын болды	284	2019-08-31 14:19:03.648252	2019-08-31 14:19:03.648252	23
14	Сабақ өте қатты ұнады.Өзіме трлықтай мотивауия аллм десем де болады.	Сабак қызықты отти	Сабақ әзірше оңайлау болды.	316	2019-09-02 15:26:27.862582	2019-09-02 15:26:27.862582	6
15				316	2019-09-02 15:31:37.766901	2019-09-02 15:31:37.766901	6
16	Жалпы ұнады	Қызықты болды	Қиын емес	287	2019-09-02 16:02:34.281069	2019-09-02 16:02:34.281069	6
17	Иа	Қызықты	Оңай	300	2019-09-02 16:18:21.219071	2019-09-02 16:18:21.219071	6
18	Иә, кіріспе сабақ өте ұнады!			325	2019-09-02 16:34:51.328586	2019-09-02 16:34:51.328586	12
19	Иә, кіріспе сабақ өте ұнады!			325	2019-09-02 16:35:06.479556	2019-09-02 16:35:06.479556	12
20	Ия, ұнады!	Қызықты әрі пайдалы болды.	Оңай болды	294	2019-09-02 16:43:45.482967	2019-09-02 16:43:45.482967	6
21	Кіріспе түсіндірілімі жақсы.Алдағы уақытта болатын сабақтардан да жақсы үміт күтемін		Бастамасы барлығында оңай деп ойлаймын.	292	2019-09-03 12:20:37.122638	2019-09-03 12:20:37.122638	12
22	Иә,ұнады!		Иә, кішкене	325	2019-09-03 16:31:55.558804	2019-09-03 16:31:55.558804	26
23	Ұнады	Қызықты	Оңай	300	2019-09-04 08:48:21.574834	2019-09-04 08:48:21.574834	25
24	Ұнады.		Шамалы қиын болды.	286	2019-09-04 09:10:32.148627	2019-09-04 09:10:32.148627	26
25	әрине , маған тесттер және тест тапсырған қатты ұнайды.		"Білетінім - бір тоғыз , білмейтінім - тоқсан тоғыз " маған арналғандай..	318	2019-09-04 12:57:11.78194	2019-09-04 12:57:11.78194	26
26	Ия, ұнады!	Қызықты әрі пайдалы болды.	орташа деңгейде	294	2019-09-04 15:09:24.952979	2019-09-04 15:09:24.952979	24
27	Иә, ұнады. 	Қызықты өтті.	Оңай болды. 	302	2019-09-04 17:31:30.793653	2019-09-04 17:31:30.793653	27
28	ия	керекті мәлімет алдым	орташа	305	2019-09-04 20:49:52.719053	2019-09-04 20:49:52.719053	27
29	Ұнады.	Қызықты өтті.	Шамалы қиын болды.	286	2019-09-05 10:13:10.008859	2019-09-05 10:13:10.008859	28
30	Ұнады. Бірақ, түсіндірулер шашыраңқы болды. Себебі, мұз дәуірін айтып жатып палеолитті түсіндіруі және еңбек құралдарын айтып жатып қайта Қазақстандағы алғашқы адамдар жайлы айтуы. Жазып алуға ыңғайсыздық тудырады екен.			288	2019-09-05 11:10:44.214512	2019-09-05 11:10:44.214512	27
31	Ұналы6	Тым баяу сөйлегеннен бе жалығып кете жаздадым негiзi материалдар қызық 	Оңай 	321	2019-09-05 12:19:38.439813	2019-09-05 12:19:38.439813	27
32	Ұнады	Қызықты 	Оңай	300	2019-09-05 14:15:17.982546	2019-09-05 14:15:17.982546	29
33	куштии	кызыкты	катты киын емес  тек турактар киындау болды	293	2019-09-05 14:51:57.28411	2019-09-05 14:51:57.28411	27
34	ия тусиникти	негизи мен будан да кушти кызыкты болад деп кутип едим как обычно китаптагы нарселерды окып бергендей болды😅баскаша нарсе кутип едим андай ойындармен кушти откизу	киындау болды асиресе турактарды жаттау бир сабакта коп такврып болгасын мига нагрузка болайын деп тур	315	2019-09-05 16:10:55.525067	2019-09-05 16:10:55.525067	27
35	Ұнады	Қызықты, бірақ ағай тым тез сөйлеп түсіндірді	Орташа	287	2019-09-05 16:42:50.467519	2019-09-05 16:42:50.467519	29
36	Ия ұнады	Қызықты	Оңай,тұрақтардың атын еске сақтау қиын екен	310	2019-09-05 16:46:32.358255	2019-09-05 16:46:32.358255	27
37	Ұнады	Қызықты	Қиын	312	2019-09-06 11:12:03.445492	2019-09-06 11:12:03.445492	29
38	Сабақ ұнады. Бірақ, сабақта көрсетілген мысалдарға ұқсас үй жұмыстары берілсе екен деймін. Бүгінгі үй жұмыстары қиын болды.	Сабақ қызықты болды	Үй жұмысын шығару қиындық туғызды	288	2019-09-06 12:42:54.597704	2019-09-06 12:42:54.597704	29
39	Иа	Қызықты 	Оңай 	321	2019-09-06 13:12:15.92139	2019-09-06 13:12:15.92139	30
40	Иа 	Бастамасы болғандықтан орташа өтті	Оңай	307	2019-09-06 13:29:17.717208	2019-09-06 13:29:17.717208	28
41	ия	Қызықты әрі түсінікті	Оңай	310	2019-09-07 10:34:19.272648	2019-09-07 10:34:19.272648	31
42	Иа	Қызықты 	Оңай 	321	2019-09-07 10:37:15.930904	2019-09-07 10:37:15.930904	31
43	Ия, ұнады!	Қызықты әрі пайдалы болды.	орташа деңгейде	294	2019-09-07 10:47:12.2562	2019-09-07 10:47:12.2562	29
44	Иа,унады	Кызыкты отти	Орташа киындкта болды)	301	2019-09-07 17:56:25.151166	2019-09-07 17:56:25.151166	30
45	Иа	Қызықты 	Жок	321	2019-09-07 18:11:57.346832	2019-09-07 18:11:57.346832	32
46	Ұнады	Қызықты 	Оңай	300	2019-09-08 12:27:39.41554	2019-09-08 12:27:39.41554	35
47	Иа	Иа	Қатты қиын емес 	321	2019-09-09 11:20:56.167237	2019-09-09 11:20:56.167237	36
48		кызыкты	кызыкты киын	293	2019-09-09 13:06:45.920579	2019-09-09 13:06:45.920579	36
49	Ия, ұнады!	Қызықты әрі пайдалы болды.	орташа деңгейде	294	2019-09-09 17:12:24.232953	2019-09-09 17:12:24.232953	32
50	Ұнады	Қызықты	Оңай	300	2019-09-10 10:31:30.18095	2019-09-10 10:31:30.18095	39
51	Өте қатты ұнады біраз затты білдім	Қызықты болды, мысалдарыда өте түсінікті	Қатты қиын емес түсінікті тілмен жеткізгеніңіз үшін рахмет	324	2019-09-10 16:07:23.384545	2019-09-10 16:07:23.384545	38
52	жоқ	қызықсыз	оңай	310	2019-09-11 13:59:24.176763	2019-09-11 13:59:24.176763	37
53	Ұнады	Қызықты	Орташа	307	2019-09-12 15:16:52.397223	2019-09-12 15:16:52.397223	43
54	Ұнады	Қызықты	Оңай	300	2019-09-14 02:50:48.998835	2019-09-14 02:50:48.998835	47
55	Ұнады	Қызықты	Жоқ,басқа сабақтарға қарағанда оңайырпқ болды	287	2019-09-15 16:39:04.520489	2019-09-15 16:39:04.520489	53
\.


--
-- Data for Name: hometasks; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.hometasks (id, user_id, lesson_id, file, created_at, updated_at, rate, comment) FROM stdin;
352	284	23	image.jpg	2019-08-31 14:16:30.04432	2019-08-31 14:16:30.04432	\N	\N
353	316	6	15674377098681564408719.jpg	2019-09-02 15:22:51.402129	2019-09-02 15:22:51.402129	\N	\N
354	316	6	15674377098681564408719.jpg	2019-09-02 15:24:07.442911	2019-09-02 15:24:07.442911	\N	\N
355	313	6	9299477A-70BD-43FB-BB3F-706014590F00.jpeg	2019-09-02 15:37:40.095496	2019-09-02 15:37:40.095496	\N	\N
356	287	6	24579B1E-F7C6-44FD-A870-04CEE9644350.jpeg	2019-09-02 16:00:58.89712	2019-09-02 16:00:58.89712	\N	\N
357	317	6	15674365356057189641321429071351.jpg	2019-09-02 16:04:33.535396	2019-09-02 16:04:33.535396	\N	\N
358	300	6	156744064558254973283.jpg	2019-09-02 16:12:15.006958	2019-09-02 16:12:15.006958	\N	\N
359	286	12	1567441368172-1534330715.jpg	2019-09-02 17:24:31.912845	2019-09-02 17:24:31.912845	\N	\N
361	308	12	15674463914961260795279.jpg	2019-09-02 17:47:42.701429	2019-09-02 17:47:42.701429	\N	\N
362	320	6	Screenshot_2019-09-03-00-49-57-07.png	2019-09-02 19:50:19.550508	2019-09-02 19:50:19.550508	\N	\N
363	302	6	IMG_20190902_234903.jpg	2019-09-03 03:28:51.186973	2019-09-03 03:28:51.186973	\N	\N
364	319	6	15674836320293016268365545339317.jpg	2019-09-03 04:08:11.55577	2019-09-03 04:08:11.55577	\N	\N
365	319	23	15674837099996827092746074970545.jpg	2019-09-03 04:08:52.940685	2019-09-03 04:08:52.940685	\N	\N
366	321	6	IMG_20190903_151230.jpg	2019-09-03 09:33:58.472661	2019-09-03 09:33:58.472661	\N	\N
367	321	23	15675035297781581033419255142363.jpg	2019-09-03 09:39:49.886038	2019-09-03 09:39:49.886038	\N	\N
368	311	6	5543FE31-9505-4EB1-8368-073542FAB59C.png	2019-09-03 10:29:08.422502	2019-09-03 10:29:55.1248	\N	\N
369	325	12	1567510403966986323061350564244.jpg	2019-09-03 11:34:26.773515	2019-09-03 11:34:26.773515	\N	\N
370	294	6	20190902_225611.jpg	2019-09-03 11:51:11.662113	2019-09-03 11:51:11.662113	\N	\N
371	294	23	20190902_225611.jpg	2019-09-03 11:52:36.647117	2019-09-03 11:52:36.647117	\N	\N
372	292	12	1567512983688334035546975360102.jpg	2019-09-03 12:13:05.324204	2019-09-03 12:15:31.745002	\N	\N
373	307	12	1567513377556-700733305.jpg	2019-09-03 12:24:54.431086	2019-09-03 12:24:54.431086	\N	\N
374	288	6	20190903_183206.jpg	2019-09-03 12:33:34.841214	2019-09-03 12:35:55.33687	\N	\N
375	295	6	156751481933631560977.jpg	2019-09-03 12:47:38.962437	2019-09-03 12:47:38.962437	\N	\N
376	326	23	IMG_20190903_185923.jpg	2019-09-03 13:01:59.064446	2019-09-03 13:01:59.064446	\N	\N
377	326	6	IMG_20190903_185923.jpg	2019-09-03 13:02:50.893667	2019-09-03 13:02:50.893667	\N	\N
378	298	6	image.jpg	2019-09-03 13:12:23.99558	2019-09-03 13:18:15.920588	\N	\N
379	324	12	IMG-20190903-WA0007.jpeg	2019-09-03 13:40:41.896152	2019-09-03 13:40:41.896152	\N	\N
380	324	12	IMG-20190903-WA0007.jpeg	2019-09-03 13:41:18.177503	2019-09-03 13:41:18.177503	\N	\N
382	318	12	15675229788381111632047.jpg	2019-09-03 15:05:02.173873	2019-09-03 15:05:02.173873	\N	\N
385	315	23	image.jpg	2019-09-03 16:14:43.768524	2019-09-03 16:14:43.768524	\N	\N
386	302	25	IMG_20190903_222128.jpg	2019-09-03 16:21:43.509395	2019-09-03 16:21:43.509395	\N	\N
387	325	26	15675281669411924465425549699747.jpg	2019-09-03 16:30:39.475416	2019-09-03 16:30:39.475416	\N	\N
388	287	25	image.jpg	2019-09-03 16:31:01.116744	2019-09-03 16:31:01.116744	\N	\N
389	307	26	1567528230298659287991.jpg	2019-09-03 16:31:16.596085	2019-09-03 16:31:16.596085	\N	\N
390	304	25	E77B2B59-EDFF-46A1-988E-023FE7E21B2E.jpeg	2019-09-03 16:34:00.864641	2019-09-03 16:34:00.864641	\N	\N
392	294	25	20190903_222742_1_.jpg	2019-09-03 16:35:54.967574	2019-09-03 16:35:54.967574	\N	\N
395	304	6	image.jpg	2019-09-03 16:45:53.93644	2019-09-03 16:45:53.93644	\N	\N
397	314	25	15675295193456247003112922976245.jpg	2019-09-03 16:52:21.333579	2019-09-03 16:52:21.333579	\N	\N
399	314	25	15675295193456247003112922976245.jpg	2019-09-03 16:58:29.134428	2019-09-03 16:58:29.134428	\N	\N
400	314	25	15675295193456247003112922976245.jpg	2019-09-03 17:00:44.308152	2019-09-03 17:00:44.308152	\N	\N
391	294	24	\N	2019-09-03 16:35:06.974389	2019-09-03 17:01:20.75914	3	1а\r\n2д\r\n3+\r\n4с\r\n5+\r\n6+\r\n7+\r\n8+\r\n9с\r\n10с\r\n11а\r\n12а\r\n13е\r\n14а\r\n15+\r\n16+\r\n17е\r\n18+\r\n19+\r\n20+\r\n\r\n10 ұпай \r\n
398	317	25	15675263655047978606559002548400.jpg	2019-09-03 16:57:08.402264	2019-09-03 17:01:20.808532	\N	\N
393	322	24	\N	2019-09-03 16:36:08.755926	2019-09-03 17:04:34.028311	4	1+\r\n2+\r\n3е\r\n4+\r\n5+\r\n6+\r\n7+\r\n8е\r\n9а\r\n10+\r\n11+\r\n12+\r\n13+\r\n14д\r\n15+\r\n16+\r\n17д\r\n18в\r\n19в\r\n20+\r\n\r\n13 ұпай
411	298	25	187ADBF5-8B00-4ADE-8D83-77ED47F75D04.jpeg	2019-09-04 10:41:14.002155	2019-09-04 10:41:14.002155	\N	\N
412	311	25	730946C4-956C-4888-A3A5-B3974F2EE539.png	2019-09-04 11:37:23.008805	2019-09-04 11:37:23.008805	\N	\N
413	320	24	1567598857062178351121.jpg	2019-09-04 12:08:24.707677	2019-09-04 12:08:24.707677	\N	\N
414	324	26	InShot_20190904_171420819.jpg	2019-09-04 12:17:57.970163	2019-09-04 12:17:57.970163	\N	\N
404	306	25	image.jpg	2019-09-03 17:21:48.839984	2019-09-03 17:21:48.839984	\N	\N
401	302	24	\N	2019-09-03 17:00:46.532389	2019-09-03 17:23:06.639003	3	1+\r\n2+\r\n3+\r\n4+\r\n5а\r\n6+\r\n7с\r\n8а\r\n9с\r\n10с\r\n11+\r\n12а\r\n13е\r\n14а\r\n15+\r\n16+\r\n17е\r\n18д\r\n19а\r\n20+\r\n\r\n9 ұпай 
396	314	25	20190903_223645.jpg	2019-09-03 16:50:34.655036	2019-09-03 17:36:58.491406	\N	\N
405	321	25	IMG_20190903_235543.jpg	2019-09-03 18:24:35.977375	2019-09-03 18:24:35.977375	\N	\N
406	312	6	1567559978193870094130.jpg	2019-09-04 02:21:54.548923	2019-09-04 02:21:54.548923	\N	\N
408	300	25	1567586421209-105197986.jpg	2019-09-04 08:40:48.852829	2019-09-04 08:40:48.852829	\N	\N
409	286	26	1567584302163-798368167.jpg	2019-09-04 09:09:08.117799	2019-09-04 09:09:08.117799	\N	\N
410	286	26	1567584302163-798368167.jpg	2019-09-04 09:09:28.606099	2019-09-04 09:09:28.606099	\N	\N
415	313	25	69E74703-BA79-4438-8283-2AE07031DBF0.jpeg	2019-09-04 12:22:47.951729	2019-09-04 12:22:47.951729	\N	\N
416	292	26	1567599958870270066045595767652.jpg	2019-09-04 12:25:08.957372	2019-09-04 12:25:08.957372	\N	\N
418	326	25	IMG_20190904_185426.jpg	2019-09-04 12:55:43.107951	2019-09-04 12:55:43.107951	\N	\N
419	318	26	1567601810851480956023.jpg	2019-09-04 13:00:09.260311	2019-09-04 13:00:09.260311	\N	\N
420	309	25	\N	2019-09-04 13:09:38.321265	2019-09-04 13:09:38.321265	\N	\N
422	293	24	20190904_182737.jpg	2019-09-04 13:28:41.333055	2019-09-04 13:28:41.333055	\N	\N
423	320	25	15676036962921533076049.jpg	2019-09-04 13:29:11.730077	2019-09-04 13:29:11.730077	\N	\N
417	326	24	\N	2019-09-04 12:36:48.736478	2019-09-04 13:29:32.673803	3	1+\r\n2д\r\n3+\r\n4с\r\n5а\r\n6+\r\n7+\r\n8а\r\n9с\r\n10+\r\n11+\r\n12+\r\n13+\r\n14а\r\n15в\r\n16д\r\n17+\r\n18+\r\n19а\r\n20д\r\n\r\n10ұпай
424	327	25	15676002940705554713545033772881.jpg	2019-09-04 13:32:07.006749	2019-09-04 13:32:07.006749	\N	\N
425	327	24	1567600574679638090128545347087.jpg	2019-09-04 13:36:38.296706	2019-09-04 13:36:38.296706	\N	\N
426	323	25	xcNH3AAzPHk.jpg	2019-09-04 13:43:41.854066	2019-09-04 13:43:41.854066	\N	\N
427	323	6	m5o3g9QQ4XQ.jpg	2019-09-04 13:44:06.339929	2019-09-04 13:44:06.339929	\N	\N
428	288	24	20190904_191926.jpg	2019-09-04 13:48:27.218756	2019-09-04 13:48:27.218756	\N	\N
421	288	25	20190904_191529.jpg	2019-09-04 13:24:58.493253	2019-09-04 13:49:28.340765	\N	\N
430	319	24	15676054834124000457592423169569.jpg	2019-09-04 13:58:28.360678	2019-09-04 13:58:28.360678	\N	\N
429	295	25	15676055196741287949373.jpg	2019-09-04 13:55:47.039692	2019-09-04 13:58:54.302335	\N	\N
431	319	25	15676070365443334347964775223637.jpg	2019-09-04 14:24:33.506983	2019-09-04 14:24:33.506983	\N	\N
432	318	26	1567601810851480956023.jpg	2019-09-04 15:05:07.400726	2019-09-04 15:05:07.400726	\N	\N
433	305	24	уй_жумысы.jpg	2019-09-04 17:47:08.300427	2019-09-04 17:47:08.300427	\N	\N
434	305	27	уй_жумысы_1.jpg	2019-09-04 20:43:09.674902	2019-09-04 20:44:18.941729	\N	\N
435	312	25	1567645401793288411433.jpg	2019-09-05 02:05:21.636883	2019-09-05 02:05:21.636883	\N	\N
436	301	27	DBF9D1C3-FE3D-4D0A-97FB-3F3A7D054B97.jpeg	2019-09-05 09:29:12.428337	2019-09-05 09:30:25.011586	\N	\N
475	318	28	15677854647611234963425.jpg	2019-09-06 15:03:04.413801	2019-09-06 15:03:04.413801	\N	\N
437	307	28	InShot_20190905_181557402.jpg	2019-09-05 12:12:48.02285	2019-09-05 12:17:48.363334	\N	\N
440	284	29	final_calc2.pdf-1555950280360	2019-09-05 12:20:18.431173	2019-09-05 12:20:18.431173	\N	\N
476	320	30	20190907.pdf	2019-09-07 07:00:27.883291	2019-09-07 07:00:27.883291	\N	\N
441	284	28	Getting_started.pdf	2019-09-05 12:23:26.667485	2019-09-05 12:23:26.667485	\N	\N
442	284	27	Class_topics_and_thesis.pdf	2019-09-05 12:24:55.870345	2019-09-05 12:24:55.870345	\N	\N
465	320	27	20190906_1_.pdf	2019-09-06 06:34:49.512931	2019-09-07 07:01:26.438391	\N	\N
466	320	29	20190906_2_.pdf	2019-09-06 06:38:11.960224	2019-09-07 07:01:59.373829	\N	\N
477	310	31	20190903_224115.jpg	2019-09-07 10:33:15.276196	2019-09-07 10:33:15.276196	\N	\N
439	321	27	20190905_1_.jpg	2019-09-05 12:15:15.786283	2019-09-05 12:39:17.794172	\N	\N
443	288	27	15676878382482115112171.jpg	2019-09-05 12:48:18.315667	2019-09-05 12:51:36.867958	\N	\N
444	286	28	15676867897461521725836.jpg	2019-09-05 13:33:30.118762	2019-09-05 13:34:31.159139	\N	\N
478	321	31	83914	2019-09-07 10:34:30.425687	2019-09-07 10:34:30.425687	\N	\N
446	300	29	20190905_1_.pdf	2019-09-05 14:12:50.775059	2019-09-05 14:12:50.775059	\N	\N
479	290	31	20190907.pdf	2019-09-07 11:02:00.121426	2019-09-07 11:02:00.121426	\N	\N
480	319	31	15678558632245804160608874931890.jpg	2019-09-07 11:31:30.933961	2019-09-07 11:31:30.933961	\N	\N
438	302	27	20190905__1_.pdf	2019-09-05 12:13:15.861519	2019-09-05 14:26:45.568323	\N	\N
481	305	31	үй_жұмысы__3.jpg	2019-09-07 13:51:05.994374	2019-09-07 13:51:05.994374	\N	\N
482	321	32	83982	2019-09-07 18:45:47.995277	2019-09-07 18:45:47.995277	\N	\N
483	319	32	15679537508517336913973931373238.jpg	2019-09-08 14:43:32.984712	2019-09-08 14:43:32.984712	\N	\N
445	321	29	83760	2019-09-05 14:11:56.49843	2019-09-05 14:53:43.955665	\N	\N
449	321	24	IMG_20190904_125119.jpg	2019-09-05 15:03:39.944523	2019-09-05 15:03:39.944523	\N	\N
450	295	29	20190905_2_.pdf	2019-09-05 15:07:22.481403	2019-09-05 15:11:01.532493	\N	\N
451	298	29	7ECC3FE7-6AAC-43E5-977F-DD4D5B1FE3E0.png	2019-09-05 15:57:55.558903	2019-09-05 15:57:55.558903	\N	\N
452	287	29	image.jpg	2019-09-05 16:43:53.902999	2019-09-05 16:50:57.889411	\N	\N
484	321	36	84070	2019-09-09 12:50:15.773315	2019-09-09 12:50:15.773315	\N	\N
485	300	39	TapScanner_20190910_161908_413_74.jpg	2019-09-10 10:29:24.068484	2019-09-10 10:29:24.068484	\N	\N
486	321	37	84122	2019-09-10 11:00:35.108863	2019-09-10 11:00:35.108863	\N	\N
487	321	39	84194	2019-09-10 19:02:23.407206	2019-09-10 19:02:23.407206	\N	\N
488	321	40	84193	2019-09-10 19:02:55.410311	2019-09-10 19:02:55.410311	\N	\N
453	326	29	IMG-20190905-WA0062.jpg	2019-09-05 17:12:49.235411	2019-09-05 17:22:24.469607	\N	\N
447	311	29	8D698249-F294-461A-80D7-35E99097FEA2.jpeg	2019-09-05 14:24:06.74953	2019-10-03 15:21:45.394754	\N	\N
456	292	28	15677054246439106701169936050420.jpg	2019-09-05 17:32:25.113076	2019-09-05 17:43:40.13039	\N	\N
454	326	29	IMG-20190905-WA0062.jpg	2019-09-05 17:12:56.756933	2019-09-05 18:09:26.556436	\N	\N
489	311	39	DFC2E5C2-72D1-4EA9-B193-C8D16E0CB707.jpeg	2019-09-11 15:22:25.593503	2019-10-03 16:07:31.860334	\N	\N
457	302	29	TapScanner_20190906_000829_844_98.jpg	2019-09-05 18:09:57.817359	2019-09-05 18:18:11.007208	\N	\N
459	294	27	TapScanner_20190906_065011_776_95_1_.jpg	2019-09-06 00:55:10.691445	2019-09-06 00:55:10.691445	\N	\N
460	294	27	TapScanner_20190906_064831_179_119_1_.jpg	2019-09-06 00:58:57.664925	2019-09-06 00:58:57.664925	\N	\N
455	326	29	IMG-20190905-WA0062.jpg	2019-09-05 17:14:14.617411	2019-09-06 01:25:34.093331	\N	\N
461	324	28	\N	2019-09-06 02:27:50.769149	2019-09-06 02:27:50.769149	\N	\N
463	319	29	1567746402228105820449039249841.jpg	2019-09-06 05:07:04.677424	2019-09-06 05:07:04.677424	\N	\N
464	319	27	15677464778755162127441964209851.jpg	2019-09-06 05:08:23.523778	2019-09-06 05:08:23.523778	\N	\N
490	318	46	TapScanner_20190928_222045_502_112.jpg	2019-10-04 17:57:39.361018	2019-10-04 18:04:15.589215	\N	\N
467	323	29	JlUqwBn8RKc.jpg	2019-09-06 09:27:50.583483	2019-09-06 09:29:44.584675	\N	\N
468	305	30	үй_жұмысы__2.jpg	2019-09-06 10:57:44.559255	2019-09-06 10:57:44.559255	\N	\N
462	325	28	15677727286891261899110413442012.jpg	2019-09-06 02:58:52.358246	2019-09-06 12:27:33.902271	\N	\N
469	288	29	156777384308033138466.jpg	2019-09-06 12:45:37.378097	2019-09-06 12:45:37.378097	\N	\N
471	302	30	20190906__1_.pdf	2019-09-06 12:52:24.955427	2019-09-06 12:52:24.955427	\N	\N
470	309	29	image.jpg	2019-09-06 12:51:54.046406	2019-09-06 12:52:29.855447	\N	\N
472	321	30	83863	2019-09-06 13:10:19.671351	2019-09-06 13:10:19.671351	\N	\N
473	290	30	20190906_1_.pdf	2019-09-06 13:19:14.583228	2019-09-06 13:19:14.583228	\N	\N
474	319	30	1567777043955929953732872096205.jpg	2019-09-06 13:37:55.555184	2019-09-06 13:37:55.555184	\N	\N
491	318	34	1570213950101944999148.jpg	2019-10-04 18:28:35.828036	2019-10-04 18:39:21.867478	\N	\N
458	313	29	004CF672-13CC-4854-A85A-771F6C9FCE78.jpeg	2019-09-05 18:19:06.439319	2019-09-06 14:53:48.214107	\N	\N
492	318	38	1570214505346906673055.jpg	2019-10-04 18:48:24.482498	2019-10-04 18:48:24.482498	\N	\N
493	291	11	thumb_wide_300.jpg	2019-10-12 10:50:45.070224	2019-11-06 08:18:46.983234	5	xuynya
494	291	10	\N	2019-11-06 11:04:40.133255	2019-11-06 11:05:58.431201	5	Трек заебись брат
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.languages (id, title, abbr) FROM stdin;
1	Русский	ru
2	Қазақша	kk
\.


--
-- Data for Name: lessons; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.lessons (id, title, content, course_id, created_at, updated_at, video, content_mini, task, description, materials) FROM stdin;
9	Оқушыларымыздың нәтижелері мен курс туралы ойлары		12	2019-07-21 12:45:07.157923	2019-07-21 12:45:07.157923	финал.mp4			Алдыңғы жылғы оқушылардың нәтижелері мен ойлары. Шабыт алыңыз	\N
10	Оқушыларымыздың нәтижелері мен курс туралы ойлары		11	2019-07-21 12:47:33.851755	2019-07-21 12:47:33.851755	финал.mp4			Алдыңғы жылғы оқушылардың нәтижелері мен ойлары. Шабыт алыңыз	\N
11	Оқушыларымыздың нәтижелері мен курс туралы ойлары		10	2019-07-21 12:48:26.63701	2019-07-21 12:48:26.63701	финал.mp4			Алдыңғы жылғы оқушылардың нәтижелері мен ойлары. Шабыт алыңыз	\N
59	№20. Ақ Орда, Моғолстан 	<p>ақ орда моғолстан&nbsp;</p>\r\n	14	2019-09-21 16:56:52.342859	2019-09-21 16:56:52.342859	bast.mkv	<p><a href="https://youtu.be/jPScigvO1rU">сабақ сілтемесі</a></p>\r\n	<p>материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
54	№15. VI-IX ғ.ғ. мәдениет, Қарахан мемлекеті 	<p>Қайырлы кеш сабақ сілтемесі&nbsp;<a href="https://youtu.be/PnrDGyB2TVE">осы жерде</a></p>\r\n	14	2019-09-16 15:02:41.88962	2019-09-18 15:46:25.471948	bast.mkv	<p>Қарахан</p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде</p>\r\n	\N	Документ_Microsoft_Word.pdf
23	Кіріспе сабақ	<p>Курстың кестесіне келсек:</p>\r\n\r\n<p><strong>2 қыркүйек - Кіріспе сабақ</strong></p>\r\n\r\n<p><strong>3 қыркүйек</strong>&nbsp;&ndash; Тестілеу&nbsp;</p>\r\n\r\n<p><strong>4 қыркүйек</strong>&nbsp;&ndash; №1&nbsp;<strong>Сабақ</strong>,&nbsp;<em>Үй жұмысы</em></p>\r\n\r\n<p><strong>5 қыркүйек</strong>&nbsp;&ndash; №2.<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>6 қыркүйек</strong>&nbsp;&ndash;№3.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>7 қыркүйек</strong>&nbsp;&ndash; №4.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>8 қыркүйек</strong>&nbsp;&ndash; №5.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>9 қыркүйек</strong>&nbsp;&ndash; №6.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>10 қыркүйек</strong>&nbsp;&ndash;&nbsp;№7.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>11&nbsp;қыркүйек&nbsp;</strong>&ndash; №8.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>12&nbsp;қыркүйек</strong>&nbsp;&ndash; №9.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>13&nbsp;қыркүйек</strong>&nbsp;&ndash; №10.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>14&nbsp;қыркүйек&nbsp;</strong>&ndash; №11.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>15&nbsp;қыркүйек&nbsp;</strong>&ndash; №12.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>16&nbsp;қыркүйек</strong>&nbsp;&ndash; №13.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>17&nbsp;қыркүйек&nbsp;</strong>&ndash;&nbsp;№14.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>18&nbsp;қыркүйек</strong>&nbsp;&ndash; №15.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>19&nbsp;қыркүйек&nbsp;</strong>&ndash; №16.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>20&nbsp;қыркүйек&nbsp;</strong>&ndash; №17.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>21&nbsp;қыркүйек&nbsp;</strong>&ndash;№18.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>22&nbsp;қыркүйек</strong>&nbsp;&ndash; №19.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>23&nbsp;қыркүйек</strong>&nbsp;&ndash; №20.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>24&nbsp;қыркүйек&nbsp;</strong>&ndash; №21.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>25&nbsp;қыркүйек</strong>&nbsp;&ndash;№22.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>26&nbsp;қыркүйек</strong>&nbsp;&ndash; №23.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>27&nbsp;қыркүйек&nbsp;</strong>&ndash;№24.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>28&nbsp;қыркүйек&nbsp;</strong>&ndash; №25.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>29&nbsp;қыркүйек</strong>&nbsp;&ndash; №26.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>30 қыркүйек&nbsp;</strong>&ndash; №27.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>1 Қазан</strong>&nbsp;&ndash; №28.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>2 Қазан&nbsp;</strong>&ndash;&nbsp;№29.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>3 Қазан&nbsp;</strong>&ndash;&nbsp;№30.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>4 Қазан&nbsp;</strong>&ndash;&nbsp;№31.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>5 Қазан&nbsp;</strong>&ndash;&nbsp;№32.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>6 Қазан&nbsp;</strong>&ndash;&nbsp;№33.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>7 Қазан&nbsp;</strong>&ndash;&nbsp;№34.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>8 Қазан&nbsp;</strong>&ndash;&nbsp;№35.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>9 Қазан&nbsp;</strong>&ndash;&nbsp;№36.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>10 Қазан&nbsp;</strong>&ndash;&nbsp;№37.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>11 Қазан&nbsp;</strong>&ndash;&nbsp;№38.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>12 Қазан&nbsp;</strong>&ndash;&nbsp;№39.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>13 Қазан&nbsp;</strong>&ndash;&nbsp;№40.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>14 Қазан&nbsp;</strong>&ndash;&nbsp;№41.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>15 Қазан&nbsp;</strong>&ndash;&nbsp;№42.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>16 Қазан&nbsp;</strong>&ndash;&nbsp;№43.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>17 Қазан&nbsp;</strong>&ndash;&nbsp;№44.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>18 Қазан&nbsp;</strong>&ndash;&nbsp;№45.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>19 Қазан&nbsp;</strong>&ndash;&nbsp;№46.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>20 Қазан&nbsp;</strong>&ndash;&nbsp;№47.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>21 Қазан&nbsp;</strong>&ndash;&nbsp;№48.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>22 Қазан&nbsp;</strong>&ndash;&nbsp;№49.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>23 Қазан&nbsp;</strong>&ndash;&nbsp;№50.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>24 Қазан&nbsp;</strong>&ndash;&nbsp;№51.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>25 Қазан&nbsp;</strong>&ndash;&nbsp;№52.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>26 Қазан&nbsp;</strong>&ndash;&nbsp;№53.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>27 Қазан&nbsp;</strong>&ndash;&nbsp;№54.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>28 Қазан&nbsp;</strong>&ndash;&nbsp;№55.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>29 Қазан&nbsp;</strong>&ndash;&nbsp;№56.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>30 Қазан&nbsp;</strong>&ndash;&nbsp;№57.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>31 Қазан&nbsp;</strong>&ndash;&nbsp;№58.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>1 Қараша&nbsp;</strong>&ndash;&nbsp;№59.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>2 Қараша&nbsp;</strong>&ndash;&nbsp;№60.&nbsp;<strong>Сабақ,&nbsp;</strong><em>Үй жұмысы. Қайталау</em></p>\r\n	14	2019-08-31 13:49:34.066912	2019-09-02 13:17:33.886192	bast.mkv	<p>Біздің курсымыз екі айды қамтиды. Осы уақыт аралығында Қазақстан тарихы пәнінің тақырыптарын түгел қайталап шығатын боламыз. Күнделікті Нұр- Сұлтан уақытымен 21.00 де видеосабағымыз шығып отырады. Сонымен қоса міндетті түрде үй тапсырмасы беріледі және тақырыпты қамтитын тест сұрақтары беріледі.&nbsp;</p>\r\n	<h1><cite><strong>&nbsp; &nbsp; &nbsp; &nbsp;Үй тапсырмасы</strong></cite></h1>\r\n\r\n<h2>&nbsp; &nbsp; &nbsp; Бүгінгі сабақтың үй тапсырмасы: Осы курс барысында бізге <strong>екі дәптер </strong>қажет болады. Біріншісіне күнделікті тақырыптан <strong>конспекті </strong>жасасақ,&nbsp;екіншісіне <strong>үй тапсырмасын </strong>орындайтын боласыз.&nbsp;</h2>\r\n\r\n<h3>&nbsp; &nbsp; &nbsp; &nbsp;<em>Оқып, қолмен көшірген дүниенің та&shy;нымы бөлек. Бұл ретте Ресей ғалымы, пси&shy;холог Алексей Михальский <strong>&laquo;қол&shy;мен жазу арқылы баланың есте сақтау қабілеті дамиды, ой&shy;лау мүмкіндігі тереңдеп, сөйлеу бел&shy;сенділігі артады. Сондықтан ойыңызды барынша ақ қағазға жазыңыз. Әрине, интернеттен көшіріп алып, планшеттен оқу жақсы-ақ, бірақ ақ қағаздағы ақпарат барынша есте сақталады</strong>&raquo; дегенді айтады.</em></h3>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Сонымен қатар, материалдар бөліміндегі берілген кестені уақытылы, күнделікті толтырып жүрсеңіздер&nbsp;&nbsp;жүйелі, нәтижелі жұмыс жасауға болады.&nbsp;</p>\r\n	Біздің курсымыз екі айды қамтиды. Осы уақыт аралығында Қазақстан тарихы пәнінің тақырыптарын түгел қайталап шығатын боламыз. Күнделікті Нұр- Сұлтан уақытымен 21.00 де видеосабағымыз шығып отырады. Сонымен қоса міндетті түрде үй тапсырмасы беріледі және тақырыпты қамтитын тест сұрақтары беріледі. 	habit-tracker-2-707x500.jpg
60	№21. Ноғай Ордасы, Әбілқайыр хандығы 	<p>Ноғай ордасының, Әбілқайыр хандығының жер аумағы, саяси тарихы, этникалық құрамы, құлауының себептеріне тоқталамыз.</p>\r\n	14	2019-09-22 14:51:05.498047	2019-09-22 14:51:05.498047	bast.mkv	<h2>Қайырлы кеш! Сабақ сілтемесі&nbsp;<a href="https://youtu.be/oqPqZBNedVg">осы жерде </a></h2>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	Ноғай_Ордасы.pdf
47	Бесінші сабақ | Математикалық сауаттылық	<p>Сабақты қарап, Үй жұмысын орындаңыз</p>\r\n	13	2019-09-13 16:53:50.055129	2019-09-13 16:53:50.055129	bast.mkv	<p>Геометрия жалғасуда</p>\r\n\r\n<p>Бүгін алдыңғы үй жұмысы талдау болады</p>\r\n\r\n<p>Келесі сабақ геометриядан соңғы болады</p>\r\n\r\n<p>Сабақ -&nbsp;<a href="https://youtu.be/uajv0J5H0go">Сілтеме</a></p>\r\n	<p>Үй жұмысын 14.09.2019 күні сағат 21:00 дейін жіберу керексіз</p>\r\n	Бесінші сабақ | Математикалық сауаттылық	PDFCC.pdf
65	№26. Жәңгір хан, Тәуке хан 	<p>Бүгінгі тақырыпта Жәңгір ханның Жоңғарларға қарсы күресіндегі ерлігімен, Тәуке ханның ел билеудегі көреген саясатымен танысатын боласыз</p>\r\n	14	2019-09-27 14:04:16.935601	2019-09-27 14:04:16.935601	bast.mkv	<h2>Салематсыздар ма? Бүгінгі сабақ сілтемесі&nbsp;<a href="https://youtu.be/9LC4inmAnk8">осы жерде </a></h2>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	Жәңгір_хан.pdf
70	№31. 18 ғ. Қазақстан мәдениеті. Қазақ-Ресей сауда байланысы 	<p>18 ғасырдағы Қазақстан мәдениеті, сауда байланыстары туралы&nbsp;</p>\r\n	14	2019-10-02 13:02:09.534105	2019-10-02 13:02:09.534105	bast.mkv	<h2>Салематсыздар ма? Сабақ сілтемесі&nbsp;<a href="https://youtu.be/eQXcnvaIlhc">осы жерде </a></h2>\r\n	<p>Үй тапсырмасы</p>\r\n\r\n<p>2 тапсырма берілген.</p>\r\n\r\n<p>тест жұмысы жоқ&nbsp;</p>\r\n	\N	тапсырма.pdf
72	№33. Бөкей хандығы Бөкей ордасындағы 1836-1838 ж.ж. ұлт - азаттық көтеріліс	<p>Бөкей ордасы</p>\r\n	14	2019-10-04 15:00:20.149207	2019-10-04 15:00:20.149207	bast.mkv	<p>Салематсыздар ма? сабақ сілтемесі&nbsp;<a href="https://youtu.be/DWMtcM2Qmt4">осы жерде </a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
74	№35. Ұлы жүздің Ресейге қосылуы Қазақтардың Ортаазия хандықтары мен патша үкіметіне қарсы көтерілістері	<p>Жанқожа, Есет</p>\r\n	14	2019-10-07 08:00:35.208359	2019-10-07 08:00:35.208359	bast.mkv	<p>Салематсыздар ма?&nbsp;<a href="https://youtu.be/xJt0Eo1q7lA">Сабақ сілтемесі </a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
76	№37. Патша үкіметінің қоныс аударту саясаты. Сауда. Жәрмеңкелер 	<p>Сауда. Жәрмеңке&nbsp;</p>\r\n	14	2019-10-08 14:39:43.468487	2019-10-08 15:08:55.2229	bast.mkv	<p>Сәлематсыздар ма?&nbsp;<a href="https://youtu.be/T_uL90WpBss">Сабақ сілтемесі </a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	Документ1.pdf
80	№41. Ғылыми зерттеушілер. Ш. Уәлиханов	<p>Ш. Уәлиханов&nbsp;</p>\r\n	14	2019-10-12 15:08:31.254742	2019-10-12 15:08:31.254742	bast.mkv	<p>Салематсыздар ма?&nbsp;<a href="https://youtu.be/jujK1pbOaag">Сабақ сілтемесі</a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
78	№39. Қазақтардың петициялық қозғалысы. Ұлттық - демократиялық қозғалыстың өрлеуі 	<p>Петиция&nbsp;</p>\r\n	14	2019-10-10 15:21:19.246862	2019-10-10 15:21:19.246862	bast.mkv	<p>Салематсыздар ма?&nbsp;<a href="https://youtu.be/nV5b5Ysh6VQ">Сабақ сілтемесі </a></p>\r\n	<p>Материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
82	№43. Патша үкіметінің Қазақстандағы діни саясаты. Қорытынды 	<p>Қорытынды&nbsp;</p>\r\n	14	2019-10-14 13:17:47.392793	2019-10-14 13:17:47.392793	bast.mkv	<p>Салематсыздар ма? Сабақ сілтемесі&nbsp;<a href="https://youtu.be/8lcUkbbVwR0">Осы жерде </a></p>\r\n	<p>Материалдар бөлімінде&nbsp;</p>\r\n	\N	Документ1.pdf
41	10. Үйсіндер, Қаңлылар 	<p>Бүгінгі тақырыпта кейінгі темір дәуірінде өмір сүрген үйсін және қаңлы тайпаларымен танысасыздар. Тақырыпта тайпалар туралы деректер, саяси тарихы, мәдениеті, шаруашылығы жөнінде айтылды.</p>\r\n	14	2019-09-11 15:01:22.905789	2019-09-11 15:01:22.905789	bast.mkv	<h2>Қайырлы кеш! Сабақ сілтемесі&nbsp;<a href="https://youtu.be/KdKWxP3IPso">осы жерде </a></h2>\r\n	<p>Үй тапсырмасы</p>\r\n\r\n<p>1. тапсырма Үйсіндер тақырыбына арналады</p>\r\n\r\n<p>2.3. тапсырма Қаңлылар тақырыбына арналған</p>\r\n\r\n<p>4.тапсырма. Тест&nbsp;</p>\r\n\r\n<p>Тапсырмаларды уақытында орындауларыңызды сұраймын!&nbsp;</p>\r\n	\N	тапсырма.pdf
48	Алтыншы сабақ | Химия	<p>Бүгін үй жұмысы жоқ</p>\r\n\r\n<p>Ертең жаңа тақырып өтеміз, Дайын болыңыз</p>\r\n	9	2019-09-14 14:22:19.346382	2019-09-14 14:22:19.346382	bast.mkv	<h2>Бүгінгі сабақта алдыңғы үй жұмысын шығаратын боламыз</h2>\r\n\r\n<p>Барлық есептердің шешімін дұрыстап қарап жүріңіз</p>\r\n\r\n<p>Бүгінгі сабаққа сілтеме -&nbsp;<a href="https://youtu.be/t9zHJDg50h0">Сілтеме</a></p>\r\n	<p><em><strong>Үй жұмысы жоқ</strong></em></p>\r\n	Алтыншы сабақ | Химия	фзаыы.jpg
55	№16. Наймандар, Керейіттер, Жалайырлар және Қарақытай мемлекеті	<p>Наймандар, Керейіттер, Жалайырлар және Қарақытай мемлекетінің саяси тарихымен, қоғамдық құрылысымен танысасыздар&nbsp;</p>\r\n	14	2019-09-17 15:02:55.710467	2019-09-17 15:02:55.710467	bast.mkv	<p>Қайырлы кеш! Сабақ сілтемесі&nbsp;&nbsp;<a href="https://youtu.be/c5Pirzw66gY">осы жерде </a></p>\r\n	<p>Үй тапсырмасы Материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
61	№22. Әмір Темірдің басқыншылық жорықтары. XIV-XV ғ.ғ Қазақстан мәдениеті	<p>Әмір Темірдің Алтын Орда, Ақ Орда, Моғолстан жерлеріне басқыншылық жорықтарын өтеміз&nbsp;</p>\r\n	14	2019-09-23 14:56:03.628656	2019-09-23 14:56:03.628656	bast.mkv	<h2>Қайырлы кеш! Бүгінгі сабақтың сілтемесі&nbsp;<a href="https://youtu.be/FJAWsKRsAu8">осы жерде </a></h2>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	амир_темир.pdf
66	№27. 16-17 ғасырлардағы әлеуметтік-экономикалық жағдай.  16-17 ғасырлардағы Қазақстан мәдениеті	<p>Бүгін 7- сыныптың тақырыбы аяқталды&nbsp;</p>\r\n	14	2019-09-28 15:19:41.288403	2019-09-28 15:19:41.288403	bast.mkv	<h2>Қайырлы кеш! Сабақ&nbsp; сілтемесі&nbsp;<a href="https://youtu.be/hQDV84aZCY0">осы жерде</a></h2>\r\n	<p>Үй тапсырмасы берілмейді&nbsp;</p>\r\n	\N	514ac7a61e508-p.gif
69	№30. Е. Пугачев бастаған шаруалар көтерілісі С. Датұлы бастаған ұлт – азаттық көтеріліс	<p>Бүгінгі тақырыпта өте маңызды ақпараттар айтылады, яғни патша үкіметіне қарсы көтерілістер жайында болмақ</p>\r\n	14	2019-10-01 15:00:13.597196	2019-10-01 16:17:39.325196	bast.mkv	<p>Салематсыздар ма? Сабақ сілтемесі&nbsp;<a href="https://youtu.be/f4vK_sVmy2Q">осы жеоде </a></p>\r\n	<p>Үй тапсырмасы.</p>\r\n\r\n<p>Бірінші тапсырмада шеңбердің ішіндегі сөздердің қайсысы Е. Пугачев көтерілісіне қатысы жоқ, соны сыртқа жазамыз</p>\r\n\r\n<p>Екінші тапсырмада оқиғаларды болған ретімен орналастырамыз</p>\r\n	\N	тапсырма.pdf
71	№32. Хандық биліктің жойылуы. Ақмола бекінісінің салынуы 	<p>Хандық биліктің жойылуы, реформалардың енгізілуі, салдары сонымен қатар Ақмола бекінісінің салынуы жайында болады&nbsp;&nbsp;</p>\r\n	14	2019-10-03 14:46:00.522709	2019-10-03 14:46:00.522709	bast.mkv	<p>Қайырлы кешІ Сабақ&nbsp;<a href="https://youtu.be/JhB9uJbQ4w0">сілтемесі </a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
73	№34. Кенесары Қасымұлы бастаған ұлт-азаттық көтеріліс 	<p>Кенесары Қасымұлы&nbsp;</p>\r\n	14	2019-10-05 12:43:16.317019	2019-10-05 12:43:16.317019	bast.mkv	<p>Салематсыздар ма?&nbsp; Сабақ сілтемесі&nbsp;<a href="https://youtu.be/F3f4-oMWi78">осы жерде </a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
75	№36. ХІХ ғасырдың 60 жылдарындағы, ХІХ ғ. 80-90 жылдарындағы реформалар 	<p>1867-1868 жылдардағы әкімшілік реформалар&nbsp;</p>\r\n	14	2019-10-07 14:53:10.984565	2019-10-08 14:34:46.667063	bast.mkv	<p>Қайырлы кеш!&nbsp;<a href="https://youtu.be/HPSixSydkLw">сабақ сілтемесі</a></p>\r\n	<p>Үй тапсырмалары материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
77	№38.Этностық топтардың қалыптаса бастауы. 1905-1907 ж.ж. революция кезінде 	<p>Этностық топтар&nbsp;</p>\r\n	14	2019-10-09 14:14:30.275462	2019-10-09 14:14:30.275462	bast.mkv	<p>Қайырлы кеш! Сабақ&nbsp;<a href="https://youtu.be/-exIw3-1JCw">сілтемесі</a></p>\r\n	<p>Материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
79	№40. Оқу -ағарту ісі. Ы. Алтынсарин	<p>Ағартушылық</p>\r\n	14	2019-10-11 15:00:19.123299	2019-10-11 15:00:19.123299	bast.mkv	<p>Сәлематсыздар ма? Сабақ&nbsp;<a href="https://youtu.be/6xEXsFdzXgQ">сілтемесі</a></p>\r\n	<p>Материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
81	№42. Қазақ поэзиясы мен музыка өнері 	<p>А. Құнанбаев&nbsp;</p>\r\n	14	2019-10-13 15:03:11.49702	2019-10-13 16:02:02.393116	bast.mkv	<p>&nbsp;Салематсыздар ма?&nbsp;<a href="https://youtu.be/sp66bxYhvbk">Сабақ сілтемесі </a></p>\r\n	<p>Материалдар бөлімінде&nbsp;</p>\r\n	\N	Қазақ_поэзиясы_мен_музыка_өнері.pdf
83	№44. ХХ ғ. басындағы Қазақстан. 1916 ж. ұлт- азаттық қозғалыс 	<h2>Салематсыздар ма? Сабақ сілтемесі&nbsp;<a href="https://youtu.be/YaPOZiVlIgw">осы жерде </a></h2>\r\n	14	2019-10-16 13:00:51.428855	2019-10-16 13:00:51.428855	bast.mkv	\N	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
12	Кіріспе сабақ	<h2><strong>Бүгін бірінші сабақ, кіріспе сабақ</strong></h2>\r\n\r\n<p>Бүгінгі сабағымызда курс туралы мәлімет береміз. Курс барысында сізге сабақтар өтіледі, үй жұмыстары беріледі, тестілеулер болады және олардың талдаулары болады. Күн сайын сағат 21:00, үй жұмысының талдауы және сабақ шығып отырады.</p>\r\n\r\n<p>Курстың кестесіне келсек:</p>\r\n\r\n<p><strong>2 қыркүйек - Кіріспе сабақ</strong></p>\r\n\r\n<p><strong>3 қыркүйек</strong> &ndash; Тестілеу&nbsp;</p>\r\n\r\n<p><strong>5 қыркүйек</strong> &ndash; <strong>Сабақ</strong>, <em>Үй жұмысы</em></p>\r\n\r\n<p><strong>6 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>7 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>8 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>9 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>10 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>11&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>12&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>13&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>14&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>15&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>16&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>17&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>18&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>19&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>20 қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>21&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>22&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>23&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>24&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>25&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>26&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>27&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>28&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>29&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>30 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>1 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>2 Қазан</strong>&nbsp;&ndash; Үй жұмысының видео түсіндірмесі, Тестілеу</p>\r\n\r\n<p><strong>3 Қазан </strong>&ndash; Тестілеудің видео түсіндірмесі</p>\r\n\r\n<p><strong>4 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>5 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>6 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>7 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>8 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>9 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>10 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>11 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>12 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>13 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>14 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>15 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>16 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>17 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>18 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>19 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>20 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>21 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>22 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>23&nbsp;Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>24 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>25 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>26 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>27 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>28 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>29 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>30 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>31 Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>1 Қараша&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>2 Қараша&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>3 Қараша&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>4 Қараша&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>5 Қараша&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>6 Қараша</strong> &ndash; Үй жұмысының видео түсіндірмесі, Тестілеу</p>\r\n\r\n<p><strong>7 Қараша&nbsp;</strong>&ndash; Тестілеудің видео түсіндірмесі, <strong>Қорытынды сабақ</strong></p>\r\n	9	2019-07-21 12:50:06.899371	2019-09-05 09:50:26.670663	bast.mkv	<h1>Құрметті студент,&nbsp;</h1>\r\n\r\n<p>Химия пәнінен&nbsp;курсқа қош келдіңіз!</p>\r\n\r\n<p>Бұл курста біз сізбен бірге ҰБТ- да келетін барлық тақырыптарды нөлден бастап өтіп шығамыз. Бұл курс бағдарламасынан өте көп оқушы нәтижеге жетті. Біз сол оқушылардың нәтижелерін саралай отырып, қорытындыға келдік. Ең жақсы нәтижеге жеткен оқушылар - әр сабақты тыңғылықты қарап, үй жұмыстарын шығарып, курсты барын салып оқыған жандар. Білесіз, өміріңіз өз қолыңызда, сабақтарды тыңғылықты қарап, бар күшіңізді салып оқып, грантқа түсу де өзіңізге байланысты, курсты қарамай, үй жұмыстарын орындамай, курсқа ақшаны құр-босқа құртып грантқа түспей қалу да өз қолыңызда.&nbsp;</p>\r\n\r\n<p><strong>Ал ендеше курсымызды бастайық!</strong></p>\r\n	<p>Бүгінгі сабақтың үй тапсырмасы: өзіңіздің <strong>күндік жоспарыңызды</strong>&nbsp;құру. Оның ішінде Химияғк&nbsp;күніне кем дегенде <strong>үш&nbsp;</strong>сағат көңіл бөлу болу керек.</p>\r\n\r\n<p>Яғни күннің қай уақытында химияға дайындалатыныңызды белгілеп алыңыз! Күнделік арнап сол жерге <strong>күндік жоспарыңыздың</strong> орындалғанын жазып жүрсеңіз мүлдем керемет болады!</p>\r\n\r\n<p><strong>Күндік жоспарды қалай жасаймыз?</strong></p>\r\n\r\n<p>Ең алдымен бір күнделік арнайсыз, жәй дәптер болуы да мүмкін, күнделік болса да болады. Сосын күн сайын ұйықтар алдында сол күнделікті толтырасыз. Ертең заннан бастап, ұйықтағанға дейін не жасау керексіз? Соны тізіп жасасыз, сосын, әр тапсырманы орындаған сайын жанына плюс қойып отырасыз. Осылай күнделікті тапсырмаларды орындап отырасыз.</p>\r\n\r\n<p>Бүгінгі <strong>үй жұмысы</strong> - осылай жоспар жасау. Және оны <strong>суретке түсіріп</strong> &quot;үй тапсырмасын тапсырғыңыз&nbsp;келеді ме?&quot; деген батырманы <strong>басып тапсырыңыз</strong>. Жоспарыңызда <strong>химия</strong>&nbsp;бөлген ғана уаұытыңыз көрініп тұрса жетеді. <strong>&quot;Материалдар&quot;</strong> деген жерде <strong>мысал </strong>келтірілген.&nbsp;</p>\r\n\r\n<p><em><strong>Үй жұмысын 3 қыркүйек сағат 20:00 дейін тапсыру керексіз!</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Ал ендеше сәттілік!</strong></h3>\r\n	Кіріспе сабақты қарап шығыңыз	Жоспар.jpg
24	№ 2. Бақылау тесті 	<p>Бұл тестілеуді орындағанда ешқандай қосымша пайдаланбауыңызды сұраймын. Нәтижесі сізге және маған ғана көрінеді.</p>\r\n\r\n<p>Сол себепті өзіңізді алдамай, шынайы жауап беріңіз. Бұл тестілеуде Қазақстан тарихының негізгі курсын қамтитын сұрақтар берілген.</p>\r\n\r\n<p>Сәттілік!</p>\r\n	14	2019-09-03 15:05:51.125544	2019-09-03 15:16:39.103437	bast.mkv	<p>Қайырлы кеш!</p>\r\n\r\n<p>Бүгін сіздерге берілетін тапсырма 20 сұрақтан тұратын тест.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n	<p>Тестілеуді қалай орындау қажет екені материалдар бөлімінде көрсетілген.</p>\r\n	\N	тест_1.pdf
6	Кіріспе сабақ	<h2><strong>Бүгін бірінші сабақ, кіріспе сабақ</strong></h2>\r\n\r\n<p>Бүгінгі сабағымызда курс туралы мәлімет береміз. Курс барысында сізге сабақтар өтіледі, үй жұмыстары беріледі, тестілеулер болады және олардың талдаулары болады. Күн сайын сағат 21:00, үй жұмысының талдауы және сабақ шығып отырады.</p>\r\n\r\n<p>Курстың кестесіне келсек:</p>\r\n\r\n<p><strong>2 қыркүйек - Кіріспе сабақ</strong></p>\r\n\r\n<p><strong>3 қыркүйек</strong> &ndash; Тестілеу&nbsp;</p>\r\n\r\n<p><strong>5 қыркүйек</strong> &ndash; <strong>Сабақ</strong>, <em>Үй жұмысы</em></p>\r\n\r\n<p><strong>6 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>7 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>8 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>9 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>10 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>11&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, Тестілеу</p>\r\n\r\n<p><strong>12&nbsp;қыркүйек </strong>&ndash; Тестілеудің видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>13&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>14&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>15&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>16&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>17&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>18&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, Тестілеу</p>\r\n\r\n<p><strong>19&nbsp;қыркүйек</strong> &ndash; Тестілеудің видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>20 қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>21&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>22&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>23&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>24&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>25&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, Тестілеу</p>\r\n\r\n<p><strong>26&nbsp;қыркүйек</strong> &ndash; Тестілеудің видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>27&nbsp;қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>28&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>29&nbsp;қыркүйек </strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>30 қыркүйек</strong> &ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>1&nbsp;Қазан&nbsp;</strong>&ndash; Үй жұмысының видео түсіндірмесі, <strong>Сабақ, </strong><em>Үй жұмысы</em></p>\r\n\r\n<p><strong>2 Қазан</strong>&nbsp;&ndash; Үй жұмысының видео түсіндірмесі, Тестілеу</p>\r\n\r\n<p><strong>3 Қазан </strong>&ndash; Тестілеудің видео түсіндірмесі, <strong>Қорытынды сабақ</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n	13	2019-07-19 20:36:37.331333	2019-09-05 09:35:01.864089	bast.mkv	<h1>Құрметті студент,&nbsp;</h1>\r\n\r\n<p>Математикалық сауаттылықтан курсқа қош келдіңіз!</p>\r\n\r\n<p>Бұл курста біз сізбен бірге ҰБТ- да келетін барлық тақырыптарды нөлден бастап өтіп шығамыз. Бұл курс бағдарламасынан өте көп оқушы нәтижеге жетті. Біз сол оқушылардың нәтижелерін саралай отырып, қорытындыға келдік. Ең жақсы нәтижеге жеткен оқушылар - әр сабақты тыңғылықты қарап, үй жұмыстарын шығарып, курсты барын салып оқыған жандар. Білесіз, өміріңіз өз қолыңызда, сабақтарды тыңғылықты қарап, бар күшіңізді салып оқып, грантқа түсу де өзіңізге байланысты, курсты қарамай, үй жұмыстарын орындамай, курсқа ақшаны құр-босқа құртып грантқа түспей қалу да өз қолыңызда.&nbsp;</p>\r\n\r\n<p><strong>Ал ендеше курсымызды бастайық!</strong></p>\r\n	<p>Бүгінгі сабақтың үй тапсырмасы: өзіңіздің <strong>күндік жоспарыңызды</strong>&nbsp;құру. Оның ішінде математикалық сауаттылыққа күніне кем дегенде <strong>екі&nbsp;</strong>сағат көңіл бөлу болу керек.</p>\r\n\r\n<p>Яғни күннің қай уақытында математикалыққа дайындалатыныңызды белгілеп алыңыз! Күнделік арнап сол жерге <strong>күндік жоспарыңыздың</strong> орындалғанын жазып жүрсеңіз мүлдем керемет болады!</p>\r\n\r\n<p><strong>Күндік жоспарды қалай жасаймыз?</strong></p>\r\n\r\n<p>Ең алдымен бір күнделік арнайсыз, жәй дәптер болуы да мүмкін, күнделік болса да болады. Сосын күн сайын ұйықтар алдында сол күнделікті толтырасыз. Ертең заннан бастап, ұйықтағанға дейін не жасау керексіз? Соны тізіп жасасыз, сосын, әр тапсырманы орындаған сайын жанына плюс қойып отырасыз. Осылай күнделікті тапсырмаларды орындап отырасыз.</p>\r\n\r\n<p>Бүгінгі <strong>үй жұмысы</strong> - осылай жоспар жасау. Және оны <strong>суретке түсіріп</strong> &quot;үй тапсырмасын тапсырғыңыз&nbsp;келеді ме?&quot; деген батырманы <strong>басып тапсырыңыз</strong>. Жоспарыңызда <strong>математикалық сауаттылыққа</strong> бөлген ғана уаұытыңыз көрініп тұрса жетеді. <strong>&quot;Материалдар&quot;</strong> деген жерде <strong>мысал </strong>келтірілген.&nbsp;</p>\r\n\r\n<p><em><strong>Үй жұмысын 3 қыркүйек сағат 20:00 дейін тапсыру керексіз!</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Ал ендеше сәттілік!</strong></h3>\r\n	Бұл сабақта курс барысы туралы толық ақпарат аласыз	Жоспар.jpg
50	№13. Түргеш қағанаты, Қарлұқ қағанаты 	<p>Түргеш қағанаты мен Қарлұқ қағанатының құрылу тарихымен, саясатымен, этникалық құрамымен танысасыздар</p>\r\n	14	2019-09-14 14:53:28.49091	2019-09-14 14:53:28.49091	bast.mkv	<p>Қайырлы кеш! Сабақ сілтемесі&nbsp;<a href="https://youtu.be/NQw1SXkbAPs">осы жерде</a></p>\r\n	<p>Үй жұмысы</p>\r\n\r\n<p>1. тапсырма Түргеш қағанатының тарихына байланысты&nbsp;</p>\r\n\r\n<p>2. тапсырма Қарлұқ қағанаты тақырыбымен байланысты&nbsp;</p>\r\n\r\n<p>3. тапсырма Тест сұрақтары&nbsp;</p>\r\n	\N	тапсырма.pdf
42	Төртінші сабақ | Математикалық сауаттылық	<p>Сабақты қарап шығыңыз</p>\r\n\r\n<p>Алдыңғы үй жұмыстарының шешімі</p>\r\n\r\n<p>Бүгін cізге үй жұмысы беріледі</p>\r\n	13	2019-09-12 12:18:02.826248	2019-09-12 12:18:02.826248	bast.mkv	<p>Сәлеметсіз бе,&nbsp;</p>\r\n\r\n<p>Геометрия тақырыбы сізге қиынға соғуы мүмкін</p>\r\n\r\n<p>Бірақта есеп шығару арқылы түсіне аласыз</p>\r\n\r\n<p>Бүгінгі сабақ - кешегі үй жұмысына сілтеме -<strong>&nbsp;<a href="https://youtu.be/IM2I6SStEXU">Сілтеме</a></strong></p>\r\n	<p><strong>Үй жұмысын 13.09.2019 күні сағат 21:00 дейін ватсаптан жекеме жіберіңіз</strong></p>\r\n	Төртінші сабақ | Математикалық сауаттылық	PDF.pdf
49	Алтыншы сабақ | Математикалық сауаттылық	<p>Бүгін үй жұмысы жоқ</p>\r\n\r\n<p>&nbsp;</p>\r\n	13	2019-09-14 14:49:33.228451	2019-09-14 14:49:33.228451	bast.mkv	<p><strong>Бүгінгі сабақта алдыңғы үй жұмысының шешімі болады</strong></p>\r\n\r\n<p><strong>келесі сабақта жаңа тақырып өтеміз</strong></p>\r\n\r\n<p><strong>Сабақ -&nbsp;<a href="https://youtu.be/RiIvxIxFmGk">Сілтеме</a></strong></p>\r\n	<p><em><strong>Бүгін үй жұмысы жоқ</strong></em></p>\r\n	Алтыншы сабақ | Математикалық сауаттылық	фзаыы.jpg
62	№23. Қазақ халқының қалыптасуы, Қазақ хандығының құрылуы	<p>Бүгінгі тақырыбымызда қазақ халқының халық болып қалыптасуы және Қазақ хандығының құрылу тарихына, себептеріне, саяси тарихына тоқталатын боламыз</p>\r\n	14	2019-09-24 14:56:47.355252	2019-09-24 14:56:47.355252	bast.mkv	<p>Қайырлы кеш! Сабақ&nbsp;<a href="https://youtu.be/tmSdDJyJYhc">сілтемесі </a></p>\r\n	<p>Үй тапсырмасы</p>\r\n\r\n<p>Осы тақырыпқа байланысты тек тест сұрақтары берілді</p>\r\n	\N	Тест.pdf
26	Бірінші тестілеу	<h3><strong>Тестілеу жазу барысындағы кеңестер:</strong></h3>\r\n\r\n<ul>\r\n\t<li>Тестілеудің алдында таза ауада демалып алыңыз</li>\r\n\t<li>Телефон, теледидар немесе тағы басқа көңіліңізді бөлетін заттарды өшіріп тастаңыз</li>\r\n\t<li>Жаныңызға су, қаламсап, дәптер және сағат(тек тестілеуге керек заттарды) ғана алыңыз</li>\r\n\t<li>Тестілеуді барынша шын тестілеудегідей жағадай жасап жазыңыз(тіпті көйлек-шалбар киіп алсаңыз болады)</li>\r\n\t<li>Уақыт. Уақытты есептеп, дәл ҰБТ кезіндегідей уақыт арнаңыз</li>\r\n\t<li>Тестілеу барысында кітапты ашу, калькулятор қолдану немесе интернеттен қарау дегенді мүлдем ойламау керек</li>\r\n</ul>\r\n\r\n<p>Өз-өзіңізді алдағаннан пайда жоқ! Сіздің нәтижеңізді сіз және мен ғана білемін. Сондықтан шынымен біліміңізді тексеріп алыңыз. Сосын курстың соңында басындағы нәтижеңізбен салыстыратын боласыз. Сіздің нәтижеңіз ешнәрсеге әсер етпейді. Сондықтан өз өзіңізді алдамаңыз</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Тестілеудің жауаптарын Үй жұмысын жіберетін жерге суретке түсіріп жіберіңіз. Тек ответтерін, мысалы, 1) A, 2) B деген секілді</em></strong></p>\r\n	9	2019-09-03 15:25:16.527192	2019-09-03 16:39:26.605016	ҰБТ.mp4	<h2><strong>Қайырлы күн, Құрметті Студент!</strong></h2>\r\n\r\n<p>Бүгінгі сабақта тестілеу өтеді.&nbsp;<strong>Тестілеуді төртінші қыркүйек сағат 20:00 дейін жасап бітіру керексіз.</strong></p>\r\n\r\n<p><strong>&quot;Материал&quot;&nbsp;</strong>деген жерде тестілеудің сұрақтары және ережелері бар</p>\r\n\r\n<p><em><strong>Тестілеуді бастамас бұрын:</strong></em></p>\r\n\r\n<ol>\r\n\t<li>Видеоны көріп алыңыз</li>\r\n\t<li>Менің астында тест жазу барысында жасау керек кеңестерімді оқып шығыңыз</li>\r\n</ol>\r\n\r\n<p>Содан соң материал деген жердегі тестті жаза аласыз</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Тестілеудің жауаптарын Үй жұмысын жіберетін жерге суретке түсіріп жіберіңіз. Тек ответтерін, мысалы, 1) A, 2) B деген секілді</em></strong></p>\r\n	<h2>Үй тапсырмасы</h2>\r\n\r\n<p><strong>Тестілеудің жауаптарын Үй жұмысын жіберетін жерге суретке түсіріп жіберіңіз. Тек ответтерін, мысалы, 1) A, 2) B деген секілді</strong></p>\r\n\r\n<p>Тестілеуді Материал деген жердегі документте жазылып тұрғандай ережелер бойынша жазасыз</p>\r\n\r\n<p><em><strong>Жауабын Төртінші қыркүйек сағат 20:00 дейін өткізу керексіз</strong></em></p>\r\n\r\n<h3><strong>Сәттілік!</strong></h3>\r\n	Бірінші тестілеу	test1.pdf
25	Бірінші тестілеу	<h3><strong>Тестілеу жазу барысындағы кеңестер:</strong></h3>\r\n\r\n<ul>\r\n\t<li>Тестілеудің алдында таза ауада демалып алыңыз</li>\r\n\t<li>Телефон, теледидар немесе тағы басқа көңіліңізді бөлетін заттарды өшіріп тастаңыз</li>\r\n\t<li>Жаныңызға су, қаламсап, дәптер және сағат(тек тестілеуге керек заттарды) ғана алыңыз</li>\r\n\t<li>Тестілеуді барынша шын тестілеудегідей жағадай жасап жазыңыз(тіпті көйлек-шалбар киіп алсаңыз болады)</li>\r\n\t<li>Уақыт. Уақытты есептеп, дәл ҰБТ кезіндегідей уақыт арнаңыз</li>\r\n\t<li>Тестілеу барысында кітапты ашу, калькулятор қолдану немесе интернеттен қарау дегенді мүлдем ойламау керек</li>\r\n</ul>\r\n\r\n<p>Өз-өзіңізді алдағаннан пайда жоқ! Сіздің нәтижеңізді сіз және мен ғана білемін. Сондықтан шынымен біліміңізді тексеріп алыңыз. Сосын курстың соңында басындағы нәтижеңізбен салыстыратын боласыз. Сіздің нәтижеңіз ешнәрсеге әсер етпейді. Сондықтан өз өзіңізді алдамаңыз</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Тестілеудің жауаптарын Үй жұмысын жіберетін жерге суретке түсіріп жіберіңіз. Тек ответтерін, мысалы, 1) A, 2) B деген секілді</em></strong></p>\r\n	13	2019-09-03 15:18:36.099773	2019-09-03 16:41:12.531309	ҰБТ.mp4	<h2><strong>Қайырлы күн, Құрметті Студент!</strong></h2>\r\n\r\n<p>Бүгінгі сабақта тестілеу өтеді. <strong>Тестілеуді төртінші қыркүйек сағат 20:00 дейін жасап бітіру керексіз. </strong></p>\r\n\r\n<p><strong>&quot;Материал&quot;&nbsp;</strong>деген жерде тестілеудің сұрақтары және ережелері бар</p>\r\n\r\n<p><em><strong>Тестілеуді бастамас бұрын:</strong></em></p>\r\n\r\n<ol>\r\n\t<li>Видеоны көріп алыңыз</li>\r\n\t<li>Менің астында тест жазу барысында жасау керек кеңестерімді оқып шығыңыз</li>\r\n</ol>\r\n\r\n<p>Содан соң материал деген жердегі тестті жаза аласыз</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Тестілеудің жауаптарын Үй жұмысын жіберетін жерге суретке түсіріп жіберіңіз. Тек ответтерін, мысалы, 1) A, 2) B деген секілді</em></strong></p>\r\n	<p><strong>Тестілеудің жауаптарын Үй жұмысын жіберетін жерге суретке түсіріп жіберіңіз. Тек ответтерін, мысалы, 1) A, 2) B деген секілді</strong></p>\r\n\r\n<p>Тестілеуді Материал деген жердегі документте жазылып тұрғандай ережелер бойынша жазасыз</p>\r\n\r\n<p><em><strong>Жауабын Төртінші қыркүйек сағат 20:00 дейін өткізу керексіз</strong></em></p>\r\n\r\n<h3><strong>Сәттілік!</strong></h3>\r\n	Бірінші тестілеу	Test1.pdf
39	Үшінші сабақ | Математикалық сауаттылық	<p>Сабақтарды қарап,&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>Конспект жазыңыз</li>\r\n\t<li>Үй жұмысын орындаңыз</li>\r\n</ul>\r\n	13	2019-09-09 14:22:09.60862	2019-09-09 14:50:44.339461	bast.mkv	<h2><strong>Сәлеметсіз бе, бүгінгі сабақты жақсылап қарап шығыңыз</strong></h2>\r\n\r\n<p><strong>Себебі, бүгінгі сабақтар өте маңызды</strong></p>\r\n\r\n<p>Сабақтар ютубта болады</p>\r\n\r\n<p>Сілтеме дегенді басып көре аласыз</p>\r\n\r\n<p><strong><a href="https://youtu.be/ijewr-jahsE">Геометрия Сілтеме</a></strong></p>\r\n	<h2>Үй тапсырмасы</h2>\r\n\r\n<h3><strong>Үй жұмысы материал деген жерден 09.09.2019 күні сағат 22:00 шығады</strong></h3>\r\n\r\n<h3><strong>Шыққаннан соң, 10.09.2019 күні сағат Астана уақытымен 20:00 дейін жіберуіңіз керек.</strong></h3>\r\n\r\n<h3><strong>Үй жұмыстарын 87768376096 номеріне ватсап арқылы жібере аласыз.</strong></h3>\r\n	Үшінші сабақ | Математикалық сауаттылық	32.pdf
56	№17. Қыпшақ хандығы. Ұлы Жібек жолы 	<p>Қыпшақ хандығының құрылуы, жер аумағы, саяси тарихы, қоғамдық құрылымы туралы мәлімет ала аласыз. Ұлы Жібек жолының тармақтарымен, ондағы саудадағы тауарлармен, ірі қалалармен танысасызҚыпшақ хандығының құрылуы, жер аумағы, саяси тарихы, қоғамдық құрылымы туралы мәлімет ала аласыз. Ұлы Жібек жолының тармақтарымен, ондағы саудадағы тауарлармен, ірі қалалармен танысасыз</p>\r\n	14	2019-09-18 15:39:25.568836	2019-09-18 15:41:13.984728	bast.mkv	<h2>Қайырлы кеш! Сабақ&nbsp;<a href="https://youtu.be/_QXnUrmO8_g">сілтемесі</a></h2>\r\n	<p>Үй тапсырмасы</p>\r\n\r\n<p>№1. тапсырмада автордың рөліне еніп, Қыпшақ хандығы туралы не түсіндік соны жазып шығамыз</p>\r\n\r\n<p>№2. тапсырмада суреттерге қарап Ұлы Жібек жолына қатысты қандай мәліметтер айтылғанын жазамыз</p>\r\n\r\n<p>№3 тест орындау&nbsp;</p>\r\n	\N	тапсырма1.pdf
45	№12. Түрік қағанаты, Батыс Түрік қағанаты 	<p>Түрік қағанаты және Батыс түрік қағанаты туралы мәлімет ала аласыз&nbsp;</p>\r\n	14	2019-09-13 15:02:02.805514	2019-09-13 15:10:44.098276	bast.mkv	<p>Қайырлы күн! Сабақ осы жерде&nbsp;<a href="https://youtu.be/vfkixsebBxg">осы жерде </a>&nbsp;</p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
51	Жетінші сабақ | Химия	<h2><strong>Жақсылап қарап шығыңыз</strong></h2>\r\n	9	2019-09-15 14:12:44.341745	2019-09-15 14:12:44.341745	bast.mkv	<p>Бүгінгі сабақта</p>\r\n\r\n<p>Клапейрон-Менделеев теңдеуі -&nbsp;<a href="https://youtu.be/Ucp-dKOllz8">Сілтеме</a></p>\r\n\r\n<p>Молярлық концентрация -&nbsp;<a href="https://youtu.be/0nANMFkMqnY">Сілтеме</a></p>\r\n	<h2><em><strong>Бүгін үй жұмысы жоқ!</strong></em></h2>\r\n	Жетінші сабақ | Химия	фзаыы.jpg
63	№24. Қасым хан, Хақназар хан 	<p>Қазақ хандығын басқарған Қасым хан мен Хақназар хандардың ішкі және сыртқы саясаты туралы мәліметтер айтылады.&nbsp;</p>\r\n	14	2019-09-25 14:50:58.638531	2019-09-25 14:50:58.638531	bast.mkv	<p>Сәлеметсіздер ме? Сабақ<a href="https://youtu.be/WVNgoRcp2Wo">сілтемесі</a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	Қасым_хан.pdf
67	№28. XVIII ғ. Қазақ хандығының ішкі және сыртқы жағдайы Жоңғар шапқыншылығы	<p>ХVIII ғасырдағы Қазақ хандығының ішкі және сыртқы жағдайымен танысасыз&nbsp;</p>\r\n	14	2019-09-29 14:53:07.208903	2019-09-29 14:53:07.208903	bast.mkv	<h2>Сәлематсыздар ма?&nbsp;<a href="https://youtu.be/Hr_NwX9emvg">САБАҚ СІЛТЕМЕСІ </a></h2>\r\n	<p>Материалдар бөлімінде үй тапсырмасы&nbsp;</p>\r\n	\N	уй_тапсырмасы.pdf
30	№4. Неолит, Энеолит	<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Сабақты берілген күнінен қалдырмай күнделікті қарауларыңызды өтінемін. Егер, ертең деп әлі бастай алмай жүрсеңіз арты еріншектікке алып келеді. Еріншектіктің сипаты туралы біздің @upmind.kz инста парақшамыздан толық оқи аласыздар.</p>\r\n\r\n<p>Сабақты қарап болған соң, коммент қалдыруыңызды сұраймын. Бұл курстың нәтижелі болуына көмектеседі.</p>\r\n	14	2019-09-05 15:00:33.865266	2019-09-10 11:07:12.434819	bast.mkv	<h2>Қайырлы кеш!&nbsp; &nbsp;&nbsp;<a href="https://youtu.be/MLrlSCZqIbw">осында басыңыз</a></h2>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Бүгінгі сабағымызда тас дәуірінің соңғы кезеңі <strong>неолит </strong>және тас дәуіріне де қола дәуіріне де жатпайтын <strong>энеолит</strong> кезеңі туралы айтатын боламыз. Бұл кезеңдер өзіндік <strong>шаруашылығымен</strong>, тұрақтарында қалған <strong>ескерткіштерімен</strong> ерекшеленеді.</p>\r\n	<h2>Үйге тапсырма:</h2>\r\n\r\n<ul>\r\n\t<li>Видеоны толық қарап шығып, конспекті жасап аламыз</li>\r\n\t<li>Материалдар деген жердегі тапсырманы және тестті&nbsp;орындаймыз (мысалы: 1. деп бірден жауабын жазыңыз, сұрақты көшіріп отырудың қажеті жоқ).&nbsp;</li>\r\n</ul>\r\n\r\n<p>Сәттілік!</p>\r\n	\N	_2_сабақ_тапсырмасы.pdf
29	Бірінші сабақ | Математикалық сауаттылық	<p>Сабақты қарау барысында конспект жазып отыруға тырысыңыз. Конспект жазу арқылы еске жақсы сақталады.&nbsp;</p>\r\n\r\n<p>Сабақты түсінбей қалсаңыз, тағы бір рет қайталап қараңыз</p>\r\n\r\n<p>Терминді білмесеңіз ГУГЛ ден қарап көріңіз</p>\r\n\r\n<p>Содан кейін де қиналып тұрсаңыз &quot;Түсінбей қалған жерлер болса немесе сұрақ туындаса&quot; деген жерге сұрақ қоя аласыз</p>\r\n	13	2019-09-04 21:09:59.354451	2019-09-08 10:33:11.678512	bast.mkv	<h2><strong>Қайырлы күн, Құрметті Студент!</strong></h2>\r\n\r\n<p><strong>Бүгінгі сабаққа қош келдіңіз</strong></p>\r\n\r\n<p>Сабақты көрмес&nbsp;бұрын, ыңғайлы жайғасып, дәптеріңізді, қаламсаптарыңызды дайындап, конспект жазуға дайын отырыңыз.</p>\r\n\r\n<p>Бүгінгі сабақта теңдеу құруды үйренеміз, теңдеу тақырыбы кез келген басқа тақырыпта кездеседі. Сондықтан, мұқият қараңыз.</p>\r\n\r\n<p><strong>Ал ендеше сабақты қараңыз</strong></p>\r\n\r\n<p><strong>Сабақты ютубтан қарайсыз сілтеме:&nbsp;<a href="https://youtu.be/TGZdVT-XrLM">осыны басыңыз</a></strong></p>\r\n	<h2><strong>Бүгінгі сабақтың тапсырмасы:</strong></h2>\r\n\r\n<p>1) Сабақты қарап шығу</p>\r\n\r\n<p>2) Конспект жазу</p>\r\n\r\n<p>3) Материал деген жердегі есептерді шығару</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4) Бонус тапсырма(орындау міндетті емес, орындасаңыз пайдасы тиеді) : Сториеске немесе пост ретінде бүгінгі сабақ туралы ойыңызды жазып, бізді белгілеп қойсаңыз болады. Жасасаңыз бізде сізді белгілеп қоямыз.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>2,4 тапсырмаларды бізге Үй жұмысы деген жерге жіберу керексіз</strong></em></p>\r\n\r\n<p><em><strong>6 қыркүйек сағат 9:00 дейін</strong></em></p>\r\n	Математикалық сауаттылық	pdf.pdf
31	№5 Қола дәуіріндегі Қазақстан,  Андрон мәдениеті	<p>&nbsp; <strong>&nbsp; Үлгермей жатырмын</strong> дегендерге қысқаша <strong>кеңес</strong> айтып кеткім келеді. Сіз қашан үлгермейсіз, егер 24 сағат уақыт жоспарланбағанда. Сол үшін бүгіннен қалмай ертеңгі күнімізді жоспарға түземіз.</p>\r\n\r\n<p>Мысалы: 07.00 де тұрамын,</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 07.10 таңғы ас ішемін</p>\r\n\r\n<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;07. 45 мектепте боламын т.б.&nbsp; осылай жоспарлаңыз, сосын жасап болғаныңызды сызып отырыңыз, сондай <strong>керемет</strong> сезім пайда болады. Өзіңіз соны жасағаныңыз <strong>шабыт</strong> сыйлайды. Олай жасамаған күнде біздің көп уақытымыз <strong>әлеуметтік желелерге</strong> кетуде, оны біз байқамаймыз.</p>\r\n\r\n<ul>\r\n\t<li>Жасап көреміз бе?</li>\r\n\t<li>Коммент қалдырамыз</li>\r\n</ul>\r\n	14	2019-09-06 14:24:57.731725	2019-09-10 11:28:18.127717	bast.mkv	<h2>Қайырлы кеш!<a href="https://youtu.be/dxiwQXmaBGk">сабақ сілтемесі </a></h2>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Қарастыратын тақырыбымызда <strong>Қола дәуірінің</strong> жалпы адамзат баласының тарихында ерекше орын алатындығын айтамыз. Сонымен қатар <strong>Андрон мәдениетінің тұрақтары, ескерткіштері, таралу</strong> аймағы жөнінде сөз қозғаймыз.</p>\r\n	<p>Үй тапсырмасы күнделікті Астана уақытымен 20.00 ге дейін қабылданады.</p>\r\n\r\n<p>Әдеттегідей тапсырмадан және тестілеуден тұрады.</p>\r\n\r\n<p>Сәттілік!</p>\r\n	\N	тапсырма.pdf
52	№14. Оғыздар. Қимақтар 	<p>Оғыздар, Қимақтар&nbsp;</p>\r\n	14	2019-09-15 15:19:12.898835	2019-09-15 15:19:12.898835	bast.mkv	<p>Қайырлы кеш!&nbsp; Сабақ сілтемесі&nbsp;<a href="https://youtu.be/SsTDdKAcSSo">осы жерде</a>&nbsp;</p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
57	№18. ІХ ғ. екінші жартысы -ХІІІ ғ. басындағы Қазақстан мәдениеті	<p>ІХ ғ. екінші жартысы -ХІІІ ғ. басындағы қала мәдениетінің, қол өнердің, сәулет өнерінің, әдебиеттің дамуы және ислам дінінің таралуы жайында білім ала аласыздар</p>\r\n	14	2019-09-19 15:00:15.847815	2019-09-20 14:39:39.544658	bast.mkv	<p><a href="https://youtu.be/6ldwjmskCzM">осы жерде</a>&nbsp;Сәлематсыздар ма? Сабақ&nbsp;</p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
64	№25. Тәуекел хан, Есім хан 	<p>Тәуекел, Есім хандардың ішкі және сыртқы саясатымен танысасыз</p>\r\n	14	2019-09-26 15:48:55.034619	2019-09-26 15:48:55.034619	bast.mkv	<p>Сәлеметсіздер ме?&nbsp;<a href="https://youtu.be/QJMncgDV_l8">Сабақтың сілтемесі</a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	Тәуекел_хан.pdf
68	№29. Кіші жүздің Ресейге қосылуы. Абылай хан 	<p>Кіші жүздің патша үкіметінің бодандығын мойындауы, Абылай хан тақырыбында&nbsp;</p>\r\n	14	2019-09-30 16:26:55.668301	2019-09-30 16:26:55.668301	bast.mkv	<p>Қайырлы кеш!&nbsp;<a href="https://youtu.be/2maJLLk0Tlo">Сабақ сілтемесі </a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырмалар.pdf
33	Бақылау тесттің видео талдауы	<p>Материалдар деген жерде дұрыс жауаптары берілді.</p>\r\n	14	2019-09-08 02:55:32.695514	2019-09-10 11:24:02.682079	bast.mkv	<p>Қайырлы күн!&nbsp;</p>\r\n\r\n<p>Тестілеудің видео талдауы берілді.&nbsp;&nbsp;<a href="https://youtu.be/VFjCjflEhTM">сілтеме осы жерде </a></p>\r\n	<p>Өз жауаптарыңызбен тексеріп қарап шығыңыз</p>\r\n	\N	WhatsApp_Image_2019-09-08_at_05.48.13.jpeg
35	Екінші сабақ | Математикалық сауаттылық	<p>Сабақтың үй жұмысы талдауын дұрыстап түсініңіз және жаңа сабаққа конспект жазыңыз</p>\r\n	13	2019-09-08 10:31:51.539174	2019-09-08 10:40:20.078418	bast.mkv	<p><strong>Сәлеметсіз бе,</strong></p>\r\n\r\n<p>Бүгін үй жұмысы талдау болады</p>\r\n\r\n<p>Сабақ ютубта болады</p>\r\n\r\n<p>Көру үшін мынаны басыңыз:&nbsp;<a href="https://youtu.be/yIHlWyJ9neA">Сілтеме</a></p>\r\n\r\n<p>&nbsp;</p>\r\n	<h2><strong><strong><em>Бүгін үй жұмысы жоқ</em></strong></strong></h2>\r\n\r\n<p>Келесі сабақта екі үй жұмысы бірге беріледі</p>\r\n	Екінші сабақ | Математикалық сауаттылық	scs.jpg
34	Екінші сабақ | Химия	<p>Сабақтың үй жұмысы талдауын дұрыстап түсініңіз және жаңа сабаққа конспект жазыңыз</p>\r\n	9	2019-09-08 10:27:54.567697	2019-09-08 10:40:52.883892	bast.mkv	<p><strong>Сәлеметсіз бе,</strong></p>\r\n\r\n<p>Бүгін үй жұмысы талдау болады және Иондар туралы өтеміз</p>\r\n\r\n<p><strong>Сабақты ютубтан көре аласыз</strong></p>\r\n\r\n<p><strong><a href="https://youtu.be/xcQ9XAismSw">Осыны басыңыз</a></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n	<h2><strong><strong><em>Бүгін үй жұмысы жоқ</em></strong></strong></h2>\r\n\r\n<p>Келесі сабақта екі үй жұмысы бірге беріледі</p>\r\n	Сәлеметсіз бе,\r\nБүгін үй жұмысы талдау болады және Иондар туралы өтеміз\r\n	upmin.jpg
38	Үшінші сабақ | Химия	<p>Бүгінгі сабақта өте маңызды заттарды өтеміз. Химиялық реакциялар туралы үйрену, реакцияларға баланс қоя білу - химияның фундаменттерінің бірі. Онымен қоса стехиометрия заңдылығы барлық реакцияларда қолданылады.</p>\r\n\r\n<p>Сабақтарды қарап,&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>Конспект жазыңыз</li>\r\n\t<li>Үй жұмысын орындаңыз</li>\r\n</ul>\r\n	9	2019-09-09 14:07:15.113779	2019-09-09 14:51:30.062567	bast.mkv	<h2><strong>Сәлеметсіз бе, бүгінгі сабақты жақсылап қарап шығыңыз</strong></h2>\r\n\r\n<p><strong>Себебі, бүгінгі сабақтар өте маңызды</strong></p>\r\n\r\n<p>Сабақтар ютубта болады</p>\r\n\r\n<p>Сілтеме дегенді басып көре аласыз</p>\r\n\r\n<p>Бүгінгі сабақта 4 видео болады</p>\r\n\r\n<p>Химиялық реакциялар -&nbsp;<a href="https://youtu.be/FhIDFR9x90o">Сілтеме</a></p>\r\n\r\n<p>Баланс қою -&nbsp;<a href="https://youtu.be/XTXM1GmF-2c">Сілтеме</a></p>\r\n\r\n<p>Стехиометрия -&nbsp;<a href="https://youtu.be/zg282iTvqa8">Сілтеме</a></p>\r\n\r\n<p>Артық және жетіспейтін реагент -&nbsp;<a href="https://youtu.be/ZxT2SFJtOk4">Сілтеме</a></p>\r\n\r\n<p>&nbsp;</p>\r\n	<h3>Бүгінге үй жұмысы жоқ</h3>\r\n	Үшінші сабақ | Химия	фзаыы.jpg
32	№6. Қола дәуіріндегі шаруашылық және қоғамдық – мәдени өмірдегі өзгерістер. Қола дәуірінің қоғамдық құрылысы	<p>қола дәуірі</p>\r\n	14	2019-09-07 14:53:33.473961	2019-09-10 11:11:16.741188	bast.mkv	<p><a href="https://youtu.be/iNbUH3YlC4E">сабақ сілтемесі осында </a>Қайырлы кеш!</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Қарастыратын тақырыбымыз <strong>Қола дәуіріндегі шаруашылық және қоғамдық &ndash; мәдени өмірдегі өзгерістер, дәуірінің қоғамдық құрылысы</strong>. Бұл тақырыпта Қола дәуірінің тұрғындарының <strong>мал шаруашылығы, егеншілік және металл өңдеу екендігін</strong> білетін боласыз. Беғазы &ndash;Дәндібай мәдениетінің ерекшелігімен танысасыз. Қоғамда <strong>мүлік теңсіздігі</strong> орнап, <strong>жеке меншіктің</strong> қалыптасқанын білесіз.</p>\r\n	<p>Үйге тапсырма:</p>\r\n\r\n<ol>\r\n\t<li>тапсырмада Беғазы &ndash;Дәндібай мәдениеті туралы не білдік, соны шеңберге топтастырып жазамыз.</li>\r\n\t<li>тапсырмада шаруашылықтың негізгі түрлері берілген, соларға сипаттама келтіреміз. (Мыс: жартылай көшпелі мал шаруашылығы қалыптаса бастады, егіншілікке тесені пайдаланды т.б.)</li>\r\n\t<li>тест сұрақтары</li>\r\n</ol>\r\n\r\n<p>Сәттілік!&nbsp;</p>\r\n	\N	тапсырма.pdf
46	Бесінші сабақ | Химия	<p>Бүгінгі тақырыптар өте маңызды. Әр пробныйда 5-10 сұрақтан келеді</p>\r\n\r\n<p>Үй жұмысын шығаруды ұмытпаңыз</p>\r\n	9	2019-09-13 15:45:58.574043	2019-09-13 15:45:58.574043	bast.mkv	<p><strong>Сәлеметсіз бе, бүгін өте қызықты тақырып өтеміз</strong></p>\r\n\r\n<p><strong>Және үй жұмысы бар</strong></p>\r\n\r\n<p>1)&nbsp; Таблицалар -&nbsp;<a href="https://youtu.be/mEyNvUTMq2o">Сілтеме</a></p>\r\n\r\n<p>2) Атомдық радиус -&nbsp;<a href="https://youtu.be/aMYdGSUg90w">Сілтеме</a></p>\r\n\r\n<p>3) Электротерістілік -&nbsp;<a href="https://youtu.be/2LPZq8TVKQY">Сілтеме</a></p>\r\n\r\n<p>4) Химиялық байланыс -&nbsp;<a href="https://youtu.be/AvFuKzsK0GY">Сілтеме</a></p>\r\n	<h2><em><strong>Бүгінгі үй жұмысын жақсылап шығарыңыз!</strong></em></h2>\r\n\r\n<h2><em><strong>Үй жұмысын 14.09.2019 күні сағат 21:00 Дейін тапсырыңыз</strong></em></h2>\r\n	Бесінші сабақ | Химия	hw.pdf
53	Жетінші сабақ | Математикалық сауаттылық	<p>Бүгін тақырып өтеміз, келесі сабақта есеп шығарамыз</p>\r\n	13	2019-09-15 15:53:24.228322	2019-09-15 15:53:24.228322	bast.mkv	<p>Бүгінгі сабақта көп, алайда оңай тақырыптарды өтеміз</p>\r\n\r\n<p>Сабақ -&nbsp;<a href="https://youtu.be/IAiQcr_mX1Y">сілтеме</a></p>\r\n	<p>Бүгінге үй жұмысы жоқ</p>\r\n	Жетінші сабақ | Математикалық сауаттылық	фзаыы.jpg
58	№19. Монғолдардың Қазақстан жерін жаулап алуы. Алтын Орда 	<p>Монғол мемлекетінің құрылуы саяси тарихы және Алтын Орданың саяси тарихы жайында баяндалады&nbsp;</p>\r\n	14	2019-09-20 14:10:25.870189	2019-09-20 14:10:25.870189	bast.mkv	<p>Қайырлы кешІ Сабақ сілтемесі&nbsp;<a href="https://youtu.be/mzfEThknvMs">осы жерде</a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
28	Бірінші сабақ | Химия	<p>Сабақты қарау барысында конспект жазып отыруға тырысыңыз. Конспект жазу арқылы еске жақсы сақталады.&nbsp;</p>\r\n\r\n<p>Сабақты түсінбей қалсаңыз, тағы бір рет қайталап қараңыз</p>\r\n\r\n<p>Терминді білмесеңіз ГУГЛ ден қарап көріңіз</p>\r\n\r\n<p>Содан кейін де қиналып тұрсаңыз &quot;Түсінбей қалған жерлер болса немесе сұрақ туындаса&quot; деген жерге сұрақ қоя аласыз</p>\r\n	9	2019-09-04 21:05:48.206739	2019-09-08 10:37:53.726354	bast.mkv	<h2><strong>Қайырлы күн, Құрметті Студент!</strong></h2>\r\n\r\n<p><strong>Бүгінгі сабаққа қош келдіңіз</strong></p>\r\n\r\n<p>Сабақты көрмес&nbsp;бұрын, ыңғайлы жайғасып, дәптеріңізді, қаламсаптарыңызды дайындап, конспект жазуға дайын отырыңыз.</p>\r\n\r\n<p>Бүгінгі сабақта өтетін тақырыптар:</p>\r\n\r\n<ol>\r\n\t<li>&nbsp;Химия туралы алғашқы түсініктер</li>\r\n\t<li>&nbsp;Элементтер және атомдар</li>\r\n\t<li>&nbsp;Моль</li>\r\n\t<li>Авогадро саны</li>\r\n\t<li>Атомдық номер</li>\r\n\t<li>Атомдық масса</li>\r\n\t<li>Изотоптар</li>\r\n\t<li>Протон</li>\r\n\t<li>Электрон</li>\r\n\t<li>Нейтрон</li>\r\n</ol>\r\n\r\n<p><strong>Ал ендеше сабақты қараңыз</strong></p>\r\n\r\n<p><strong>Сабақ ютубта шығады, сілтемесі:&nbsp;<a href="http://youtu.be/GxchysjLnkk">Осыны басыңыз</a></strong></p>\r\n	<h2><strong>Бүгінгі сабақтың тапсырмасы:</strong></h2>\r\n\r\n<p>1) Сабақты қарап шығу</p>\r\n\r\n<p>2) Конспект жазу</p>\r\n\r\n<p>3) Материал деген жердегі есептерді шығару</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4) Бонус тапсырма(орындау міндетті емес, орындасаңыз пайдасы тиеді) : Сториеске немесе пост ретінде бүгінгі сабақ туралы ойыңызды жазып, бізді белгілеп қойсаңыз болады. Жасасаңыз бізде сізді белгілеп қоямыз.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><strong>2,4 тапсырмаларды бізге Үй жұмысы деген жерге жіберу керексіз</strong></em></p>\r\n\r\n<p><em><strong>6 қыркүйек сағат 9:00 дейін</strong></em></p>\r\n	Химия	pdf.pdf
36	№7. Темір дәуірі, Сақтар 	<p>Сабақтың түсіндірме видеосы ютубқа салынды.&nbsp;<a href="https://youtu.be/CU78GblSTek">Осыны басыңыз</a></p>\r\n	14	2019-09-08 11:05:34.130969	2019-09-08 14:36:25.779015	bast.mkv	<p>Бүгінгі тақырып күрделі, бар ықыласыңызбен тыңдауыңыз сұралады. Мұнда темір дәуірінің екі бөлінгенін, шаруашлығында, тұрмысында болған өзгерістер жайында айтамыз. Ерте темір дәуірінде өмір сүрген сақ тайпалары жөнінде құнды деректер келтірілген.</p>\r\n	<p>Үй тапсырмасы төрт тапсырмадан тұрады</p>\r\n\r\n<p>1. Кестені толтыру</p>\r\n\r\n<p>2. Адасқан әріптерді табу және табылған сөздің мағынасын ашу</p>\r\n\r\n<p>3. Жылдармен жұмыс&nbsp;</p>\r\n	\N	тапсырма.pdf
27	№3. Палеолит, Мезолит	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Тақырыпты тыңдағанда немқұрайлы қарамай <strong>арнайы уақыт</strong> бөлуіңізді сұраймын. Дәптеріңізге міндетті түрде <strong>қажет ақпараттарды</strong> түртіп отырыңыз. Себебі біздің жадымыз <strong>ұзақ мерзімді</strong> және <strong>қысқа мерзімді</strong> болып бөлінеді. Егер сіз жазбай тек тыңдайтын болсаңыз ол қысқа мерзімді жадыға жазылады да, сіз тез ұмытасыз. Ал, дәптеріңіздегі жазуларды қараған сәтте бәрі есіңізге қайта түсіп ол жадыңызға жақсы сақталады. Сонымен қатар, ми біздің берген ақпараттарды бірден қабылдамайды, сол үшін қолыңыз боста видеоны <strong>тағы бір</strong> айналдырып қараңыз. Кейде болады бір кітапты не видеоны екінші рет қарағанда бірінші қарағанда байқамаған <strong>фрагменттерді </strong>байқауға болады.</p>\r\n	14	2019-09-04 15:18:44.836706	2019-09-10 11:03:55.93247	bast.mkv	<h1><strong>Қайырлы кеш!</strong></h1>\r\n\r\n<h3>Бүгін курсымыздың негізгі тақырыптарын бастаймыз!&nbsp;<a href="https://youtu.be/lS6OHn1UJSU">видео осында </a></h3>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Сізге берілген бұл видеодан, тас дәуірінің <strong>палеолит және мезолит</strong> кезеңдерінің түсіндірмесін қарай аласыз. Палеолит пен мезолиттің қамтитын кезеңдерін, тұрақтарын және сол дәуірдің тұрғындарының шаруашылығымен танысасыз.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n	<p>Үй тапсырмасына екі тапсырма және тест сұрақтары берілген. Бұл тапсырмаларды екінші дәптерімізге орындап, оны суретке түсіріп жібереміз. Орындаған тапсырмаңыздың жоғарғы жағына атыңызды жазып қалдырсаңыз, өзіме белгілеп отыруға.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Үй тапсырмасын 05.09.2019 ж. күні сағат 20.00 ге дейін тапсыру керексіз.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Сәттілік!</p>\r\n	\N	1_сабак_тапсырмасы.pdf
37	№8. Ерте темір дәуіріндегі Оңтүстік, Жетісу, Орталық, Шығыс, Солтүстік Қазақстан 	<p><strong>Ескерту! Үй жұмысын орындағанда слайдты көшіру міндетті емес, өз түсінігіңізді жазыңыз</strong></p>\r\n	14	2019-09-09 14:02:57.026508	2019-09-09 14:06:56.152312	bast.mkv	<p>Бұл тақырыптан ерте темір дәуірінде сақтардан басқа тайпаларың өмір сүрген аумағымен, шаруашылығымен, ескерткіштерімен танысасыздар&nbsp;<a href="https://youtu.be/-WgxEdS4fxU">осыны басыңыз</a></p>\r\n	<p>Үйге тапсырма,</p>\r\n\r\n<p>1. Алтын адам туралы мәліметті топтастыру</p>\r\n\r\n<p>2. Берілген обаларға қысқаша мәлімет беру</p>\r\n\r\n<p>Әдеттегідей үй тапсырмасын ватсапта жіберіңіз!</p>\r\n\r\n<p>Сәттілік!&nbsp;</p>\r\n	\N	тапсырма.pdf
40	№9. Сарматтар, Ғұндар	<p>сармат, ғұн</p>\r\n	14	2019-09-10 15:57:29.409793	2019-09-10 15:59:00.375413	bast.mkv	<p>Қайырлы кеш!&nbsp; сабақтың сілтемесі&nbsp;<a href="https://youtu.be/AyhAyyswJEA">осында</a></p>\r\n	<p>Үй тапсырмасы&nbsp;</p>\r\n\r\n<p>1. тапсырма&nbsp;Сарматтар тақырыбына арналады.</p>\r\n\r\n<p>2. тапсырма Ғұндар тақырыбына арналған</p>\r\n\r\n<p>3. Тест</p>\r\n	\N	тапсырма.pdf
43	Төртінші сабақ | Химия	<p><strong>Бүгін үй жұмысы жоқ</strong></p>\r\n\r\n<p><em><strong>Коментарий ге Сабақ қалай болғанын жазыңыз</strong></em></p>\r\n	9	2019-09-12 12:46:54.815757	2019-09-12 12:46:54.815757	bast.mkv	<p>Бүгінгі сабақта атом құрылысын өтеміз</p>\r\n\r\n<p>Атом құрылысы</p>\r\n\r\n<p>1 Бөлім -&nbsp;<a href="https://youtu.be/8CIOOXX2j_Q">Сілтеме</a></p>\r\n\r\n<p>2 Бөлім -&nbsp;<a href="https://youtu.be/CdcTF3vreJ0">Сілтеме</a></p>\r\n	<p><strong><em>Бүгін үй жұмысы жоқ</em></strong></p>\r\n	Төртінші сабақ | Химия	фзаыы.jpg
44	№11. Көшпелілердің әлем мәдениетіне қосқан үлесі, Қорытынды 	<p>Ежелгі Қазақстан тарихы кезеңі аяқталды.&nbsp;</p>\r\n	14	2019-09-12 14:52:56.766404	2019-09-12 14:52:56.766404	bast.mkv	<h2>Сабаққа сілтеме&nbsp;<a href="https://youtu.be/a-iCbxXP-h8">осы жерде </a></h2>\r\n	<p>Үй тапсырмасы бүгін берілмейді&nbsp;</p>\r\n	\N	scs.jpg
84	№45. Ақпан революциясы тұсындағы Қазақстан, Қазан төңкерісі тұсындағы Қазақстан 	<p>Ақпан, Қазан төңкерісі&nbsp;</p>\r\n	14	2019-10-16 13:03:12.789069	2019-10-16 13:40:57.279146	bast.mkv	<h1>Қайырлы кеш! Сабақ&nbsp;<a href="https://youtu.be/DY1-_J8amjI">сілтемесі </a></h1>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
85	№46. Қазақстандағы ұлттық қозғалыстар, Кеңес үкіметінің орнауы 	<p>Ұлттық қозғалыстар. Кеңес үкіметінің құрылуы&nbsp;</p>\r\n	14	2019-10-17 12:52:38.214921	2019-10-18 13:13:56.379032	bast.mkv	<p>Салематсыздар ма? Сабақ сілтемесі&nbsp;<a href="https://youtu.be/7DCqOPVgGhE">осы жерде </a></p>\r\n	<p>Үй тапсырмасы материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
86	№47. Қазақстан Азамат соғысы жылдарында.Ұлттық мемлекеттіктің қайта қалпына келтірілуі 	<p>Азамат соғысы, Ұлттық мемлекеттің құрылуы&nbsp;</p>\r\n	14	2019-10-18 13:47:45.848299	2019-10-19 06:13:29.465907	bast.mkv	<p>Салематсыздар ма? Сабақ сілтемесі&nbsp;<a href="https://youtu.be/zgjRXlvcPcY">осы жерде </a></p>\r\n	<p>Материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
87	№48. Индустрияландыру кезіндегі Қазақстан, Қазақстанда ауылшаруашылығын ұйымдастыру 	<p>Индустрияландыру, Ұжымдастыру</p>\r\n	14	2019-10-20 10:36:44.19377	2019-10-20 10:36:44.19377	bast.mkv	<p>Сәлематсыздар ма? Сабақ сілтемесі&nbsp;<a href="https://youtu.be/96f8wstIRLE">осы жерде </a></p>\r\n	<p>Материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
88	№ 49. 1930 ж. қоғамдық саяси өмір, Қазақ КСР құрылуы 	<p>Репрессия, ҚазКСР&nbsp;</p>\r\n	14	2019-10-21 14:42:40.788171	2019-10-21 14:42:40.788171	bast.mkv	<p>Сәлематсыздар ма?</p>\r\n\r\n<p>&nbsp;Сабақ сілтемесі&nbsp;<a href="https://youtu.be/cOMU0RYBYmc">осы жерді</a></p>\r\n	<p>Материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
89	№50. Халыққа білім беру, білімнің, ғылымның дамуы, әдебиеттің көркемөнердің дамуы 	<p>Білім, ғылым, әдебиет, өнер</p>\r\n	14	2019-10-22 16:35:57.79707	2019-10-22 16:35:57.79707	bast.mkv	<p>Сәлематсыздар ма? Сабақ сілтемесі<a href="https://youtu.be/wEGB3vuPh6U">осы жерде </a></p>\r\n	<p>материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
90	№51. Қазақстанның Ұлы Отан соғысына қатысуы. Ұлы Отан соғысы жылдарындағы ғылым мен мәдениет 	<p>Ұлы Отан соғысы&nbsp;</p>\r\n	14	2019-10-23 13:15:18.135939	2019-10-23 13:15:18.135939	bast.mkv	<p>Салематсыздар ма? Сабақ сілтемесі&nbsp;<a href="https://youtu.be/32zDWU3nRTc">осы жерде </a></p>\r\n	<p>Материалдар бөлімінде&nbsp;</p>\r\n	\N	тапсырма.pdf
\.


--
-- Data for Name: multiple_answers; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.multiple_answers (id, multiple_question_id, answer, correct) FROM stdin;
1	1	15	f
2	1	10см	t
\.


--
-- Data for Name: multiple_questions; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.multiple_questions (id, multiple_id, question) FROM stdin;
1	1	Абылай ханнынкы канша см
\.


--
-- Data for Name: multiple_results; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.multiple_results (id, multiple_id, user_id, result, created_at, updated_at) FROM stdin;
1	1	291	100	2019-11-06 08:45:35.833318	2019-11-06 08:45:35.833318
\.


--
-- Data for Name: multiples; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.multiples (id, lesson_id, title, description, created_at, updated_at) FROM stdin;
1	11	Мидка	\N	2019-11-06 08:43:52.931415	2019-11-06 08:43:52.931415
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.news (id, title, description_short, description, image, created_at, updated_at, image_dominant_color, content, language_id) FROM stdin;
2	Новость вторая	Лорем ипсум долор сит амет, ут нец видиссе перицулис, мел еу уллум алтерум волуптуа, цу иус цетерос интеллегат.	Лорем ипсум долор сит амет, ут нец видиссе перицулис, мел еу уллум алтерум волуптуа, цу иус цетерос интеллегат. Еи нам аетерно малорум денияуе. Ут мазим еррор тимеам нам, цу муциус волумус ратионибус еум. Сит ин пурто регионе сцаевола, алиа импедит те вис. Нам цу семпер номинави. Усу видиссе платонем ут. Цу сит яуем цибо вери, цу яуо вери дицит, но еум волуптариа цонсететур. Ут вис либрис импетус. Про ат детрацто адиписцинг. Цаусае орнатус еам ад, яуот цонгуе яуидам яуо ут. Не витае деленит вим, те утамур вивендо дуо. Меа еи утрояуе салутанди детерруиссет, толлит волумус репудиаре ин усу. Ех яуи сале детрахит, нам ассентиор реформиданс ад. Сед ид фугит латине ратионибус. Яуи аццусамус инструцтиор но, про ин цонсул цаусае перицула, сеа мунди моллис елеифенд те. Еи солеат ириуре еос, те нец тимеам оффендит. Ест еу мутат аппареат петентиум, пер воцибус опортере ут, еум мелиус пертинах садипсцинг ет. Ид дицант аргументум при, ад яуи яуот интерессет, еа цум садипсцинг цонтентионес. Сед ерос лобортис ин. Дицунт перципитур еос еи, ан хомеро пхаедрум сцрипторем иус. Тимеам репрехендунт цомпрехенсам еум ут, ут аутем партем евертитур усу. Дуо елитр утрояуе интеллегат ин, меи те яуаеяуе демоцритум. Еум цасе фацилис легендос еу, про ех утамур менандри. Вис видерер елояуентиам ех, те меи еирмод бландит персецути. Те алияуип перципит меа, ут граеци аццусам сенсибус меи. Про не дебет яуандо, алиенум цонсеяуунтур репрехендунт ут еам. Вис не ерант дицам сентентиае, цум ех епицури ехпетенда, но при мелиус аццусата. Меи яуем лаборе но, меи мунере фабеллас ад. Магна елецтрам иудицабит еум те, ат яуо убияуе ментитум инструцтиор. Граецис маиорум сенсерит сит ех, модус алияуам бландит хас не. Елеифенд делицата елецтрам нам ут, еос ин дицам медиоцритатем. Елит яуидам цум ин, еум цу легимус бландит пробатус. Номинави симилияуе ан нец. Еи пауло цоммодо сит, ех уллум дицант алияуид цум.\r\n	Screenshot_from_2019-06-19_17-29-49.png	2019-07-09 22:24:55.918053	2019-07-13 05:34:05.841131	#13193c	\N	1
3	Новость третья	Вы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужик	Вы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужик\r\nВы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужикВы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужикВы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужик	1435397110_577794048.png	2019-07-09 23:04:48.432698	2019-07-13 05:33:38.535615	#0086ff	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2
1	Новость первая	Лорем ипсум долор сит амет, ут нец видиссе перицулис, мел еу уллум алтерум волуптуа, цу иус цетерос интеллегат. 	Лорем ипсум долор сит амет, ут нец видиссе перицулис, мел еу уллум алтерум волуптуа, цу иус цетерос интеллегат. Еи нам аетерно малорум денияуе. Ут мазим еррор тимеам нам, цу муциус волумус ратионибус еум. Сит ин пурто регионе сцаевола, алиа импедит те вис. Нам цу семпер номинави.\r\nУсу видиссе платонем ут. Цу сит яуем цибо вери, цу яуо вери дицит, но еум волуптариа цонсететур. Ут вис либрис импетус. Про ат детрацто адиписцинг.\r\n\r\nЦаусае орнатус еам ад, яуот цонгуе яуидам яуо ут. Не витае деленит вим, те утамур вивендо дуо. Меа еи утрояуе салутанди детерруиссет, толлит волумус репудиаре ин усу. Ех яуи сале детрахит, нам ассентиор реформиданс ад. Сед ид фугит латине ратионибус. Яуи аццусамус инструцтиор но, про ин цонсул цаусае перицула, сеа мунди моллис елеифенд те.\r\n\r\nЕи солеат ириуре еос, те нец тимеам оффендит. Ест еу мутат аппареат петентиум, пер воцибус опортере ут, еум мелиус пертинах садипсцинг ет. Ид дицант аргументум при, ад яуи яуот интерессет, еа цум садипсцинг цонтентионес. Сед ерос лобортис ин.\r\n\r\nДицунт перципитур еос еи, ан хомеро пхаедрум сцрипторем иус. Тимеам репрехендунт цомпрехенсам еум ут, ут аутем партем евертитур усу. Дуо елитр утрояуе интеллегат ин, меи те яуаеяуе демоцритум. Еум цасе фацилис легендос еу, про ех утамур менандри.\r\n\r\nВис видерер елояуентиам ех, те меи еирмод бландит персецути. Те алияуип перципит меа, ут граеци аццусам сенсибус меи. Про не дебет яуандо, алиенум цонсеяуунтур репрехендунт ут еам. Вис не ерант дицам сентентиае, цум ех епицури ехпетенда, но при мелиус аццусата. Меи яуем лаборе но, меи мунере фабеллас ад. Магна елецтрам иудицабит еум те, ат яуо убияуе ментитум инструцтиор.\r\n\r\nГраецис маиорум сенсерит сит ех, модус алияуам бландит хас не. Елеифенд делицата елецтрам нам ут, еос ин дицам медиоцритатем. Елит яуидам цум ин, еум цу легимус бландит пробатус. Номинави симилияуе ан нец. Еи пауло цоммодо сит, ех уллум дицант алияуид цум.	planeta_kratery_kosmos_svet_61032_1600x1200.jpg	2019-07-09 22:23:45.923106	2019-07-13 05:34:05.845863	#904628	\N	1
\.


--
-- Data for Name: programs; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.programs (id, title, description, course_id) FROM stdin;
1	dsfddf	dffd	\N
2	1 апта	Сандар теориясы	\N
4	Құпия сабақ №1	Бірінші құпия сабақты 20 тамыз күні аласыз	16
3	fdfd	fdf	\N
5	Құпия сабақ №2	Екінші құпия сабақты 21 тамыз аласыз.	16
6	Құпия сабақ №3	Үшінші құпия сабақты 22 тамыз аласыз.	16
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.schema_migrations (version) FROM stdin;
20190705171127
20190708123142
20190709110513
20190709134402
20190709171556
20190709180936
20190709221019
20190709225746
20190709230132
20190710040203
20190713043418
20190713043708
20190713044720
20190713044941
20190713045557
20190713050257
20190713083838
20190713084643
20190713085434
20190714025014
20190714045415
20190714050300
20190714190026
20190714232051
20190714233606
20190715014951
20190718131314
20190719075249
20190719080052
20190719080449
20190719081837
20190719095315
20190719100848
20190719105342
20190719110355
20190719115621
20190719150728
20190719151008
20190719153144
20190720124105
20190720125136
20191025103433
20191025103834
20191025103959
20191025104218
20191025105025
20191025201051
20191125085957
20191125090354
20191125093649
\.


--
-- Data for Name: socials; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.socials (id, link, label, icon) FROM stdin;
1	https://www.youtube.com/channel/UCWwcIMsnI193ToFqHEwlZGQ	Youtube	YouTube-icon.png
2	https://vk.com/upmindkzubt	Вконтакте	Vk-icon.png
3	https://www.instagram.com/upmind.kz/	Instagram	instaicon.png
4	https://t.me/upmindent	Телеграм	Telegram-icon.png
\.


--
-- Data for Name: student_questions; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.student_questions (id, lesson_id, user_id, question, created_at, updated_at, answer) FROM stdin;
52	12	292	Кіріспе болғандықтан,барлығы түсінікті.	2019-09-03 12:18:01.746676	2019-09-03 12:18:01.746676	\N
54	26	286	Кейбір шартты есептерді түсінбедімю	2019-09-04 09:11:02.55206	2019-09-04 09:11:02.55206	\N
53	24	315	Тесттын жауабын оздеринз айтасыздарма?Канша балл жинаганымызды	2019-09-04 03:09:20.200252	2019-09-04 10:00:00.268748	ия, комментариға қалдырып отырамыз неше ұпай екенін
55	25	309	Берылген тесты орындай алмадым мен ушын оте киын 	2019-09-04 13:12:25.622229	2019-09-04 13:12:25.622229	\N
58	29	298	Мугалим, жазган конспектимиздиде уй тапсырмасына жиберу керек пе?	2019-09-05 08:54:47.848444	2019-09-05 08:54:47.848444	\N
59	28	286	Кəдімгі жағдайда протон,нейтрон саны бірдей болып;нейтралды жағдай протон мен электрон сандары бірдей боладыма??	2019-09-05 10:20:21.35313	2019-09-05 10:20:21.35313	\N
61	28	307	4 есеп берілгені түсініксіз болды. 10 дәрежесі ме?	2019-09-05 12:11:58.4082	2019-09-05 12:11:58.4082	\N
63	29	321	Ағай кешiрiңiз мен шығара алмай жатырмын. Сiздiң көрсеткен мысалдарыңыздың бәрiн түсiндiм, тiптi сiзбен қатарласып отырып шығардым. Бiрақ үй тапсырмаларына теңдеу құра алмай жатырмын	2019-09-05 13:57:24.369203	2019-09-05 13:57:24.369203	\N
56	27	302	Үй тапсырмасындағы тест жұмысында 17 сұрақ па? 	2019-09-04 17:47:38.874191	2019-09-05 15:03:26.637261	ия
57	27	305	үй тапсырмасы менде 4 фото болып тұр. олардың барлығын қалай жібере аламын?	2019-09-04 20:48:56.915674	2019-09-05 15:04:02.090349	ватсап группада арнайы программа берілді 
60	27	315	басында мезолит кезенин б.з.д 12-5 дединз да сонгы жагнда б.з.б деп жазылп тур екеуи бирдей ма сонда или кателик кеттима тусиндрп жбересзбе	2019-09-05 10:45:57.683824	2019-09-05 15:05:34.598365	б.з.д. -біздің заманымызға дейін\r\nб.з.б.- біздің заманымыздан бұрын \r\nмағынасы бірдей 
62	27	321	Апай бiзге берiлген үй тапсырмасында мустье кезінде өмір сүрген адам утралы сұрақ бар бiрақ ол туралы сiз түсіндірмедiңiз. 	2019-09-05 12:18:31.560656	2019-09-05 15:06:23.02903	Негізі логикаға салсақ айтылды. Ватсапта толық түсіндіремін
64	29	287	Ағай 4,5,7 есептерін түсінбедім	2019-09-05 16:41:46.710981	2019-09-05 16:41:46.710981	\N
65	30	302	Уй тапсырмасын сағат нешеге дейін жіберу керек? 	2019-09-06 07:09:31.901346	2019-09-06 10:28:42.084854	күндегі уақыт 20.00 де
66	29	312	№11 есепті түсінбедім	2019-09-06 10:48:13.515229	2019-09-06 10:48:13.515229	\N
67	28	325	Сәлеметсіз бе? Үй тапсырмасындағы #6 есептегі нейтралды дегеннің не екенін түсіне алмай жатырмын?	2019-09-06 11:43:42.986346	2019-09-06 11:43:42.986346	\N
68	29	288	1,2,4,5,6,7,9 есептердің шығарылуын білмедім	2019-09-06 12:41:14.987689	2019-09-06 12:41:14.987689	\N
69	31	321	Апай қазандыққа ауа үрлейтiн көрiк жасалды дедiңiз, көрiр деген қандай болады	2019-09-07 10:35:48.152587	2019-09-07 15:45:35.554267	жан жағында тесігі бар пеш \r\n
70	35	306	Ағай соңғы 9,10шы есептерде теңдеуде ягни жауабы шыгар кезде х-ті былай жібереміз ананы былай жібереміз деп,бірден сонда осындай жауап шыгады дейсіз.Сол жерлерге түсінбей қалдым.6,8есептердінде жауабын қалай шыққанын түсінби қалдым.Ал 7ші есепті мүлде түсінбедім.	2019-09-09 11:07:14.186152	2019-09-09 11:07:14.186152	\N
71	36	321	Сақтардағы мәйітті бальзамдау әдiсi деген заттарын қоса жерлеумен байланысты ма	2019-09-09 11:20:08.582936	2019-09-11 15:18:30.857287	Жок, бальзамдау деген мәйітті шірітпей сақтауға пайдаланылды. Заттарын қоса жерлеу ол діни наным сенім
73	44	301		2019-09-14 04:51:48.208213	2019-09-14 04:51:48.208213	\N
72	36	293	партизан согысы деген не	2019-09-09 12:46:25.678448	2019-09-17 12:35:45.086095	Белгілі бір тірек пункттерге шабуыл жасауды айтамыз 
74	50	315		2019-09-22 07:22:31.20457	2019-09-22 07:22:31.20457	\N
75	27	293		2019-10-02 17:15:36.550819	2019-10-02 17:15:36.550819	\N
76	36	293		2019-10-03 11:40:44.290458	2019-10-03 11:40:44.290458	\N
1	8	292	Бірінші сабақтағы тақырыпты түсіне алмадым	2019-07-19 20:32:42.503753	2019-08-31 13:51:06.42654	1465
48	23	284	Апай, 17 минуттағы оқиғаның баств себебін түсінбедім	2019-08-31 14:17:45.060744	2019-08-31 14:17:45.060744	\N
51	23	320	Материалдар болиминдегы кестеге нены толтырып журемиз	2019-09-02 19:52:46.744612	2019-09-03 01:28:13.511016	 "Трекер привычек" деп интернеттен іздесеңіз, қалай пайдаланылатыны бар. Ол сіздің қалыптастыра алмай жүрген әдетіңізді жасауға көмектесетін құрал.
50	6	300	Кіріспе сабақ ұнады	2019-09-02 16:18:45.401885	2019-09-03 01:28:27.856153	Рақмет!
49	23	288	Бүгінше үй тапсырмасы жоқ, ертеңнен бастап болады ма?	2019-09-02 15:27:16.14207	2019-09-03 01:28:45.654382	Ия, міндетті түрде 
\.


--
-- Data for Name: template_modules; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.template_modules (id, title, language_id, label) FROM stdin;
1	Шапка	1	header
2	Шапка kk	2	header
3	Footer	1	footer
4	Footer kk	2	footer
5	Главная страница	1	home
6	Главная страница kk	2	home
7	Общие шаблоны	1	common
8	Общие шаблоны kk	2	common
9	Курсы	1	courses
10	Курсы kk	2	courses
11	Новости	1	news
12	Новости kk	2	news
13	FAQ	1	faq
14	FAQ kk	2	faq
15	Регистрация	1	signup
16	Регистрация kk	2	signup
17	Авторизация	1	signin
18	Авторизация kk	2	signin
19	Аккаунт	1	account
20	Аккаунт kk	2	account
21	Восстановления пароля	1	reset
22	Восстановления пароля kk	2	reset
23	Комментарий	1	comment
24	Комментарий kk	2	comment
25	Правила	1	rules
26	Правила kk	2	rules
27	Домашки	1	hometask
28	Домашки kk	2	hometask
29	Landing	1	landing
30	Landing kk	2	landing
31	Уроки	1	lesson
32	Уроки kk	2	lesson
33	Курс Landing	1	course-landing
34	Курс Landing kk	2	course-landing
35	Мои вопросы	1	questions
36	Мои вопросы kk	2	questions
37	3 вопроса	1	feedback
38	3 вопроса kk	2	feedback
\.


--
-- Data for Name: templates; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.templates (id, label, template_module_id, title) FROM stdin;
3	courses	1	Курсы
4	news	1	Новости
5	faq	1	Вопрос-Ответ
6	rules	1	Правила
7	logout	1	Выйти
8	courses	2	Курстар
9	news	2	Жаңалықтар
10	faq	2	Сұрақ-жауап
11	rules	2	Ережелер
12	logout	2	Шығу
13	login	2	Кіру
14	login	1	Войти
16	copyright	4	Барлық құқықтар қорғалған.
15	copyright	3	Все права защищены.
17	courses_last	5	Новые курсы
18	news_last	5	Последние новости
19	courses_more	5	Все курсы
20	news_more	5	Все новости
21	courses_last	6	Соңғы курстар
22	courses_more	6	Барлық курстар
23	news_last	6	Соңғы жаңалықтар
24	news_more	6	Барлық жаңалықтар
25	empty	7	Не найдено
26	empty	8	Табылмады
27	courses_all	9	Все курсы
28	courses_all	10	Барлық курстар
29	news_all	11	Все новости
30	news_all	12	Барлық жаңалықтар
31	faq_title	13	Вопрос-Ответ
32	faq_title	14	Сұрақ-жауап
33	signin_title	17	Войти
34	signin_title	18	Кіру
35	signin_email	17	Электронная почта
36	signin_email	18	Пошта
37	signin_password	17	Пароль
38	signin_password	18	Құпия сөз
39	signin_button	17	Войти
40	signin_button	18	Кіру
41	signin_register_link	17	Регистрация
42	signin_register_link	18	Тіркелу
43	signin_forgot	17	Забыли пароль?
44	signin_forgot	18	Құпия сөзіңізді ұмыттыңыз ба?
45	signin_remember	17	Запомнить меня
46	signin_remember	18	Мені есте сақта
47	signup_signin_link	15	Войти
48	signup_signin_link	16	Кіру
49	signup_title	15	Регистрация
50	signup_name	15	ФИО
51	signup_phone	15	Номер телефона
52	signup_email	15	Электронная почта
53	signup_gender	15	Ваш пол
54	signup_birthday	15	Дата рождения
55	signup_password	15	Задайте пароль
56	signup_password_new	15	Пароль
57	signup_password_confirm	15	Подтверждения пароля
58	signup_button	15	Зарегистрироваться
59	signup_title	16	Тіркелу
60	signup_name	16	Аты-Жөніңіз
61	signup_phone	16	Телефон
62	signup_email	16	Поштаңыз
63	signup_gender	16	Жынысыңыз
64	signup_birthday	16	Туған күніңіз
65	signup_password	16	Құпия сөз
66	signup_password_new	16	Құпия сөз
67	signup_password_confirm	16	Құпия сөзді қайталаңыз
68	signup_button	16	Тіркелу
69	reset_title	21	Восстановления пароля
70	reset_title	22	Құпия сөзді қалпына келтіру
71	reset_button	21	Восстановить
72	reset_button	22	Жалғастыру
73	comment_text	23	Введите текст
74	comment_title	23	Добавить комментарий
75	comment_text	24	Текст
76	comment_title	24	Комментарий жазу
77	comment_button	23	Добавить
78	comment_button	24	Жазу
79	rules_title	25	Правила
80	rules_title	26	Ережелер
81	rules_content	26	<h3><strong>Курс қалай өтеді?</strong></h3>\r\n\r\n<p>Университет аясындағы ақпарат, тапсырмалар, тапсырманың есебін беру, сабақ кестесі, жаңалықтарды оқу ыңғайлы болу үшін, арнайы сайт (алдығы уақытта&nbsp;<strong>платформа</strong>) құрастырдық. Барлық сабақ тек сол платформа арқылы жүреді. Сілтемесі: https://shou.kz/</p>\r\n\r\n<p>Оқу басталатын күні, бізге жіберген e-mail почтаңызға, немесе телефоныңызға смс түрінде платформаға кіруге қажетті &laquo;құпия сөзі&raquo; бар хат жібереміз. Сондықтан Ақпаратты&nbsp;<strong>ДҰРЫС</strong>&nbsp;жіберу өте маңызды! Ақпарат қате жіберілген жағдайда, платформаға уақытылы кіргеніңізге жауап бермейміз.</p>\r\n\r\n<p>Айлық төлем жасап, қатысып жатқан қатысушылар, сіздер платформаға әр айға доступ аласыздар. Төлем жасалмаған жағдайда, келесі айда курс сізге қолжетімсіз болады!</p>\r\n\r\n<p>Кейін почтаңызға ешнәрсе келмейді. Барлық сабақ тек платформа аясында болады.&nbsp;<br />\r\nПлатформаға 3-тен артық техника құралдары арқылы кірсеңіз, курс қолжетімсіз болып қалатынын ескертеміз.</p>\r\n\r\n<p>Құрметті студент, курс пайдасын арттырып, Сіздің назарыңызды дұрыс бағытқа бұру мақсатында курстың арнайы ережелерін бекіттік.</p>\r\n\r\n<p>1. Төлем жасалған соң, оқу ақысы мүлде қайтарылмайды!<br />\r\n2. Біз сіздің жеке ақпаратыңызды қате жазғаныңызға жауапты емеспіз, сол үшін мұқият толтыруды өтінеміз.<br />\r\n3. Барлық сабақтар, тапсырмалар Астана уақытымен беріледі/тексеріледі.<br />\r\n4. Біздің мамандарға сағат 9:00-21:00 аралығында ғана сұрақ қоюға болады.<br />\r\n5. Курс кураторлары мен администраторларын жексенбі күндері мазалауға болмайды. Телефон арқылы хабарлама жазуға да.<br />\r\n6. Ақпаратты, тапсырманы толық оқу (түсінбеген жағдайда тағы екі рет қайталап оқу)<br />\r\n7. Тапсырмаларды уақытылы орындауыңыз керек.&nbsp;<br />\r\n8. Сылтау қабылданбайды<br />\r\n9. Басқа қатысушыларға немесе курс ұйымдастырушыларына дөрекі сөйлеуге, дініне, жынысына, жеке басына, намысына тиесілі сөздер айтуға болмайды.<br />\r\n10. Оқу материалдарын, журналды жүктеуге, таратуға болмайды. Барлығы авторлық құқықпен қорғалған!<br />\r\n11. Барлық сұрақтарыңызды what&rsquo;s app -қа xат түрінде жіберу (қоңырау шалуға, аудио жазба жіберуге болмайды)<br />\r\n12. Айлық төлем (5000тг) жасап қатысып жатқан студенттер әр айдың 25 дейін келесі айдың төлемін төлеп отыру қажет.&nbsp;<br />\r\n13. Әр орындалмаған ереже шарты үшін ескерту аласыз, 3 ескерту алған студент оқудан шығарылады. Ережелерін сақтамаған қатысушыларды, модератор ақшаны қайтармай курстан шығара алады.</p>\r\n\r\n<p>Студенттер саны көп болғандықтан, қарапайым, Гууглдан іздеп табуға болатын сұрақтарға жауап бермейміз. Түсінушілікпен қарауларыңызды сұраймын.&nbsp;<br />\r\nПлатформаға қатысты сұрақтарыңызды +7775 071 3837 осы номерге Ватсапқа ХАТ түрінде жазыңыз.</p>\r\n
86	account_button	20	Сақтау\r\n
85	account_button	19	Сохранить\r\n
84	account_title	20	Менің аккаунтым
83	account_title	19	Редактировать аккаунт
82	rules_content	25	Текст правил на русском
87	account_avatar	19	Загрузить аватар
88	account_avatar	20	Аватарды жүктеу
89	account_password_current	19	Текущий пароль
90	account_password_current	20	Қазіргі құпия сөз
91	courses_mine	5	Мои курсы
92	courses_mine	6	Менің курстарым
93	courses_mine_no	5	У вас еще нет курсов. Выберите курс который вы хотите приобрести и свяжитесь с администратором.
94	courses_mine_no	6	Курстарды сатып алу үшін администратормен хабарласыңыз.
95	course_not_bought	7	Вы не приобрели этот курс.
96	course_not_bought	8	Сіз бұл курсты сатып алмадыңыз.
97	hometasks	1	Домашние задания
98	hometasks	2	Үй тапсырмалары
99	not_given	27	Вы не сдали. Хотите сдать?
100	not_given	28	Үй тапсырмасын тапсырмадыңыз. Тапсырғыңыз келе ме?
101	title	28	Үй тапсырмалары
102	title	27	Домашние задания
103	resend	27	Пересдать
104	resend	28	Қайта жіберу
105	send_button	27	Выбрать файл
106	send_button	28	Файлды таңдау
107	task_send	27	Сдать домашнее задание
108	task_send	28	Үй тапсырмасын тапсырғыңыз келе ме?
109	task_view	27	Перейти к домашнем заданию
110	task_view	28	Үй тапсырмасы
111	title	29	Онлайн курсы на казахском языке
114	description	29	Увеличение эффективности, приобретение новых навыков, курсы развития
115	courses	29	Наши курсы
116	courses	30	Біздің курстар
117	more	29	Подробнее
118	more	30	Толығырақ‍
119	task	31	Домашнее задание
121	button	33	Оформить подписку на курс
122	button	34	Подписаться
123	program	33	Программа
124	program	34	БАҒДАРЛАМА
126	forwho_title	34	КУРС КІМГЕ АРНАЛҒАН
127	program_title	34	КУРС  БАҒДАРЛАМАСЫ
128	program_title	33	Программа курса
125	forwho_title	33	Для кого предназначен
129	lesson	33	Урок
130	lesson	34	Сабақ
131	price_title	33	Цена курса
132	price_title	34	Курс бағасы:
133	name	33	Имя, фамилия
134	name	34	Аты жөніңіз
135	phone	33	Телефон
136	phone	34	Телефон
137	button	33	Подписаться
138	button	34	Жазылу
139	call	33	Мы вам перезвоним!
140	call	34	Сіздің өтініміңіз қабылданды
141	adress	7	+74561519555, Нур-Султан, адрес
142	adress	8	+74561519555, Нур-Султан, адрес
143	question	31	Что-то не поняли? Спросите.
144	question	32	Түсінбей қалған жерлер болса немесе сұрақ\r\nтуындаса
145	title	35	Мои вопросы
146	title	36	Менің сұрақтарым
147	empty	35	Вам еще не ответили
148	empty	36	Сұрағыңыз жауабын әлі алмады
149	first	37	dasdadasdasd
150	second	37	asdadsd
151	third	37	qwdasdad
155	title	37	Обратная связь
156	title	38	Кері жауап
152	first	38	Сабақ ұнады ма?
154	third	38	Сабақ қиын болды ма әлде оңай болды ма?
153	second	38	Сабақ қызықты өтті ме әлде қызықсыз болды ма?
120	task	32	Үй тапсырмасы
113	description	30	Кез келген пәннен ҰБТ-ға арзан бағада дайындала аласыз
112	title	30	Қазақ тіліндегі ҰБТ-ға дайындық курстары
\.


--
-- Data for Name: user_choices; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.user_choices (id, multiple_question_id, multiple_answer_id, user_id) FROM stdin;
1	1	2	291
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.users (id, email, encrypted_password, name_surname, phone, gender, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, birthday, avatar, admin) FROM stdin;
302	ansa.2003@mail.ru	$2a$11$jFDLhOLuudjRd0YZ8yJQgeoIwgjce0tRxf.6DTfKK3HbUgiM0Rjcy	Жарылгасын Ансаган	87712077361	2	\N	\N	2019-09-02 15:19:36.738662	2019-08-31 13:21:35.884265	2019-09-02 15:19:36.745076	2003-02-24 00:00:00	\N	f
304	aknazzasulanova@gmail.com	$2a$11$mY/TQ3IZ.u4jY7id4KDoleS7XUs9QCeLoU18SMmwMz0ey7tfe8Nam	Жасуланова Акназ	87783988328	2	\N	\N	2019-09-02 15:20:31.633756	2019-08-31 13:30:58.380847	2019-09-02 15:20:31.635642	2003-03-05 00:00:00	\N	f
301	bayakhmetova0407@gmail.com	$2a$11$.lAp4zvoeK53Es0KKo8SDOSUIRSIqzjukB1XPInUP/RaHCXGGgxU6	Баяхметова Мөлдір	87074273732	2	\N	\N	2019-09-02 15:14:00	2019-08-31 13:19:43.165579	2019-09-02 15:20:43.353542	2002-07-04 00:00:00	\N	f
318	baktygalieva.a02@mail.ru	$2a$11$PKsQqjHzOkDqHEn05N8VSuvpVlGiKViWH/sXAJbcOfojTIPDxu3x.	Альфия Бақтығалиева	87752207102	2	\N	\N	2019-09-02 17:40:36.079665	2019-09-01 08:30:17.373333	2019-09-02 17:40:36.083094	2002-12-24 00:00:00	\N	f
326	ualieva.dinara79@gmail.com	$2a$11$x1npq2WO.mV82TpeHkYhTuLgG5DcEq3wm0wcVjura8Sd4mkIUpH3C	Айшагүл Торғайбай	87011517016	2	\N	\N	2019-09-03 13:00:18.539556	2019-09-02 15:10:01.556947	2019-09-03 13:00:18.541152	2003-03-21 00:00:00	\N	f
327	raihantnalieva@gmail.com	$2a$11$7U3pHUS91yleWZbaX8S0T.HxKH6lUL/W1gI00Oem5qLE7lt/AZaZq	Тыныштыбаева	87771424546	2	\N	\N	2019-09-03 16:29:36.366913	2019-09-02 15:29:17.54317	2019-09-03 16:29:36.368944	2020-05-13 00:00:00	\N	f
335	absamatdaulet44@gmail.com	$2a$11$uqjPkWznl/fWXI3Zgump..rmesGwxbmw.es6OlYQYfeGg8vfWZNqu	Daulet Absamat	87470780838	1	\N	\N	\N	2019-09-23 11:11:46.762453	2019-09-23 11:11:46.762453	2002-12-09 00:00:00	\N	\N
338	asem061093@gmail.com	$2a$11$9.80Bcde/c.hNG.ZO87C/eIApQxNbZqw.ArMhX/7.y6UoGaIIypsq	Бану Абишбекова	87077032094	2	\N	\N	\N	2019-09-27 11:49:33.469599	2019-09-27 11:49:33.469599	2003-07-11 00:00:00	\N	\N
346	zadigergulzhaz@gmail.com	$2a$11$SI9/eSJoruVdY6H95ccvA.ExmNLKwTDnZmPeBRWlXMnjrZVXXhXUG	Жәдігер Гүлжаз 	87472384159	2	\N	\N	\N	2019-10-16 10:40:54.467036	2019-10-16 10:40:54.467036	2020-03-15 00:00:00	\N	\N
356	kuralay.maksut@bk.ru	$2a$11$vIArsgls73rfn3y1q5Ammen87Jurz/fXjyBnTKlNg/PJxMnth7x36	Құралай	87051129206	2	\N	\N	\N	2019-10-19 16:59:07.446284	2019-10-19 16:59:07.446284	2018-02-17 00:00:00	\N	\N
365	asem.ukibaeva@gmail.com	$2a$11$2Sv6nrNt0pPH3BDpCN3FcuWj1dFWgP1qCGAgP1eSFVF.YF7MxUVlW	Үкібаева Әсемгүл	87781194828	2	\N	\N	2019-10-21 10:14:38.759645	2019-10-21 10:01:15.472419	2019-10-21 10:14:38.76098	2019-11-05 00:00:00	\N	\N
306	albinaasylbek@icloud.com	$2a$11$eSoZGYMo/G/E.YKntt7oYOcYRZFqTsIB2DHqYhNrcP8KgRNJRSKly	Альбина Асылбеккызы	87476040185	2	\N	\N	2019-09-01 06:54:00	2019-08-31 14:02:51.97874	2019-09-02 14:50:13.399913	2003-02-19 00:00:00	\N	f
307	makenovasaya4@gmail.com	$2a$11$gMHdIjWVzcN2VppSkLR7I.vxKBx9E8UTPPBnHsQOIUGEMoHOzrOpe	Макенова Саяжан	87757612695	2	\N	\N	2019-09-02 15:04:56.241013	2019-08-31 14:05:01.432563	2019-09-02 15:04:56.242868	2003-03-10 00:00:00	\N	f
305	a.guldana0305@gmail.com	$2a$11$3p.t44vXBtlUcyvWDgrqyuPQNCl4WudhWQe9DU6.mT5Nz1f1xyTdW	Гүлдана Амангелдиева 	87023852013	2	\N	\N	2019-09-02 16:37:58.889388	2019-08-31 13:57:10.141968	2019-09-02 16:37:58.892085	2003-05-03 00:00:00	\N	f
319	anvsvs62@gmail.com	$2a$11$vQagt/22wElLtq59EEjVDuFVh2o3qZGtv3g.hsQXpqFJQfSsz5v.2	Ермекбаева Анель 	87000000444	2	\N	\N	2019-09-02 17:35:25.049213	2019-09-01 09:40:42.230111	2019-09-02 17:35:25.050755	2003-09-23 00:00:00	\N	f
328	bakkalinurseyit2020@gmail.com	$2a$11$0RVQLFncPfe7qJF2.mJgv.K6qujd/9KcBvJ6.EGXUCsJGUTrjoHmy	Нұрсейіт Баққали	87477101816	1	\N	\N	\N	2019-09-07 09:39:33.926438	2019-09-07 09:40:12.719194	2001-07-28 00:00:00	\N	f
308	salta-i@mail.ru	$2a$11$PiK0x/7ZYTrXr2GO5ZEH/OnLrLQu4HFHPVefkHQFSQ2Yc5iejIIsG	Суннатулла Гульназ	87079698431	2	2072370bc1841eab5f966482e213226ac25083667d707e3585a6635e463894fa	2019-09-08 11:33:58.020495	\N	2019-08-31 14:05:52.889028	2019-09-08 11:33:58.021705	2019-12-11 00:00:00	\N	f
336	asiya1009@mail.ru	$2a$11$F88fzb7iTu34lP27JaGAAur4tvguIyP3qj/zbsgWv6xexuJWXf5dy	Адылханова Асия Ерлaновна 	87473331936	2	\N	\N	\N	2019-09-24 15:22:38.564888	2019-09-24 15:22:38.564888	2003-09-10 00:00:00	\N	\N
339	aruzhan.alibaeva.03@gmail.com	$2a$11$idr9PZ5Qoac5lpCAk/rksuZd/t2o8YXO6fEyiy2Z6p27r3hONXYCS	Әлібаева аружан 	+77776703137	2	\N	\N	\N	2019-09-27 14:53:05.628163	2019-09-27 14:53:05.628163	2003-03-04 00:00:00	\N	\N
347	moldirbaijanova03@gmail.com	$2a$11$.Qh2X7Qme1/T132GeIrGe.xNy0UundX4Fkun2n7/l3wcn4DyWi0gW	Байжанова Молдир	87714915099	2	\N	\N	\N	2019-10-18 15:13:34.330261	2019-10-18 15:13:34.330261	2003-08-10 00:00:00	\N	\N
348	amina.turmagambetova@icloud.com	$2a$11$FX42CV5P8TaSaA5eNyHxZuCAJ5/sMEBnfKwAhRrz75zryXSTqhjeq	Тұрмағамбетова Амина 	87073251702	2	\N	\N	\N	2019-10-18 15:33:19.145551	2019-10-18 15:33:19.145551	2003-01-14 00:00:00	\N	\N
357	psagimbayeva@mail.ru	$2a$11$IerWKHaSrU3BuygJaDM7EOiWp4xAQrd7eTmisQVpyPKaR985zRyrS	Перизат Сагимбаева	87758678586	2	\N	\N	\N	2019-10-20 05:58:33.04361	2019-10-20 05:58:33.04361	2002-12-13 00:00:00	\N	\N
366	aruzhanamandykova157@gmail.com	$2a$11$eCYEGoLsmyAtnXlIxdCOWu.Wb6vSeQ//81iG1inb5BWD584wEO4ra	Аружан Амандыкова 	87470735240	2	\N	\N	\N	2019-10-21 12:40:47.601448	2019-10-21 12:40:47.601448	\N	\N	\N
321	inkarayash0207@gmail.com	$2a$11$GBuQTqfSXPCAp21M85QpIO0478JXoDxNsW7JfLjWtzxEJu.cEDobm	Аяш Іңкәр 	+77762201116	2	\N	\N	\N	2019-09-01 10:14:10.793864	2019-09-02 14:11:24.797782	2003-07-02 00:00:00	\N	f
309	m.erlikovna@mail.ru	$2a$11$URgZyV61ok7.4XdJ99DYhOhlIbesIsBVwho/0ZMFRzv8rVHb.2koy	Мерей Ерликкызы	87006435978	2	\N	\N	2019-09-03 15:06:16.204907	2019-08-31 16:37:27.343481	2019-09-03 15:06:16.206566	2003-06-15 00:00:00	\N	f
320	nazok.03@mail.ru	$2a$11$loLKARvMTbBFgJc2qEY14.JsTbxQR/7REDwBQIbQqdtMSah9F2ymK	Назерке Абуова	87024898803	2	\N	\N	2019-09-05 13:18:34.422872	2019-09-01 10:11:25.555953	2019-09-05 13:18:34.425778	2003-03-20 00:00:00	\N	f
329	r.danagul03@gmail.com	$2a$11$zoT2IxzsdtUA0Pd281CCgOTbaukf17QseHam2S4nj9qIEqUrolHt.	Рашитова Данагүл	87084906302	2	\N	\N	\N	2019-09-08 11:50:30.655205	2019-09-08 11:50:30.655205	2019-09-08 00:00:00	\N	\N
337	tanirbergenov2803@gmail.com	$2a$11$Qp5z8jEzyKh9idlj7gL2q.yntR1hlhqVuo2yuqs1V06To2SzSOUEu	Alina tanirbergenova 	87762735335	2	\N	\N	\N	2019-09-25 09:26:01.170182	2019-09-25 09:26:01.170182	2003-03-28 00:00:00	\N	\N
340	aset18092004@gmail.com	$2a$11$1gxLXV1RhWfbab0a6DfgKO9znho405kcxTXV2kRDp6mN0T8W/0tZ6	Мерей	87781405802	2	\N	\N	\N	2019-09-28 12:41:43.749537	2019-09-28 12:41:43.749537	2002-12-20 00:00:00	\N	\N
349	aselok02@mail.ru	$2a$11$AInOK8Tic6SGW6SfHWa5feh5h6powCq5tsthKU8SBH2QEi35n5xp.	Батыргали Асель	87757504102	2	\N	\N	\N	2019-10-18 17:01:52.434514	2019-10-18 17:01:52.434514	2002-10-04 00:00:00	\N	\N
358	dsavutbek@bk.ru	$2a$11$E1hpZMIJN8UP3AmOZPevI.VOSjDQYxLCxyyFhDXt8NiS8efMxTA/a	Савутбек Даяна	87474650563	2	\N	\N	\N	2019-10-20 06:53:25.172694	2019-10-20 06:53:25.172694	2003-06-09 00:00:00	\N	\N
359	gulim2108@outlook.com	$2a$11$Im586fSyrsZylxXr0pN79eCoG5vY/gLLDO3zSS3zpymNRNoZh4Via	Кабдиллаева Гүлім	87079425482	2	\N	\N	\N	2019-10-20 07:08:55.46846	2019-10-20 07:08:55.46846	2003-08-21 00:00:00	\N	\N
367	clover03@mail.ru	$2a$11$b5jrsQUyBOgmvc23MZF6JOE1.RCa0dY4dVFkp.MM7RVfevjce6UMW	Каматаева Дильназ	87755646270	2	\N	\N	\N	2019-10-21 14:02:11.877702	2019-10-21 14:02:11.877702	2003-09-27 00:00:00	\N	\N
310	guldanakenesarieva3@gmail.com	$2a$11$S/jfhqcEPwGFj14biaiElOz72qJbc1tO0zfeM1yrbnp361Gd3OtSy	Гүлдана Кенесариева	87479199574	2	\N	\N	\N	2019-08-31 18:00:10.809331	2019-09-02 14:12:18.758615	2003-07-06 00:00:00	\N	f
322	naztemirbaj@gmail.com	$2a$11$TPlADPgB7GiWi2OKOfdSNOy9klSDh1J4p7V04iiOHRLs9n5a0e7FK	Темірбай Назгүл	87714786614	2	\N	\N	\N	2019-09-01 14:27:51.411253	2019-09-02 14:45:45.366812	\N	\N	f
330	slamdzhanovad@gmail.com	$2a$11$mZTokt408IB9mBffV1p6.ekVewthMVuLkZhpIUQjWpo4fUeBzf8E6	Даяна	87474678004	2	\N	\N	\N	2019-09-13 01:01:51.658146	2019-09-13 01:01:51.658146	2003-08-21 00:00:00	\N	\N
341	nazikon-1996@mail.ru	$2a$11$1MNu3ZS4Y6pF780ZDKz0jOrrFeXhWTILcAMw4zHpV0Np87vLXxIJO	Мұхамбетжанова Нəзік Меңдіғалиқызы	87715171484	2	\N	\N	\N	2019-09-28 15:39:30.900214	2019-09-28 15:39:30.900214	1997-03-24 00:00:00	\N	\N
350	altmbekova02@mail.ru	$2a$11$VUIMIyY7G.lVcdavnIQ39OUy1uV8OLABSvukhMZ2KEbuy8INUq.6u	Алтынбеккызы Венера	87479548502	2	\N	\N	\N	2019-10-19 02:13:54.489727	2019-10-19 02:13:54.489727	2002-11-22 00:00:00	\N	\N
360	janelya04@gmail.com	$2a$11$Ab4LvrmvFWWtdyesl6aFo.C7HadT9SBBZR2GlZ1c45hBFBmRruKOm	Жанель Орал	87474319151	2	\N	\N	\N	2019-10-20 17:49:36.830079	2019-10-20 17:49:36.830079	2004-05-29 00:00:00	\N	\N
368	1003dilnaz@gmail.com	$2a$11$GCF478w/ZtljgD4NBgGcDuemAmtxspBucz931R1jo2hku28nyld96	Дильназ Аманжол	87752165984	2	\N	\N	\N	2019-10-21 15:36:09.782098	2019-10-21 15:36:09.782098	2002-03-10 00:00:00	\N	\N
311	saduahastansholpan@mail.ru	$2a$11$xqwtzQ/e8qi8n01YTFsAje/7y/eoGpWa508F5WF32XlG.BxsWxwr2	Таншолпан Садуахас 	87718577280	2	\N	\N	2019-09-01 17:00:00	2019-08-31 18:57:12.450041	2019-09-02 14:40:05.659698	2003-03-27 00:00:00	\N	f
323	akerkesujindik@gmail.com	$2a$11$5ivXn0uKqONx./9yq89SJOV.wXjF27nfiav7qgfRzL9HiPSBpSRSi	Акерке Суйидик	87083361215	2	8ad56f3c2d6be26509ea9d123f343504fb8f888e626764d032328e361e7ba54d	2019-09-09 12:28:00.430832	2019-09-09 12:28:06.021706	2019-09-01 16:55:02.814121	2019-09-09 12:28:06.022916	2002-09-11 00:00:00	\N	f
331	rai4ok_87_rr@mail.ru	$2a$11$jMj6ZRwrNMsE2VslbqUffOGvgZTSyg3aO5LaiPbmcYOmnnUuR1KT6	Онайбаева	87014231299	2	\N	\N	\N	2019-09-21 18:43:57.866693	2019-09-21 18:43:57.866693	1987-06-09 00:00:00	\N	\N
342	walkar_2002@bk.ru	$2a$11$qhSyn1kiVuNEzjf3iCf65.Tj8j.B5/c7bbpv4TgreAZG7XBSOs9sm	Касым	87025744223	1	\N	\N	\N	2019-09-29 09:15:26.744023	2019-09-29 09:15:26.744023	2003-07-23 00:00:00	\N	\N
351	qaraqatdaurenovna@gmail.com	$2a$11$tZKJ/kelbQmhWbhPpj/UpeZQXrowXAHOp5snmBNVACEelztPaLylO	Qaraqat Daurenovna	87075527803	2	\N	\N	\N	2019-10-19 06:31:54.824363	2019-10-19 06:31:54.824363	\N	\N	\N
352	blood_2505@mail.ru	$2a$11$1llD625obnqtmYuVfJPMa.09l1fiFAu9fwLm98idfR302z/XCsCE.	Aruzhan Kalibek	87758861668	2	\N	\N	\N	2019-10-19 06:35:27.426393	2019-10-19 06:35:27.426393	2003-01-02 00:00:00	\N	\N
361	khimadinova@mail.ru	$2a$11$qg8rQFICgTd/WYPxKVKqfuUbgWwmxhcBP2Wr3fXO.x5ixIEd2IHuK	Химадинова  Алтынзер 	87053804010	2	\N	\N	\N	2019-10-20 18:34:25.959867	2019-10-20 18:34:25.959867	2004-05-11 00:00:00	\N	\N
369	mamyrovva02@mair.com	$2a$11$DNcbUQRPgo9y9.SxxdsmNesY38LgQuO7/2Qh13iXQ2QAGdwkTErZm	Айсұлу	87711434868	2	\N	\N	\N	2019-10-22 01:53:19.362011	2019-10-22 01:53:19.362011	2002-12-05 00:00:00	\N	\N
370	mamyrova02@mail.com	$2a$11$Tdjo1byjAT0Hti08gLX5O.1rUI1RdSy71IYsV96qhMX9ZWPKjtv4S	Айсұлу Мамырова	87751939441	2	\N	\N	\N	2019-10-22 02:01:11.37657	2019-10-22 02:01:11.37657	2002-12-05 00:00:00	\N	\N
312	dauletova.2003@bk.ru	$2a$11$XzjI/stAdRjJnA8JE7JA8.tBYuTAEPzOO/qQEVWXfNmiXhuG068oi	Даулетова Дильназ 	+77054681023	2	\N	\N	2019-09-03 02:18:23.780793	2019-09-01 01:55:58.699199	2019-09-03 02:18:23.782958	2003-08-11 00:00:00	\N	f
324	sofiyaqaym@gmail.com	$2a$11$paCzbTknZtfw.XUscJJu7.j9t9U3G4n/S5ddOMCxhXJIZ1lGffXJ2	София Қадым	87002549507	2	\N	\N	2019-09-04 11:53:00.9828	2019-09-01 19:41:21.88871	2019-09-04 11:53:00.984423	2002-12-06 00:00:00	\N	f
332	taushanova2003@mail.ru	$2a$11$ik2wJq06lmSPBgQhVGkEfueFAv9E2crPfS0i.CJKeS0dKuENuWFpy	Таушанова Айжаным 	+77756821376	2	\N	\N	\N	2019-09-22 11:00:27.788059	2019-09-22 11:00:27.788059	2003-01-05 00:00:00	\N	\N
343	akzarkynnrlankyzy@gmail.com	$2a$11$l.bYhqjtBxw7qbhUicorXu0409OTNyOM.5XWr.DZMl7CwWr8Hb6K6	Сарбаева	87086941503	2	\N	\N	\N	2019-09-29 15:34:53.477312	2019-09-29 15:34:53.477312	2003-08-20 00:00:00	\N	\N
353	sayawka.031@mail.ru	$2a$11$S0s6tfhivGA18Jl8uXXNEO0sMMG6Z4yWEHo1WqQuDVKIygJB/mtdS	Сая	87471830434	2	\N	\N	\N	2019-10-19 09:31:28.874171	2019-10-19 09:31:28.874171	2003-04-04 00:00:00	\N	\N
362	dinaradastan12@gmal.com	$2a$11$BRfDPdTUJl2GbDxP3toYDu30CfCgBVqkQg0jsFYcTKujxU.vNg1TW	Динара Куанай	87056025515	2	\N	\N	\N	2019-10-20 19:35:03.221681	2019-10-20 19:35:03.221681	2002-12-24 00:00:00	\N	\N
371	narsultanasayia.@gmail.com	$2a$11$IOnihKhtfZkhZ55PceRCK.BeAmfiOr4XK7SWfXTCnj6IZW.ThwUVW	Асия	87752868251	1	\N	\N	\N	2019-10-22 12:11:35.046017	2019-10-22 12:11:35.046017	2003-05-17 00:00:00	\N	\N
325	ss043086@gmail.com	$2a$11$mgZuHUkhLNReZgznzZJhTOCabfDGyYdI5Ed3MkWht.3YOpiJWcrDG	Тоғжан Жұмаділла	87079184437	2	\N	\N	\N	2019-09-02 09:57:22.044868	2019-09-02 14:53:14.363573	2002-10-09 00:00:00	\N	f
315	koskhanova26@icloud.com	$2a$11$FyAjCO40VrAq/.J98JIsIO3DxJsNDPMnqjSkqzjTEwePIbG1xCBYC	Koskhanova Aigerim	87479477149	2	\N	\N	2019-09-02 15:14:37.558282	2019-09-01 07:13:45.48517	2019-09-02 15:14:37.559729	2003-04-26 00:00:00	\N	f
314	zhumamuratovaamina@gmail.com	$2a$11$/PgZyM8Gx2wGl/yf3yJyUenD9tHlJAXNf9b0oXzJtffMXILaZDHpG	Жұмамұратова Амина Серікқызы	87771422712	2	\N	\N	2019-09-02 17:38:53.860661	2019-09-01 07:06:29.241151	2019-09-02 17:38:53.862118	2003-08-05 00:00:00	\N	f
313	zhansaya021009@icloud.com	$2a$11$cAPr3xnec93BVSS0FLmaPu7HsVZv/tWbHkgZWvpkyP2QG214jNZpq	Сабырғалиева Жансая	87025374217	2	\N	\N	2019-09-05 16:35:05.351342	2019-09-01 07:05:50.672491	2019-09-05 16:35:05.353008	2002-10-09 00:00:00	\N	f
333	rbotayev@bk.ru	$2a$11$x0zN/PvHN9qwRgkfGa6r5eNvpwnyKRdzEumVE7aeJuSFHPCE8BhMe	Dastan 	87755817595	1	\N	\N	\N	2019-09-22 12:46:27.980388	2019-09-22 12:46:27.980388	2001-10-02 00:00:00	\N	\N
344	uldana150902@gmail.com	$2a$11$xHkbzhQlH8.JuK/PbiBx0ODnR38EeT4.uAO/Ja./Yr5hNyHv9ZGeO	Баржақсы Ұлдана Алмасбеккызы 	87004091500	2	\N	\N	\N	2019-09-30 10:37:31.801922	2019-09-30 10:37:31.801922	2002-09-15 00:00:00	\N	\N
354	dosalieva.nargiza@icloud.com	$2a$11$XV9LapMXGDCWvanA7R7yueW7r8RTkBwlc82GfTQF7TElYDkOr8W7i	Досалиева Наргиза Канабековна	87769126552	2	\N	\N	\N	2019-10-19 11:38:44.958476	2019-10-19 11:38:44.958476	2003-07-08 00:00:00	\N	\N
363	tleubergenovaaa03@gmail.com	$2a$11$0X1qjLopbe2KyCEfPrDmg.qAQ/DcaCbO3k2lAeI4FkJg1G7gjmHZ.	Тлеубергенова Асем	87773940074	2	\N	\N	\N	2019-10-21 03:34:41.565901	2019-10-21 03:34:41.565901	2003-03-08 00:00:00	\N	\N
372	zhasmina.2003@mail.ru	$2a$11$F56jYZteM5fHMbt/kqD0R.AuoTu4koGhZQ.bfeCLR7yXf.Avw3kOu	Кожабай Жасмина	87082661721	2	\N	\N	\N	2019-10-24 16:37:08.77969	2019-10-24 16:37:08.77969	2003-04-03 00:00:00	\N	\N
280	ospanmaysa@gmail.com	$2a$11$N/0qMiw4r2/pbxmREOHsI.HRHlqwNEHoSKBshyeC00rYaLWwpLWf2	Майса Оспан	+77085641342	2	\N	\N	2019-08-13 18:08:23.81659	2019-08-13 18:06:05.808944	2019-08-13 18:08:23.81872	2003-02-01 00:00:00	\N	\N
281	asankyzyaitolkyn@gmail.com	$2a$11$fEPMlxH0FysAlXXyrcPh1epeMycncxi2SJX3nqPIh3A.aaxhjdzPe	Asankyzy Aitolkyn 	87002956406	2	\N	\N	\N	2019-08-14 07:31:21.95194	2019-08-14 07:31:21.95194	2019-10-17 00:00:00	\N	\N
282	naztemirbai@gmail.com	$2a$11$QPZggMarmVYLw.KmZDcsXeUnM9L5aLGH1BKEMtIEyluyk7TCBs9YO	Темірбай Назгүл	87714786614	2	\N	\N	\N	2019-08-30 16:56:27.628254	2019-08-30 16:56:27.628254	2003-06-07 00:00:00	\N	\N
287	abdikarimovadi@mail.ru	$2a$11$mOsIHqIEThmZuT87SONwIeJjR1C24B4IVdV4Q/HEPojxlinf0DpoO	Абдикаримова Дильназ Бекзатқызы	87712063838	2	\N	\N	2019-09-08 17:15:41.082669	2019-08-31 11:29:59.050224	2019-09-08 17:15:41.084196	2003-07-27 00:00:00	\N	f
289	aigerim.kuzenbaevaa@mail.ru	$2a$11$JABhUvS/q0PtI/PAsAnZX.FhY5.JTg64DtsE.HU7sbmqwNFV5EBDG	Кузенбаева Айгерим	+77475324009	2	\N	\N	\N	2019-08-31 11:34:50.22592	2019-08-31 11:34:50.22592	2002-08-20 00:00:00	\N	\N
300	sanimgul.sakenkyzy@mail.ru	$2a$11$P4oheDUP07c3z21fUl051OB0R6tJ/DcVOLRqJEa1LRU08LT0zd5/O	Сəнімгүл Жақсылық	87029788235	2	\N	\N	\N	2019-08-31 12:49:12.815078	2019-09-02 15:00:04.662586	2002-06-02 00:00:00	\N	f
316	dariamze@gmail.com	$2a$11$tHWwlFIiVF9H5fku7.Mo1uuH3/Yxu91gTRDP9aO2PUWSCWE2PU4KK	 Әмзе Дариға	87756090543	2	\N	\N	\N	2019-09-01 07:31:13.451507	2019-09-09 09:49:27.806278	2003-09-18 00:00:00	\N	f
298	kamshat_7578@mail.ru	$2a$11$MS8mvKeS1PTZ3qJMKGInW.ASr7/Mf0J1NzWKQOqs9I6La8anAdzwK	Асет Даяна	87028964518	2	\N	\N	2019-08-31 14:43:00	2019-08-31 12:25:31.125372	2019-09-02 15:00:24.874426	2003-12-18 00:00:00	\N	f
291	soundsnick@gmail.com	$2a$11$5roedTh8x178H7aNq86fkexiT3otcrOlpajEAtrDFtN3N03zcR4by	Ерназар	87052275715	1	\N	\N	\N	2019-08-31 11:40:59.388719	2019-08-31 11:40:59.388719	2001-02-05 00:00:00	\N	t
296	armansj@gmail.com	$2a$11$B3teO8wU35zg47UdFjOGIepTPf4q57fhkDYTd2xfuSAWxcr0IbrdK	Арман Асқаров	87083586935	1	\N	\N	\N	2019-08-31 12:03:22.217601	2019-08-31 12:03:22.217601	1993-08-31 00:00:00	\N	\N
285	nuraina.togaeva003@gmail.com	$2a$11$21jTUL67KS3CMqb4C0TvNeYqq2rD0.9xX5Y67RctACGdLcgWjZXdS	Тоғай Нұрайна	+77753120720	2	\N	\N	2019-09-13 17:24:19.904437	2019-08-31 11:26:58.805333	2019-09-13 17:24:19.906385	2003-01-06 00:00:00	\N	f
292	kuandykovaaibota2003@gmail.com	$2a$11$AdAGpKNIcPNRJuMpc0E4O.Ep.17Pr6AsHwiVVG39FPWcihRG5q0tS	Айбота Қуандықова	87716006832	2	\N	\N	\N	2019-08-31 11:42:44.944319	2019-09-02 14:13:11.444966	2003-11-10 00:00:00	\N	f
334	alseytova33@gmail.com	$2a$11$B5/7Lrk8YcG9AjudPf28vutiTyf4PJWmM8dx65CSZgpka7j291Ta.	Алсейт Жансая	87085769065	2	\N	\N	\N	2019-09-23 05:11:44.198535	2019-09-23 05:11:44.198535	2002-08-26 00:00:00	\N	\N
317	azhar.003@mail.ru	$2a$11$2lPayyKz4uZIEyCaDqs1we4zZL9CC1tQylEoro.m55sWepRqNbgH2	Қаблаева  Құралай	87759254167	2	\N	\N	\N	2019-09-01 07:51:08.531228	2019-09-02 14:15:30.221009	2003-10-10 00:00:00	\N	f
345	kadirjanasel2003@gmail.com	$2a$11$nVXp8S5iqcHh4j5oIXECrOcW0O2tijAoW4F9dcIsqhQ8fRZluqSHO	Асель Кадыржан	87766038650	2	\N	\N	\N	2019-10-01 14:10:22.488023	2019-10-01 14:10:22.488023	2003-03-12 00:00:00	\N	\N
294	dildabekovabalnur@gmail.com	$2a$11$mEonyV58FmeBtHYi/J45dOgtXgIsu6RgcSxYVwqs8Z5.NBa7Hasfe	Ділдабек Балнұр 	87766626246	2	\N	\N	\N	2019-08-31 11:50:24.058832	2019-09-02 14:17:54.916364	2002-10-23 00:00:00	\N	f
355	mikoalinurov@gmail.com	$2a$11$8eXh0BQY7M0XYWxWutzzC.RN1XrvGFF5SPEoP/Vo0tTDcZDJByMY.	Мирас Иембергенов	87004333928	1	\N	\N	\N	2019-10-19 14:19:07.985283	2019-10-19 14:19:07.985283	2003-01-29 00:00:00	\N	\N
364	ekonai-03@mail.ru	$2a$11$KsurZUTElpHKBLoJskl9sOc41Rp7BZSwp7wRw1Y1/0XKrtBK22lWG	Ернар Нарышов	87029922857	1	\N	\N	\N	2019-10-21 06:00:51.238263	2019-10-21 06:00:51.238263	2003-02-11 00:00:00	\N	\N
373	amanbekrauanuly15@gmail.com	$2a$11$gt8StJe25rrUnfMJDTXF.uHhNwKM4ovnQiVIRDs69qbG22IxryUsy	Аманбек Қойшыбаев	87716896466	1	\N	\N	\N	2019-10-25 08:43:02.976593	2019-10-25 08:43:02.976593	2005-08-02 00:00:00	\N	\N
286	guljainaaiaganova@gmail.com	$2a$11$W5fPD4I9tms9QpVehdWNg.Kfj94nZiwetRWuLr9SiEW1/WaFLBDpi	Аяганова Гулжайна	87713017064	2	\N	\N	\N	2019-08-31 11:28:37.691052	2019-09-02 15:03:58.873719	2003-01-25 00:00:00	\N	f
290	batimasabitova@gmail.com	$2a$11$aEv.oqEw3sTg0Ajzi5xb3uln5FCReKOxy/NQdvWlZunQf5tNI76Hq	Сабитова Батима	87022804385	1	e36606ee50404a4805798f299d385ae4668951cb4cdc8fffa7d6837df28e7fac	2019-09-02 15:10:16.391269	\N	2019-08-31 11:35:45.669719	2019-09-02 15:10:16.392508	2003-02-17 00:00:00	\N	f
288	islamkojaadilov@gmail.com	$2a$11$CRflfwmCyQVlw1S8Y35qN.SNjPa11bPKWLlxWI9H3JsdePwzvaW.O	Адилов Ислам	87765757778	1	\N	\N	2019-09-02 15:17:10.576713	2019-08-31 11:30:09.842593	2019-09-02 15:17:10.583628	2002-09-08 00:00:00	\N	f
295	dayrenbai03@gmail.com	$2a$11$WnKyc19cJcExl2iXSTu1SuGd1GG5.018FztwWNyLdZu7vXVB4gv.S	Арайлым Дауренбай	87052347874	2	\N	\N	2019-09-03 12:46:11.993398	2019-08-31 11:52:45.318882	2019-09-03 12:46:11.995076	2003-07-02 00:00:00	\N	f
284	bekzatzhanysbay@gmail.com	$2a$11$pNjzwlAhpIdFoHyJe9WJr.d7FOUHgge1jaoq1XbqBVBMAB3bGKMJi	Бекзат Жанысбай	87471086530	1	\N	\N	2019-09-03 15:55:18.463077	2019-08-31 11:15:36.992487	2019-09-03 15:55:18.465004	1993-02-08 00:00:00	\N	t
293	symbatarih@gmail.com	$2a$11$nD0heO5P0oBgzodE5unkL.K5fwstzh4pt62gjoJQueK3c9g.lK66K	Тарихқызы Сымбат	87020687340	2	\N	\N	2019-09-04 13:27:49.402743	2019-08-31 11:49:45.181689	2019-09-04 13:27:49.404477	2019-07-10 00:00:00	\N	f
\.


--
-- Name: advantages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.advantages_id_seq', 4, true);


--
-- Name: buys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.buys_id_seq', 334, true);


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.ckeditor_assets_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.comments_id_seq', 48, true);


--
-- Name: cons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.cons_id_seq', 3, true);


--
-- Name: course_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.course_faqs_id_seq', 73, true);


--
-- Name: course_whos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.course_whos_id_seq', 27, true);


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.courses_id_seq', 16, true);


--
-- Name: courses_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.courses_users_id_seq', 351, true);


--
-- Name: faq_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.faq_categories_id_seq', 2, true);


--
-- Name: faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.faqs_id_seq', 4, true);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.feedbacks_id_seq', 55, true);


--
-- Name: hometasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.hometasks_id_seq', 494, true);


--
-- Name: languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.languages_id_seq', 2, true);


--
-- Name: lessons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.lessons_id_seq', 90, true);


--
-- Name: multiple_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.multiple_answers_id_seq', 2, true);


--
-- Name: multiple_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.multiple_questions_id_seq', 1, true);


--
-- Name: multiple_results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.multiple_results_id_seq', 1, true);


--
-- Name: multiples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.multiples_id_seq', 1, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.news_id_seq', 3, true);


--
-- Name: programs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.programs_id_seq', 6, true);


--
-- Name: socials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.socials_id_seq', 4, true);


--
-- Name: student_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.student_questions_id_seq', 76, true);


--
-- Name: template_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.template_modules_id_seq', 38, true);


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.templates_id_seq', 159, true);


--
-- Name: user_choices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.user_choices_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.users_id_seq', 373, true);


--
-- Name: advantages advantages_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.advantages
    ADD CONSTRAINT advantages_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: buys buys_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.buys
    ADD CONSTRAINT buys_pkey PRIMARY KEY (id);


--
-- Name: ckeditor_assets ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: cons cons_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.cons
    ADD CONSTRAINT cons_pkey PRIMARY KEY (id);


--
-- Name: course_faqs course_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.course_faqs
    ADD CONSTRAINT course_faqs_pkey PRIMARY KEY (id);


--
-- Name: course_whos course_whos_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.course_whos
    ADD CONSTRAINT course_whos_pkey PRIMARY KEY (id);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: courses_users courses_users_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.courses_users
    ADD CONSTRAINT courses_users_pkey PRIMARY KEY (id);


--
-- Name: faq_categories faq_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);


--
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);


--
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: hometasks hometasks_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.hometasks
    ADD CONSTRAINT hometasks_pkey PRIMARY KEY (id);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);


--
-- Name: lessons lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);


--
-- Name: multiple_answers multiple_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.multiple_answers
    ADD CONSTRAINT multiple_answers_pkey PRIMARY KEY (id);


--
-- Name: multiple_questions multiple_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.multiple_questions
    ADD CONSTRAINT multiple_questions_pkey PRIMARY KEY (id);


--
-- Name: multiple_results multiple_results_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.multiple_results
    ADD CONSTRAINT multiple_results_pkey PRIMARY KEY (id);


--
-- Name: multiples multiples_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.multiples
    ADD CONSTRAINT multiples_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: programs programs_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.programs
    ADD CONSTRAINT programs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: socials socials_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.socials
    ADD CONSTRAINT socials_pkey PRIMARY KEY (id);


--
-- Name: student_questions student_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.student_questions
    ADD CONSTRAINT student_questions_pkey PRIMARY KEY (id);


--
-- Name: template_modules template_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.template_modules
    ADD CONSTRAINT template_modules_pkey PRIMARY KEY (id);


--
-- Name: templates templates_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- Name: user_choices user_choices_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.user_choices
    ADD CONSTRAINT user_choices_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_ckeditor_assets_on_type; Type: INDEX; Schema: public; Owner: yernazar
--

CREATE INDEX index_ckeditor_assets_on_type ON public.ckeditor_assets USING btree (type);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: yernazar
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: yernazar
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

