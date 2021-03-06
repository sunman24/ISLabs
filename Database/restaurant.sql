PGDMP                         z         
   restaurant    11.13    11.13                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    26453 
   restaurant    DATABASE     ?   CREATE DATABASE restaurant WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251' TABLESPACE = restaurant_tablespace;
    DROP DATABASE restaurant;
             sunman    false                       0    0    DATABASE restaurant    ACL     A   GRANT CONNECT ON DATABASE restaurant TO admin WITH GRANT OPTION;
                  sunman    false    2820                       0    0    SCHEMA public    ACL     7   GRANT ALL ON SCHEMA public TO admin WITH GRANT OPTION;
                  postgres    false    3            ?            1255    34763 &   add_record(character varying, numeric)    FUNCTION     ?   CREATE FUNCTION public.add_record(in_name character varying, in_price numeric) RETURNS void
    LANGUAGE sql
    AS $$
	INSERT INTO dishes(name, price) VALUES(in_name, in_price)
$$;
 N   DROP FUNCTION public.add_record(in_name character varying, in_price numeric);
       public       sunman    false            ?            1255    26570    del(integer)    FUNCTION     t   CREATE FUNCTION public.del(_id integer) RETURNS void
    LANGUAGE sql
    AS $$
DELETE FROM dishes WHERE id=_id
$$;
 '   DROP FUNCTION public.del(_id integer);
       public       sunman    false            ?            1255    34764    delete_record(integer)    FUNCTION     ?   CREATE FUNCTION public.delete_record(in_id integer) RETURNS void
    LANGUAGE sql
    AS $$
	DELETE FROM dishes WHERE id = in_id;
$$;
 3   DROP FUNCTION public.delete_record(in_id integer);
       public       sunman    false            ?            1259    34754    dishes    TABLE     y   CREATE TABLE public.dishes (
    id integer NOT NULL,
    name character varying NOT NULL,
    price numeric NOT NULL
);
    DROP TABLE public.dishes;
       public         sunman    false                       0    0    TABLE dishes    ACL     +   GRANT ALL ON TABLE public.dishes TO admin;
            public       sunman    false    197            ?            1259    34752    dishes_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dishes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.dishes_id_seq;
       public       sunman    false    197                       0    0    dishes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.dishes_id_seq OWNED BY public.dishes.id;
            public       sunman    false    196            	           0    0    SEQUENCE dishes_id_seq    ACL     5   GRANT ALL ON SEQUENCE public.dishes_id_seq TO admin;
            public       sunman    false    196            ?
           2604    34766 	   dishes id    DEFAULT     f   ALTER TABLE ONLY public.dishes ALTER COLUMN id SET DEFAULT nextval('public.dishes_id_seq'::regclass);
 8   ALTER TABLE public.dishes ALTER COLUMN id DROP DEFAULT;
       public       sunman    false    196    197    197            ?
          0    34754    dishes 
   TABLE DATA               1   COPY public.dishes (id, name, price) FROM stdin;
    public       sunman    false    197          
           0    0    dishes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.dishes_id_seq', 19, true);
            public       sunman    false    196            ?
           2606    34762    dishes dishes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.dishes
    ADD CONSTRAINT dishes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.dishes DROP CONSTRAINT dishes_pkey;
       public         sunman    false    197            ?
   ?   x??1
?@D???	6q?bgi??ZX? X?V????{??7??v޼????`#???Te o?vb??^e?Y?v<D	
^?~?=+ڨZ?i?]??ɋ!?Ԥ$!??fgߟ?u?Ƃ:??9?H/	????T֍?? ?E?     