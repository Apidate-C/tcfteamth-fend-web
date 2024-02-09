PGDMP     ,    4    
             |            fend    9.2.24    14.10 =   r           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            s           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            t           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            u           1262    16474    fend    DATABASE     Y   CREATE DATABASE fend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE fend;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            v           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    6            w           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �           1259    18039    ClientDetails    TABLE     �  CREATE TABLE public."ClientDetails" (
    "appId" character varying(256) NOT NULL,
    "resourceIds" character varying(256),
    "appSecret" character varying(256),
    scope character varying(256),
    "grantTypes" character varying(256),
    "redirectUrl" character varying(256),
    authorities character varying(256),
    access_token_validity integer,
    refresh_token_validity integer,
    "additionalInformation" character varying(4096),
    "autoApproveScopes" character varying(256)
);
 #   DROP TABLE public."ClientDetails";
       public            postgres    false    6            �            1259    16488    access_control_items    TABLE     �   CREATE TABLE public.access_control_items (
    access_control_item_id integer NOT NULL,
    authority character varying(255) NOT NULL,
    description text
);
 (   DROP TABLE public.access_control_items;
       public            postgres    false    6            �            1259    16486 /   access_control_items_access_control_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.access_control_items_access_control_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.access_control_items_access_control_item_id_seq;
       public          postgres    false    6    172            x           0    0 /   access_control_items_access_control_item_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.access_control_items_access_control_item_id_seq OWNED BY public.access_control_items.access_control_item_id;
          public          postgres    false    171            �            1259    16499    access_control_list    TABLE     �   CREATE TABLE public.access_control_list (
    access_control_list_id integer NOT NULL,
    access_control_item_id integer NOT NULL,
    role_id integer NOT NULL
);
 '   DROP TABLE public.access_control_list;
       public            postgres    false    6            �            1259    16497 .   access_control_list_access_control_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.access_control_list_access_control_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.access_control_list_access_control_list_id_seq;
       public          postgres    false    6    174            y           0    0 .   access_control_list_access_control_list_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.access_control_list_access_control_list_id_seq OWNED BY public.access_control_list.access_control_list_id;
          public          postgres    false    173            �           1259    18717 #   announcenment_of_passenger_requests    TABLE     \  CREATE TABLE public.announcenment_of_passenger_requests (
    id integer NOT NULL,
    user_id integer,
    source_location_lat double precision NOT NULL,
    source_location_long double precision NOT NULL,
    source_location_title character varying(255) NOT NULL,
    source_location_description character varying(255) NOT NULL,
    destination_location_lat double precision NOT NULL,
    destination_location_long double precision NOT NULL,
    destination_location_title character varying(500) NOT NULL,
    destination_location_description character varying(500) NOT NULL,
    number_of_passengers character varying(10) NOT NULL,
    start_date timestamp without time zone NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(255),
    updated_date timestamp without time zone,
    updated_by character varying(255)
);
 7   DROP TABLE public.announcenment_of_passenger_requests;
       public            postgres    false    6            �           1259    18715 *   announcenment_of_passenger_requests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.announcenment_of_passenger_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.announcenment_of_passenger_requests_id_seq;
       public          postgres    false    509    6            z           0    0 *   announcenment_of_passenger_requests_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.announcenment_of_passenger_requests_id_seq OWNED BY public.announcenment_of_passenger_requests.id;
          public          postgres    false    508                       1259    18924    app_shortcut    TABLE     z  CREATE TABLE public.app_shortcut (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    logo_path character varying(255),
    type character varying(255),
    url character varying(1000),
    created_date timestamp without time zone,
    created_by character varying(255),
    updated_date timestamp without time zone,
    updated_by character varying(255)
);
     DROP TABLE public.app_shortcut;
       public            postgres    false    6                       1259    18922    app_shortcut_id_seq    SEQUENCE     |   CREATE SEQUENCE public.app_shortcut_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.app_shortcut_id_seq;
       public          postgres    false    526    6            {           0    0    app_shortcut_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.app_shortcut_id_seq OWNED BY public.app_shortcut.id;
          public          postgres    false    525            �            1259    16518    app_version    TABLE       CREATE TABLE public.app_version (
    ios_path character varying(255),
    android_path character varying(255),
    ios_manifest character varying(255),
    is_lasted character varying(255),
    id integer NOT NULL,
    version_code character varying(255)
);
    DROP TABLE public.app_version;
       public            postgres    false    6            �            1259    16516    app_version_id_seq    SEQUENCE     {   CREATE SEQUENCE public.app_version_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.app_version_id_seq;
       public          postgres    false    178    6            |           0    0    app_version_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.app_version_id_seq OWNED BY public.app_version.id;
          public          postgres    false    177            �            1259    16529    auth_authority    TABLE     j   CREATE TABLE public.auth_authority (
    id integer NOT NULL,
    name character varying(256) NOT NULL
);
 "   DROP TABLE public.auth_authority;
       public            postgres    false    6            �            1259    16527    auth_authority_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.auth_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.auth_authority_id_seq;
       public          postgres    false    180    6            }           0    0    auth_authority_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.auth_authority_id_seq OWNED BY public.auth_authority.id;
          public          postgres    false    179            �            1259    16545 	   auth_role    TABLE     �   CREATE TABLE public.auth_role (
    id integer NOT NULL,
    role_identifier character varying(256) NOT NULL,
    role_display_name character varying(256) NOT NULL,
    is_static_role boolean NOT NULL
);
    DROP TABLE public.auth_role;
       public            postgres    false    6            �            1259    16537    auth_role_authority    TABLE     �   CREATE TABLE public.auth_role_authority (
    id integer NOT NULL,
    role_id integer NOT NULL,
    authority_id integer NOT NULL
);
 '   DROP TABLE public.auth_role_authority;
       public            postgres    false    6            �            1259    16535    auth_role_authority_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_role_authority_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.auth_role_authority_id_seq;
       public          postgres    false    182    6            ~           0    0    auth_role_authority_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.auth_role_authority_id_seq OWNED BY public.auth_role_authority.id;
          public          postgres    false    181            �            1259    16543    auth_role_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_role_id_seq;
       public          postgres    false    184    6                       0    0    auth_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_role_id_seq OWNED BY public.auth_role.id;
          public          postgres    false    183            �            1259    16556 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    type character varying(32) NOT NULL,
    username character varying(256) NOT NULL,
    password character varying(256) NOT NULL,
    name character varying(256) NOT NULL,
    first_name character varying(256) NOT NULL,
    last_name character varying(256) NOT NULL,
    email character varying(256) NOT NULL,
    phone_no character varying(32) NOT NULL,
    is_non_locked boolean NOT NULL,
    is_enabled boolean NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    profile_image_url character varying(500),
    "position" character varying(120),
    address text,
    salary double precision,
    top_coin double precision,
    citizen_id character varying(120),
    employee_id character varying(120),
    advance_noti_time character varying(32) DEFAULT '15m'::character varying NOT NULL
);
    DROP TABLE public.auth_user;
       public            postgres    false    6            �            1259    16554    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    6    186            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    185            �            1259    16567    auth_user_role    TABLE     |   CREATE TABLE public.auth_user_role (
    id integer NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
 "   DROP TABLE public.auth_user_role;
       public            postgres    false    6            �            1259    16565    auth_user_role_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.auth_user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.auth_user_role_id_seq;
       public          postgres    false    188    6            �           0    0    auth_user_role_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.auth_user_role_id_seq OWNED BY public.auth_user_role.id;
          public          postgres    false    187                       1259    19034    benefit_year    TABLE     �  CREATE TABLE public.benefit_year (
    id integer NOT NULL,
    enable bit(1),
    created_date date NOT NULL,
    updated_date date,
    created_by character varying(500) NOT NULL,
    updated_by character varying(500) NOT NULL,
    start_enrollment_date date,
    end_enrollment_date date,
    start_period_date timestamp without time zone,
    end_period_date timestamp without time zone
);
     DROP TABLE public.benefit_year;
       public            postgres    false    6            �            1259    16594    brand    TABLE     �  CREATE TABLE public.brand (
    id integer NOT NULL,
    product_category_id integer,
    name character varying(255) NOT NULL,
    image_url character varying(255) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    order_acknowledge_type character varying(50)
);
    DROP TABLE public.brand;
       public            postgres    false    6            �            1259    16583 	   brand_api    TABLE     W  CREATE TABLE public.brand_api (
    id integer NOT NULL,
    brand_id integer NOT NULL,
    name character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
    DROP TABLE public.brand_api;
       public            postgres    false    6            �            1259    16581    brand_api_id_seq    SEQUENCE     y   CREATE SEQUENCE public.brand_api_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.brand_api_id_seq;
       public          postgres    false    192    6            �           0    0    brand_api_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.brand_api_id_seq OWNED BY public.brand_api.id;
          public          postgres    false    191            �           1259    18666    brand_email    TABLE     \  CREATE TABLE public.brand_email (
    id integer NOT NULL,
    brand_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(1000) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
    DROP TABLE public.brand_email;
       public            postgres    false    6            �           1259    18664    brand_email_id_seq    SEQUENCE     {   CREATE SEQUENCE public.brand_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.brand_email_id_seq;
       public          postgres    false    6    503            �           0    0    brand_email_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.brand_email_id_seq OWNED BY public.brand_email.id;
          public          postgres    false    502            �            1259    16592    brand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.brand_id_seq;
       public          postgres    false    6    194            �           0    0    brand_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.brand_id_seq OWNED BY public.brand.id;
          public          postgres    false    193            �            1259    16605    bus    TABLE     4  CREATE TABLE public.bus (
    id integer NOT NULL,
    vehichle_id integer NOT NULL,
    vehicle_license character varying(500) NOT NULL,
    vehicle_name character varying(500),
    latitude double precision,
    longitude double precision,
    location text,
    update_date timestamp without time zone
);
    DROP TABLE public.bus;
       public            postgres    false    6            �            1259    16603 
   bus_id_seq    SEQUENCE     s   CREATE SEQUENCE public.bus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.bus_id_seq;
       public          postgres    false    6    196            �           0    0 
   bus_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.bus_id_seq OWNED BY public.bus.id;
          public          postgres    false    195            �            1259    16616 
   bus_report    TABLE     �   CREATE TABLE public.bus_report (
    id integer NOT NULL,
    top_start character varying(500),
    start_times integer NOT NULL,
    top_end character varying(500),
    end_times integer NOT NULL,
    create_date timestamp without time zone NOT NULL
);
    DROP TABLE public.bus_report;
       public            postgres    false    6            �            1259    16614    bus_report_id_seq    SEQUENCE     z   CREATE SEQUENCE public.bus_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.bus_report_id_seq;
       public          postgres    false    6    198            �           0    0    bus_report_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.bus_report_id_seq OWNED BY public.bus_report.id;
          public          postgres    false    197            �            1259    16627 	   bus_route    TABLE     �  CREATE TABLE public.bus_route (
    id integer NOT NULL,
    bus_id integer NOT NULL,
    line_id integer NOT NULL,
    station_id integer NOT NULL,
    type character varying(500) NOT NULL,
    car_cycle character varying(500) NOT NULL,
    indexs integer DEFAULT 0,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL
);
    DROP TABLE public.bus_route;
       public            postgres    false    6            �            1259    16625    bus_route_id_seq    SEQUENCE     y   CREATE SEQUENCE public.bus_route_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bus_route_id_seq;
       public          postgres    false    200    6            �           0    0    bus_route_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bus_route_id_seq OWNED BY public.bus_route.id;
          public          postgres    false    199            �            1259    16639    bus_station    TABLE     �  CREATE TABLE public.bus_station (
    id integer NOT NULL,
    station_name character varying(500) NOT NULL,
    latitude double precision,
    longitude double precision,
    is_delete boolean DEFAULT false NOT NULL,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL,
    indexs integer
);
    DROP TABLE public.bus_station;
       public            postgres    false    6            �            1259    16637    bus_station_id_seq    SEQUENCE     {   CREATE SEQUENCE public.bus_station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.bus_station_id_seq;
       public          postgres    false    6    202            �           0    0    bus_station_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.bus_station_id_seq OWNED BY public.bus_station.id;
          public          postgres    false    201            �            1259    16651    bus_time    TABLE     �   CREATE TABLE public.bus_time (
    id integer NOT NULL,
    bus_line_id integer NOT NULL,
    bus_go character varying(500) NOT NULL,
    bus_back character varying(500) NOT NULL
);
    DROP TABLE public.bus_time;
       public            postgres    false    6            �            1259    16649    bus_time_id_seq    SEQUENCE     x   CREATE SEQUENCE public.bus_time_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bus_time_id_seq;
       public          postgres    false    204    6            �           0    0    bus_time_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.bus_time_id_seq OWNED BY public.bus_time.id;
          public          postgres    false    203            �            1259    16662    calendar_events    TABLE     �  CREATE TABLE public.calendar_events (
    event_id integer NOT NULL,
    user_id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    event_start timestamp without time zone NOT NULL,
    event_end timestamp without time zone NOT NULL,
    location character varying(255),
    is_global boolean NOT NULL,
    is_repeat boolean NOT NULL,
    is_delete boolean NOT NULL,
    is_allday boolean NOT NULL,
    type_id integer,
    ews_id character varying(255)
);
 #   DROP TABLE public.calendar_events;
       public            postgres    false    6            �            1259    16660    calendar_events_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.calendar_events_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.calendar_events_event_id_seq;
       public          postgres    false    6    206            �           0    0    calendar_events_event_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.calendar_events_event_id_seq OWNED BY public.calendar_events.event_id;
          public          postgres    false    205            �            1259    16673    calendar_type    TABLE     �   CREATE TABLE public.calendar_type (
    type_id integer NOT NULL,
    type_name character varying(255) NOT NULL,
    color character varying(7) NOT NULL,
    is_delete boolean
);
 !   DROP TABLE public.calendar_type;
       public            postgres    false    6            �            1259    16671    calendar_type_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.calendar_type_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.calendar_type_type_id_seq;
       public          postgres    false    6    208            �           0    0    calendar_type_type_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.calendar_type_type_id_seq OWNED BY public.calendar_type.type_id;
          public          postgres    false    207            �           1259    18728    car_information    TABLE     �  CREATE TABLE public.car_information (
    id integer NOT NULL,
    user_id integer NOT NULL,
    car_brands character varying(120) NOT NULL,
    car_model character varying(120) NOT NULL,
    car_registration_no character varying(120) NOT NULL,
    car_color character varying(120) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(255),
    updated_date timestamp without time zone,
    updated_by character varying(255),
    is_default boolean DEFAULT false NOT NULL
);
 #   DROP TABLE public.car_information;
       public            postgres    false    6            �           1259    18726    car_information_id_seq    SEQUENCE        CREATE SEQUENCE public.car_information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.car_information_id_seq;
       public          postgres    false    511    6            �           0    0    car_information_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.car_information_id_seq OWNED BY public.car_information.id;
          public          postgres    false    510            �            1259    16694 	   car_lines    TABLE     z  CREATE TABLE public.car_lines (
    id integer NOT NULL,
    line_name character varying(500) NOT NULL,
    is_delete boolean DEFAULT false NOT NULL,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL,
    type character varying(500)
);
    DROP TABLE public.car_lines;
       public            postgres    false    6            �            1259    16692    car_lines_id_seq    SEQUENCE     y   CREATE SEQUENCE public.car_lines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.car_lines_id_seq;
       public          postgres    false    212    6            �           0    0    car_lines_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.car_lines_id_seq OWNED BY public.car_lines.id;
          public          postgres    false    211            �            1259    16748    choice    TABLE     �  CREATE TABLE public.choice (
    id integer NOT NULL,
    topic_choice_id integer NOT NULL,
    name character varying(500) NOT NULL,
    detail text,
    parent_id integer,
    exchange_coin double precision,
    default_choice boolean,
    enable boolean,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
    DROP TABLE public.choice;
       public            postgres    false    6            �            1259    16746    choice_id_seq    SEQUENCE     v   CREATE SEQUENCE public.choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.choice_id_seq;
       public          postgres    false    222    6            �           0    0    choice_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.choice_id_seq OWNED BY public.choice.id;
          public          postgres    false    221            �            1259    16737    choices    TABLE     �   CREATE TABLE public.choices (
    choice_id integer NOT NULL,
    news_id integer NOT NULL,
    choice_value character varying(255) NOT NULL,
    answer boolean,
    image_path character varying(255)
);
    DROP TABLE public.choices;
       public            postgres    false    6            �            1259    16735    choices_choice_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.choices_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.choices_choice_id_seq;
       public          postgres    false    220    6            �           0    0    choices_choice_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.choices_choice_id_seq OWNED BY public.choices.choice_id;
          public          postgres    false    219            �            1259    16759    claim    TABLE     �  CREATE TABLE public.claim (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    claim_type_id integer,
    exchange_coin double precision,
    fix_exchange_coin boolean,
    detail text,
    show_dashboard boolean,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    claim_price double precision,
    show boolean,
    allow_amount integer DEFAULT 1 NOT NULL,
    "limit" integer DEFAULT 1 NOT NULL,
    limit_type integer DEFAULT 1 NOT NULL,
    probation boolean DEFAULT false NOT NULL,
    max_claimable_limit integer DEFAULT 0 NOT NULL,
    icon character varying(500)
);
    DROP TABLE public.claim;
       public            postgres    false    6            �            1259    16757    claim_id_seq    SEQUENCE     u   CREATE SEQUENCE public.claim_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.claim_id_seq;
       public          postgres    false    6    224            �           0    0    claim_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.claim_id_seq OWNED BY public.claim.id;
          public          postgres    false    223            �            1259    16770 
   claim_type    TABLE       CREATE TABLE public.claim_type (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
    DROP TABLE public.claim_type;
       public            postgres    false    6            �            1259    16768    claim_type_id_seq    SEQUENCE     z   CREATE SEQUENCE public.claim_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.claim_type_id_seq;
       public          postgres    false    226    6            �           0    0    claim_type_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.claim_type_id_seq OWNED BY public.claim_type.id;
          public          postgres    false    225            �            1259    16781    club_albums    TABLE     �   CREATE TABLE public.club_albums (
    club_albums_id integer NOT NULL,
    club_id integer NOT NULL,
    album_id integer NOT NULL
);
    DROP TABLE public.club_albums;
       public            postgres    false    6            �            1259    16779    club_albums_club_albums_id_seq    SEQUENCE     �   CREATE SEQUENCE public.club_albums_club_albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.club_albums_club_albums_id_seq;
       public          postgres    false    228    6            �           0    0    club_albums_club_albums_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.club_albums_club_albums_id_seq OWNED BY public.club_albums.club_albums_id;
          public          postgres    false    227            �            1259    16789    club_comments    TABLE     �  CREATE TABLE public.club_comments (
    comment_id integer NOT NULL,
    thread_id integer NOT NULL,
    user_id integer NOT NULL,
    comment text NOT NULL,
    created_date timestamp without time zone NOT NULL,
    image_path character varying(255),
    latitude character varying(20),
    longitude character varying(20),
    is_delete boolean,
    file_path character varying(255)
);
 !   DROP TABLE public.club_comments;
       public            postgres    false    6            �            1259    16787    club_comments_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.club_comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.club_comments_comment_id_seq;
       public          postgres    false    230    6            �           0    0    club_comments_comment_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.club_comments_comment_id_seq OWNED BY public.club_comments.comment_id;
          public          postgres    false    229            �            1259    16811    club_threads    TABLE     l  CREATE TABLE public.club_threads (
    thread_id integer NOT NULL,
    club_id integer NOT NULL,
    user_id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    created_date timestamp without time zone NOT NULL,
    publish_date timestamp without time zone NOT NULL,
    thumbnail_image_id integer,
    is_delete boolean
);
     DROP TABLE public.club_threads;
       public            postgres    false    6            �            1259    16809    club_threads_thread_id_seq    SEQUENCE     �   CREATE SEQUENCE public.club_threads_thread_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.club_threads_thread_id_seq;
       public          postgres    false    234    6            �           0    0    club_threads_thread_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.club_threads_thread_id_seq OWNED BY public.club_threads.thread_id;
          public          postgres    false    233            �            1259    16800    clubs    TABLE     �   CREATE TABLE public.clubs (
    club_id integer NOT NULL,
    name character varying(255) NOT NULL,
    annouce text,
    thumbnail_image_id integer,
    is_delete boolean,
    icon_image_path character varying(255)
);
    DROP TABLE public.clubs;
       public            postgres    false    6            �            1259    16798    clubs_club_id_seq    SEQUENCE     z   CREATE SEQUENCE public.clubs_club_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.clubs_club_id_seq;
       public          postgres    false    6    232            �           0    0    clubs_club_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.clubs_club_id_seq OWNED BY public.clubs.club_id;
          public          postgres    false    231            �           1259    18157    coin    TABLE     �  CREATE TABLE public.coin (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    coin double precision NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    ref_id integer,
    is_add boolean,
    ref_title character varying(255),
    ref_image character varying(1000)
);
    DROP TABLE public.coin;
       public            postgres    false    6            �           1259    18155    coin_id_seq    SEQUENCE     t   CREATE SEQUENCE public.coin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.coin_id_seq;
       public          postgres    false    494    6            �           0    0    coin_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;
          public          postgres    false    493            �            1259    16869 	   companies    TABLE     �   CREATE TABLE public.companies (
    company_id integer NOT NULL,
    company_name character varying(255) NOT NULL,
    acronym character varying(3),
    is_delete boolean
);
    DROP TABLE public.companies;
       public            postgres    false    6            �            1259    16867    companies_company_id_seq    SEQUENCE     �   CREATE SEQUENCE public.companies_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.companies_company_id_seq;
       public          postgres    false    246    6            �           0    0    companies_company_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.companies_company_id_seq OWNED BY public.companies.company_id;
          public          postgres    false    245            �            1259    16877    configurations    TABLE     �   CREATE TABLE public.configurations (
    configuration_id integer NOT NULL,
    key character varying(255) NOT NULL,
    value character varying(2000) NOT NULL
);
 "   DROP TABLE public.configurations;
       public            postgres    false    6            �            1259    16875 #   configurations_configuration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.configurations_configuration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.configurations_configuration_id_seq;
       public          postgres    false    6    248            �           0    0 #   configurations_configuration_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.configurations_configuration_id_seq OWNED BY public.configurations.configuration_id;
          public          postgres    false    247            �            1259    16839    content_comments    TABLE       CREATE TABLE public.content_comments (
    comment_id integer NOT NULL,
    content_id integer NOT NULL,
    user_id integer NOT NULL,
    comment character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    is_delete boolean NOT NULL
);
 $   DROP TABLE public.content_comments;
       public            postgres    false    6            �            1259    16837    content_comments_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.content_comments_comment_id_seq;
       public          postgres    false    240    6            �           0    0    content_comments_comment_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.content_comments_comment_id_seq OWNED BY public.content_comments.comment_id;
          public          postgres    false    239            �            1259    16886    content_files    TABLE     �   CREATE TABLE public.content_files (
    file_id integer NOT NULL,
    content_id integer NOT NULL,
    file_path character varying(255) NOT NULL
);
 !   DROP TABLE public.content_files;
       public            postgres    false    6            �            1259    16884    content_files_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.content_files_file_id_seq;
       public          postgres    false    6    250            �           0    0    content_files_file_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.content_files_file_id_seq OWNED BY public.content_files.file_id;
          public          postgres    false    249            �            1259    16906    content_images    TABLE     �   CREATE TABLE public.content_images (
    content_images_id integer NOT NULL,
    content_id integer NOT NULL,
    image_id integer NOT NULL
);
 "   DROP TABLE public.content_images;
       public            postgres    false    6            �            1259    16904 $   content_images_content_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.content_images_content_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.content_images_content_images_id_seq;
       public          postgres    false    6    254            �           0    0 $   content_images_content_images_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.content_images_content_images_id_seq OWNED BY public.content_images.content_images_id;
          public          postgres    false    253            �            1259    16894    contents    TABLE       CREATE TABLE public.contents (
    content_id integer NOT NULL,
    user_id integer NOT NULL,
    thumbnail_image_id integer,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    type character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    publish_date timestamp without time zone,
    expired_date timestamp without time zone,
    is_delete boolean NOT NULL,
    commentable boolean NOT NULL,
    is_hide boolean NOT NULL,
    is_confidential boolean DEFAULT false NOT NULL
);
    DROP TABLE public.contents;
       public            postgres    false    6            �            1259    16892    contents_content_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contents_content_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contents_content_id_seq;
       public          postgres    false    6    252            �           0    0    contents_content_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contents_content_id_seq OWNED BY public.contents.content_id;
          public          postgres    false    251            A           1259    19610    country    TABLE     C  CREATE TABLE public.country (
    id integer NOT NULL,
    country_code character varying(100) NOT NULL,
    country_name character varying(100) NOT NULL,
    create_date timestamp without time zone,
    update_date timestamp without time zone,
    create_by character varying(500),
    update_by character varying(500)
);
    DROP TABLE public.country;
       public            postgres    false    6            @           1259    19608    country_id_seq    SEQUENCE     w   CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    6    577            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    576                        1259    16914    departments    TABLE     �   CREATE TABLE public.departments (
    department_id integer NOT NULL,
    company_id integer NOT NULL,
    department_name character varying(255) NOT NULL,
    parent_department integer,
    level character varying(50) NOT NULL,
    is_delete boolean
);
    DROP TABLE public.departments;
       public            postgres    false    6            �            1259    16912    departments_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departments_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.departments_department_id_seq;
       public          postgres    false    256    6            �           0    0    departments_department_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;
          public          postgres    false    255                       1259    16922    digital_news_comment    TABLE       CREATE TABLE public.digital_news_comment (
    id integer NOT NULL,
    digital_news_id integer NOT NULL,
    user_id integer NOT NULL,
    comment character varying(1000) NOT NULL,
    image_path character varying(500),
    create_date timestamp without time zone NOT NULL
);
 (   DROP TABLE public.digital_news_comment;
       public            postgres    false    6                       1259    16920    digital_news_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.digital_news_comment_id_seq;
       public          postgres    false    258    6            �           0    0    digital_news_comment_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.digital_news_comment_id_seq OWNED BY public.digital_news_comment.id;
          public          postgres    false    257                       1259    16933    digital_news_header_images    TABLE     �   CREATE TABLE public.digital_news_header_images (
    id integer NOT NULL,
    digital_news_id integer NOT NULL,
    image_path character varying(500),
    create_date timestamp without time zone NOT NULL
);
 .   DROP TABLE public.digital_news_header_images;
       public            postgres    false    6                       1259    16931 !   digital_news_header_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_header_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.digital_news_header_images_id_seq;
       public          postgres    false    260    6            �           0    0 !   digital_news_header_images_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.digital_news_header_images_id_seq OWNED BY public.digital_news_header_images.id;
          public          postgres    false    259                       1259    16944    digital_news_notification    TABLE     �  CREATE TABLE public.digital_news_notification (
    id integer NOT NULL,
    user_id integer NOT NULL,
    is_read boolean,
    create_date timestamp without time zone NOT NULL,
    type character varying(120) DEFAULT 'Digital News'::character varying NOT NULL,
    ref_id integer DEFAULT 0 NOT NULL,
    is_inform boolean DEFAULT false NOT NULL,
    read_date timestamp without time zone
);
 -   DROP TABLE public.digital_news_notification;
       public            postgres    false    6                       1259    16942     digital_news_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.digital_news_notification_id_seq;
       public          postgres    false    262    6            �           0    0     digital_news_notification_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.digital_news_notification_id_seq OWNED BY public.digital_news_notification.id;
          public          postgres    false    261                       1259    16955 "   digital_news_product_datail_images    TABLE     �   CREATE TABLE public.digital_news_product_datail_images (
    id integer NOT NULL,
    digital_news_product_id integer NOT NULL,
    image_path character varying(500),
    create_date timestamp without time zone NOT NULL
);
 6   DROP TABLE public.digital_news_product_datail_images;
       public            postgres    false    6                       1259    16953 )   digital_news_product_datail_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_product_datail_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.digital_news_product_datail_images_id_seq;
       public          postgres    false    6    264            �           0    0 )   digital_news_product_datail_images_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.digital_news_product_datail_images_id_seq OWNED BY public.digital_news_product_datail_images.id;
          public          postgres    false    263            
           1259    16966    digital_news_product_delivery    TABLE     N  CREATE TABLE public.digital_news_product_delivery (
    product_delivery_id integer NOT NULL,
    coin_transaction_log_id integer NOT NULL,
    user_id integer NOT NULL,
    product_status_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    update_by integer
);
 1   DROP TABLE public.digital_news_product_delivery;
       public            postgres    false    6            	           1259    16964 5   digital_news_product_delivery_product_delivery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_product_delivery_product_delivery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.digital_news_product_delivery_product_delivery_id_seq;
       public          postgres    false    266    6            �           0    0 5   digital_news_product_delivery_product_delivery_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.digital_news_product_delivery_product_delivery_id_seq OWNED BY public.digital_news_product_delivery.product_delivery_id;
          public          postgres    false    265                       1259    16974    digital_news_product_status    TABLE     �   CREATE TABLE public.digital_news_product_status (
    product_status_id integer NOT NULL,
    product_status_name character varying(120) NOT NULL,
    is_delete boolean NOT NULL
);
 /   DROP TABLE public.digital_news_product_status;
       public            postgres    false    6                       1259    16972 1   digital_news_product_status_product_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_product_status_product_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.digital_news_product_status_product_status_id_seq;
       public          postgres    false    6    268            �           0    0 1   digital_news_product_status_product_status_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.digital_news_product_status_product_status_id_seq OWNED BY public.digital_news_product_status.product_status_id;
          public          postgres    false    267                       1259    16982    digital_news_quiz    TABLE     2  CREATE TABLE public.digital_news_quiz (
    id integer NOT NULL,
    digital_news_id integer NOT NULL,
    quiz_option character varying(500) NOT NULL,
    create_date timestamp without time zone NOT NULL,
    is_correct boolean DEFAULT false NOT NULL,
    quiz_score integer DEFAULT 0,
    idx integer
);
 %   DROP TABLE public.digital_news_quiz;
       public            postgres    false    6                       1259    16980    digital_news_quiz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_quiz_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.digital_news_quiz_id_seq;
       public          postgres    false    6    270            �           0    0    digital_news_quiz_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.digital_news_quiz_id_seq OWNED BY public.digital_news_quiz.id;
          public          postgres    false    269                       1259    18893    digital_news_type    TABLE     =  CREATE TABLE public.digital_news_type (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    logo_path character varying(255),
    created_date timestamp without time zone,
    created_by character varying(255),
    updated_date timestamp without time zone,
    updated_by character varying(255)
);
 %   DROP TABLE public.digital_news_type;
       public            postgres    false    6            
           1259    18891    digital_news_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.digital_news_type_id_seq;
       public          postgres    false    6    523            �           0    0    digital_news_type_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.digital_news_type_id_seq OWNED BY public.digital_news_type.id;
          public          postgres    false    522                       1259    16995    digital_news_user_quiz    TABLE       CREATE TABLE public.digital_news_user_quiz (
    id integer NOT NULL,
    user_id integer NOT NULL,
    digital_news_id integer NOT NULL,
    quiz_option_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    is_correct boolean DEFAULT false NOT NULL
);
 *   DROP TABLE public.digital_news_user_quiz;
       public            postgres    false    6                       1259    16993    digital_news_user_quiz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_user_quiz_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.digital_news_user_quiz_id_seq;
       public          postgres    false    272    6            �           0    0    digital_news_user_quiz_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.digital_news_user_quiz_id_seq OWNED BY public.digital_news_user_quiz.id;
          public          postgres    false    271                       1259    17004    digital_news_user_vote    TABLE     �   CREATE TABLE public.digital_news_user_vote (
    id integer NOT NULL,
    user_id integer NOT NULL,
    digital_news_id integer NOT NULL,
    vote_option_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL
);
 *   DROP TABLE public.digital_news_user_vote;
       public            postgres    false    6                       1259    17002    digital_news_user_vote_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_user_vote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.digital_news_user_vote_id_seq;
       public          postgres    false    6    274            �           0    0    digital_news_user_vote_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.digital_news_user_vote_id_seq OWNED BY public.digital_news_user_vote.id;
          public          postgres    false    273                       1259    17012    digital_news_vote    TABLE     3  CREATE TABLE public.digital_news_vote (
    id integer NOT NULL,
    digital_news_id integer NOT NULL,
    vote_option character varying(500) NOT NULL,
    image_path character varying(500),
    create_date timestamp without time zone NOT NULL,
    vote_score integer DEFAULT 0 NOT NULL,
    idx integer
);
 %   DROP TABLE public.digital_news_vote;
       public            postgres    false    6                       1259    17010    digital_news_vote_id_seq    SEQUENCE     �   CREATE SEQUENCE public.digital_news_vote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.digital_news_vote_id_seq;
       public          postgres    false    276    6            �           0    0    digital_news_vote_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.digital_news_vote_id_seq OWNED BY public.digital_news_vote.id;
          public          postgres    false    275                       1259    18744    drive_master    TABLE     �  CREATE TABLE public.drive_master (
    id integer NOT NULL,
    user_id integer NOT NULL,
    car_id integer NOT NULL,
    source_location_lat double precision NOT NULL,
    source_location_long double precision NOT NULL,
    source_location_title character varying(255) NOT NULL,
    source_location_description character varying(255) NOT NULL,
    destination_location_lat double precision NOT NULL,
    destination_location_long double precision NOT NULL,
    destination_location_title character varying(255) NOT NULL,
    destination_location_description character varying(255) NOT NULL,
    passenger_seats integer NOT NULL,
    start_date timestamp without time zone NOT NULL,
    remark character varying(255) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(255),
    updated_date timestamp without time zone,
    updated_by character varying(255),
    show_trip_end_button boolean DEFAULT true NOT NULL,
    get_coin boolean DEFAULT false NOT NULL
);
     DROP TABLE public.drive_master;
       public            postgres    false    6                        1259    18742    drive_master_id_seq    SEQUENCE     |   CREATE SEQUENCE public.drive_master_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.drive_master_id_seq;
       public          postgres    false    513    6            �           0    0    drive_master_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.drive_master_id_seq OWNED BY public.drive_master.id;
          public          postgres    false    512            	           1259    18858    drive_requests    TABLE     :  CREATE TABLE public.drive_requests (
    id integer NOT NULL,
    aop_id integer NOT NULL,
    drive_id integer NOT NULL,
    status boolean,
    created_date timestamp without time zone,
    created_by character varying(255),
    updated_date timestamp without time zone,
    updated_by character varying(255)
);
 "   DROP TABLE public.drive_requests;
       public            postgres    false    6                       1259    18856    drive_requests_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.drive_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.drive_requests_id_seq;
       public          postgres    false    521    6            �           0    0    drive_requests_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.drive_requests_id_seq OWNED BY public.drive_requests.id;
          public          postgres    false    520                        1259    17079 
   enrollment    TABLE     P  CREATE TABLE public.enrollment (
    id integer NOT NULL,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    enable boolean,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
    DROP TABLE public.enrollment;
       public            postgres    false    6                       1259    17077    enrollment_id_seq    SEQUENCE     z   CREATE SEQUENCE public.enrollment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.enrollment_id_seq;
       public          postgres    false    288    6            �           0    0    enrollment_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.enrollment_id_seq OWNED BY public.enrollment.id;
          public          postgres    false    287            "           1259    17090    event_departments    TABLE     �   CREATE TABLE public.event_departments (
    event_departments_id integer NOT NULL,
    event_id integer NOT NULL,
    department_id integer NOT NULL
);
 %   DROP TABLE public.event_departments;
       public            postgres    false    6            !           1259    17088 *   event_departments_event_departments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_departments_event_departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.event_departments_event_departments_id_seq;
       public          postgres    false    290    6            �           0    0 *   event_departments_event_departments_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.event_departments_event_departments_id_seq OWNED BY public.event_departments.event_departments_id;
          public          postgres    false    289            $           1259    17098    event_registers    TABLE     �   CREATE TABLE public.event_registers (
    event_register_id integer NOT NULL,
    user_id integer NOT NULL,
    news_id integer NOT NULL,
    created_date timestamp without time zone NOT NULL
);
 #   DROP TABLE public.event_registers;
       public            postgres    false    6            #           1259    17096 %   event_registers_event_register_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_registers_event_register_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.event_registers_event_register_id_seq;
       public          postgres    false    292    6            �           0    0 %   event_registers_event_register_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.event_registers_event_register_id_seq OWNED BY public.event_registers.event_register_id;
          public          postgres    false    291            .           1259    17138    external_systems    TABLE     �   CREATE TABLE public.external_systems (
    system_id integer NOT NULL,
    title character varying(20),
    description character varying(255),
    api_key character varying(32) NOT NULL,
    is_enable boolean NOT NULL
);
 $   DROP TABLE public.external_systems;
       public            postgres    false    6            -           1259    17136    external_systems_system_id_seq    SEQUENCE     �   CREATE SEQUENCE public.external_systems_system_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.external_systems_system_id_seq;
       public          postgres    false    302    6            �           0    0    external_systems_system_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.external_systems_system_id_seq OWNED BY public.external_systems.system_id;
          public          postgres    false    301            �            1259    16706    feedback_categories    TABLE     �   CREATE TABLE public.feedback_categories (
    category_id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    icon_image_path character varying(255),
    is_private boolean,
    is_special boolean,
    is_delete boolean
);
 '   DROP TABLE public.feedback_categories;
       public            postgres    false    6            �            1259    16704 #   feedback_categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.feedback_categories_category_id_seq;
       public          postgres    false    6    214            �           0    0 #   feedback_categories_category_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.feedback_categories_category_id_seq OWNED BY public.feedback_categories.category_id;
          public          postgres    false    213            0           1259    17146    feedback_category_control_list    TABLE     �   CREATE TABLE public.feedback_category_control_list (
    feedback_category_control_list_id integer NOT NULL,
    category_id integer NOT NULL,
    role_id integer NOT NULL
);
 2   DROP TABLE public.feedback_category_control_list;
       public            postgres    false    6            /           1259    17144 ?   feedback_category_control_lis_feedback_category_control_lis_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_category_control_lis_feedback_category_control_lis_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.feedback_category_control_lis_feedback_category_control_lis_seq;
       public          postgres    false    304    6            �           0    0 ?   feedback_category_control_lis_feedback_category_control_lis_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.feedback_category_control_lis_feedback_category_control_lis_seq OWNED BY public.feedback_category_control_list.feedback_category_control_list_id;
          public          postgres    false    303            �            1259    16847    feedback_comments    TABLE     �  CREATE TABLE public.feedback_comments (
    comment_id integer NOT NULL,
    user_id integer NOT NULL,
    feedback_id integer NOT NULL,
    created_date timestamp without time zone NOT NULL,
    comment text NOT NULL,
    image_path character varying(255),
    latitude character varying(20),
    longitude character varying(20),
    is_delete boolean NOT NULL,
    file_path character varying(255)
);
 %   DROP TABLE public.feedback_comments;
       public            postgres    false    6            �            1259    16845     feedback_comments_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.feedback_comments_comment_id_seq;
       public          postgres    false    6    242            �           0    0     feedback_comments_comment_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.feedback_comments_comment_id_seq OWNED BY public.feedback_comments.comment_id;
          public          postgres    false    241            2           1259    17154    feedback_event_logs    TABLE     (  CREATE TABLE public.feedback_event_logs (
    feedback_event_log_id integer NOT NULL,
    feedback_id integer NOT NULL,
    user_id integer,
    created_date timestamp without time zone NOT NULL,
    event character varying(255) NOT NULL,
    status_id integer NOT NULL,
    system_id integer
);
 '   DROP TABLE public.feedback_event_logs;
       public            postgres    false    6            1           1259    17152 -   feedback_event_logs_feedback_event_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_event_logs_feedback_event_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.feedback_event_logs_feedback_event_log_id_seq;
       public          postgres    false    6    306            �           0    0 -   feedback_event_logs_feedback_event_log_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.feedback_event_logs_feedback_event_log_id_seq OWNED BY public.feedback_event_logs.feedback_event_log_id;
          public          postgres    false    305            8           1259    17184    feedback_images    TABLE     �   CREATE TABLE public.feedback_images (
    image_id integer NOT NULL,
    feedback_id integer NOT NULL,
    image_path character varying(255) NOT NULL
);
 #   DROP TABLE public.feedback_images;
       public            postgres    false    6            7           1259    17182    feedback_images_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_images_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.feedback_images_image_id_seq;
       public          postgres    false    312    6            �           0    0    feedback_images_image_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.feedback_images_image_id_seq OWNED BY public.feedback_images.image_id;
          public          postgres    false    311            :           1259    17192    feedback_status    TABLE     t   CREATE TABLE public.feedback_status (
    status_id integer NOT NULL,
    status character varying(255) NOT NULL
);
 #   DROP TABLE public.feedback_status;
       public            postgres    false    6            9           1259    17190    feedback_status_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_status_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.feedback_status_status_id_seq;
       public          postgres    false    6    314            �           0    0    feedback_status_status_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.feedback_status_status_id_seq OWNED BY public.feedback_status.status_id;
          public          postgres    false    313            4           1259    17162 	   feedbacks    TABLE     �  CREATE TABLE public.feedbacks (
    feedback_id integer NOT NULL,
    user_id integer,
    category_id integer NOT NULL,
    created_date timestamp without time zone NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    latitude character varying(20),
    longitude character varying(20),
    is_private boolean NOT NULL,
    is_delete boolean NOT NULL,
    status_id integer NOT NULL,
    system_id integer
);
    DROP TABLE public.feedbacks;
       public            postgres    false    6            3           1259    17160    feedbacks_feedback_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedbacks_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.feedbacks_feedback_id_seq;
       public          postgres    false    6    308            �           0    0    feedbacks_feedback_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.feedbacks_feedback_id_seq OWNED BY public.feedbacks.feedback_id;
          public          postgres    false    307            G           1259    19682 	   fend_item    TABLE     U  CREATE TABLE public.fend_item (
    id integer NOT NULL,
    research_name character varying(255) NOT NULL,
    contract_file character varying(255) NOT NULL,
    remark character varying(1000) NOT NULL,
    receive_date timestamp without time zone NOT NULL,
    get_back_date timestamp without time zone NOT NULL,
    form_id integer NOT NULL,
    consent_file character varying(255) DEFAULT ''::character varying NOT NULL,
    created_date timestamp without time zone,
    updated_date timestamp without time zone,
    created_by character varying(255),
    updated_by character varying(255)
);
    DROP TABLE public.fend_item;
       public            postgres    false    6            F           1259    19680    fend_item_id_seq    SEQUENCE     y   CREATE SEQUENCE public.fend_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.fend_item_id_seq;
       public          postgres    false    6    583            �           0    0    fend_item_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.fend_item_id_seq OWNED BY public.fend_item.id;
          public          postgres    false    582            E           1259    19656    fend_register_form    TABLE       CREATE TABLE public.fend_register_form (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    telephone character varying(15) NOT NULL,
    birthday timestamp without time zone NOT NULL,
    age integer NOT NULL,
    citizen_id character varying(15) NOT NULL,
    diagnosis_dmd boolean DEFAULT false,
    diagnosis_sma_typ2 boolean DEFAULT false,
    diagnosis_cmt boolean DEFAULT false,
    diagnosis_sma_typ1 boolean DEFAULT false,
    diagnosis_sma_typ3 boolean DEFAULT false,
    diagnosis_other character varying(1000),
    hospital_name character varying(255) NOT NULL,
    doctor_name character varying(255) NOT NULL,
    doctor_hospital_telephone character varying(15) NOT NULL,
    underlying_diseases character varying(1000),
    neuromuscular boolean DEFAULT false,
    neuromuscular_doc character varying(1000),
    disability boolean DEFAULT false,
    disability_doc character varying(1000),
    help character varying(1000),
    email character varying(255),
    consent boolean DEFAULT false,
    created_date timestamp without time zone NOT NULL,
    updated_date timestamp without time zone NOT NULL,
    created_by character varying(255) NOT NULL,
    updated_by character varying(255) NOT NULL,
    parent_first_name character varying(255),
    parent_last_name character varying(255),
    parent_relevancy character varying(255),
    parent_telephone_number character varying(15),
    is_delete boolean DEFAULT false,
    consent_version character varying(15)
);
 &   DROP TABLE public.fend_register_form;
       public            postgres    false    6            D           1259    19654    fend_register_form_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fend_register_form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.fend_register_form_id_seq;
       public          postgres    false    581    6            �           0    0    fend_register_form_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.fend_register_form_id_seq OWNED BY public.fend_register_form.id;
          public          postgres    false    580            I           1259    19693    fend_research    TABLE     �  CREATE TABLE public.fend_research (
    id integer NOT NULL,
    research_name character varying(255) NOT NULL,
    join_date timestamp without time zone NOT NULL,
    research_owner character varying(255) NOT NULL,
    research_contact character varying(255) NOT NULL,
    research_telephone character varying(15) NOT NULL,
    research_remark character varying(255) NOT NULL,
    receive_date timestamp without time zone NOT NULL,
    get_back_date timestamp without time zone NOT NULL,
    form_id integer NOT NULL,
    created_date timestamp without time zone,
    updated_date timestamp without time zone,
    created_by character varying(255),
    updated_by character varying(255)
);
 !   DROP TABLE public.fend_research;
       public            postgres    false    6            H           1259    19691    fend_research_id_seq    SEQUENCE     }   CREATE SEQUENCE public.fend_research_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.fend_research_id_seq;
       public          postgres    false    6    585            �           0    0    fend_research_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.fend_research_id_seq OWNED BY public.fend_research.id;
          public          postgres    false    584            )           1259    19198 
   form_input    TABLE     5  CREATE TABLE public.form_input (
    id integer NOT NULL,
    key integer,
    form_input character varying(100),
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL
);
    DROP TABLE public.form_input;
       public            postgres    false    6            (           1259    19196    form_input_id_seq    SEQUENCE     z   CREATE SEQUENCE public.form_input_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.form_input_id_seq;
       public          postgres    false    553    6            �           0    0    form_input_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.form_input_id_seq OWNED BY public.form_input.id;
          public          postgres    false    552            �           1259    17670    fs_file    TABLE     �   CREATE TABLE public.fs_file (
    id integer NOT NULL,
    bucket character varying(20),
    path character varying(512) NOT NULL,
    url character varying(512) NOT NULL,
    upload_date timestamp without time zone NOT NULL
);
    DROP TABLE public.fs_file;
       public            postgres    false    6            �           1259    17668    fs_file_id_seq    SEQUENCE     w   CREATE SEQUENCE public.fs_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.fs_file_id_seq;
       public          postgres    false    6    416            �           0    0    fs_file_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.fs_file_id_seq OWNED BY public.fs_file.id;
          public          postgres    false    415            �            1259    16507    image_albums    TABLE     r  CREATE TABLE public.image_albums (
    album_id integer NOT NULL,
    user_id integer NOT NULL,
    album_name character varying(255) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    album_for character varying(255) NOT NULL,
    is_delete boolean NOT NULL,
    description text,
    cover_id integer,
    updated_date timestamp without time zone
);
     DROP TABLE public.image_albums;
       public            postgres    false    6            �            1259    16505    image_albums_album_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_albums_album_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.image_albums_album_id_seq;
       public          postgres    false    176    6            �           0    0    image_albums_album_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.image_albums_album_id_seq OWNED BY public.image_albums.album_id;
          public          postgres    false    175            D           1259    17237    images    TABLE     �   CREATE TABLE public.images (
    image_id integer NOT NULL,
    album_id integer NOT NULL,
    created_date timestamp without time zone NOT NULL,
    image_path character varying(255) NOT NULL
);
    DROP TABLE public.images;
       public            postgres    false    6            C           1259    17235    images_image_id_seq    SEQUENCE     |   CREATE SEQUENCE public.images_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.images_image_id_seq;
       public          postgres    false    324    6            �           0    0    images_image_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.images_image_id_seq OWNED BY public.images.image_id;
          public          postgres    false    323            �           1259    18022    inbox_schedule_send    TABLE     <  CREATE TABLE public.inbox_schedule_send (
    inbox_schedule_send_id integer NOT NULL,
    api_key character varying(32),
    channel character varying(10) NOT NULL,
    sender character varying(255),
    message character varying(2000) NOT NULL,
    emails text,
    company_name character varying(1000),
    department_name character varying(1000),
    schedule_time timestamp without time zone NOT NULL,
    feedback_category_id integer,
    sent boolean,
    deptids character varying(2000),
    compids character varying(2000),
    userids character varying(2000)
);
 '   DROP TABLE public.inbox_schedule_send;
       public            postgres    false    6            �           1259    18020 .   inbox_schedule_send_inbox_schedule_send_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inbox_schedule_send_inbox_schedule_send_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.inbox_schedule_send_inbox_schedule_send_id_seq;
       public          postgres    false    6    482            �           0    0 .   inbox_schedule_send_inbox_schedule_send_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.inbox_schedule_send_inbox_schedule_send_id_seq OWNED BY public.inbox_schedule_send.inbox_schedule_send_id;
          public          postgres    false    481            �           1259    17681 	   insurance    TABLE     J  CREATE TABLE public.insurance (
    id integer NOT NULL,
    name character varying(500),
    insurance_type_id integer,
    detail text,
    enable boolean,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
    DROP TABLE public.insurance;
       public            postgres    false    6            �           1259    17692    insurance_choice    TABLE     �  CREATE TABLE public.insurance_choice (
    id integer NOT NULL,
    topic_choice_id integer NOT NULL,
    name character varying(500) NOT NULL,
    detail text,
    parent_id integer,
    exchange_coin double precision,
    default_choice boolean,
    enable boolean,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    template text,
    title character varying(255),
    title_detail character varying(255),
    title_sub_detail character varying(255),
    choice_multiply double precision,
    compensation double precision
);
 $   DROP TABLE public.insurance_choice;
       public            postgres    false    6            �           1259    17690    insurance_choice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insurance_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.insurance_choice_id_seq;
       public          postgres    false    6    420            �           0    0    insurance_choice_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.insurance_choice_id_seq OWNED BY public.insurance_choice.id;
          public          postgres    false    419            �           1259    17679    insurance_id_seq    SEQUENCE     y   CREATE SEQUENCE public.insurance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.insurance_id_seq;
       public          postgres    false    6    418            �           0    0    insurance_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.insurance_id_seq OWNED BY public.insurance.id;
          public          postgres    false    417            �           1259    17703    insurance_join_topic    TABLE     �  CREATE TABLE public.insurance_join_topic (
    id integer NOT NULL,
    insurance_id integer NOT NULL,
    insurance_topic_id integer NOT NULL,
    enable boolean,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    topic_type character varying(120),
    topic_sub_type character varying(120)
);
 (   DROP TABLE public.insurance_join_topic;
       public            postgres    false    6            �           1259    17701    insurance_join_topic_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insurance_join_topic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.insurance_join_topic_id_seq;
       public          postgres    false    6    422            �           0    0    insurance_join_topic_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.insurance_join_topic_id_seq OWNED BY public.insurance_join_topic.id;
          public          postgres    false    421            �           1259    17714    insurance_topic    TABLE     �  CREATE TABLE public.insurance_topic (
    id integer NOT NULL,
    name character varying(500),
    topic_detail text,
    topic_type text,
    enable boolean,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    rate_calculate integer,
    max_compensation integer,
    topic_sub_type character varying(120)
);
 #   DROP TABLE public.insurance_topic;
       public            postgres    false    6            �           1259    17712    insurance_topic_id_seq    SEQUENCE        CREATE SEQUENCE public.insurance_topic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.insurance_topic_id_seq;
       public          postgres    false    424    6            �           0    0    insurance_topic_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.insurance_topic_id_seq OWNED BY public.insurance_topic.id;
          public          postgres    false    423            �           1259    17725    insurance_type    TABLE       CREATE TABLE public.insurance_type (
    id integer NOT NULL,
    name character varying(500),
    enable boolean,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
 "   DROP TABLE public.insurance_type;
       public            postgres    false    6            �           1259    17723    insurance_type_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.insurance_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.insurance_type_id_seq;
       public          postgres    false    6    426            �           0    0    insurance_type_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.insurance_type_id_seq OWNED BY public.insurance_type.id;
          public          postgres    false    425            �           1259    17736    insurance_year    TABLE     %  CREATE TABLE public.insurance_year (
    id integer NOT NULL,
    start_enrollment_id integer,
    insurance_id integer,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
 "   DROP TABLE public.insurance_year;
       public            postgres    false    6            �           1259    17734    insurance_year_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.insurance_year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.insurance_year_id_seq;
       public          postgres    false    428    6            �           0    0    insurance_year_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.insurance_year_id_seq OWNED BY public.insurance_year.id;
          public          postgres    false    427            �           1259    17747    iris_calendar    TABLE     b  CREATE TABLE public.iris_calendar (
    id integer NOT NULL,
    title character varying(1000) NOT NULL,
    description text NOT NULL,
    location text,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone NOT NULL,
    start_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone NOT NULL,
    file_path character varying(1000),
    is_delete boolean DEFAULT false NOT NULL,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL,
    file_name character varying(1000),
    file_size numeric
);
 !   DROP TABLE public.iris_calendar;
       public            postgres    false    6            �           1259    17745    iris_calendar_id_seq    SEQUENCE     }   CREATE SEQUENCE public.iris_calendar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.iris_calendar_id_seq;
       public          postgres    false    430    6            �           0    0    iris_calendar_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.iris_calendar_id_seq OWNED BY public.iris_calendar.id;
          public          postgres    false    429            H           1259    17257    iris_manage_report    TABLE     �   CREATE TABLE public.iris_manage_report (
    id integer NOT NULL,
    name character varying(1000) NOT NULL,
    image_path character varying(1000)
);
 &   DROP TABLE public.iris_manage_report;
       public            postgres    false    6            G           1259    17255    iris_manage_report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iris_manage_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.iris_manage_report_id_seq;
       public          postgres    false    328    6            �           0    0    iris_manage_report_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.iris_manage_report_id_seq OWNED BY public.iris_manage_report.id;
          public          postgres    false    327            J           1259    17268    iris_manage_report_role    TABLE     �   CREATE TABLE public.iris_manage_report_role (
    id integer NOT NULL,
    manage_report_id integer NOT NULL,
    role_id integer NOT NULL
);
 +   DROP TABLE public.iris_manage_report_role;
       public            postgres    false    6            I           1259    17266    iris_manage_report_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iris_manage_report_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.iris_manage_report_role_id_seq;
       public          postgres    false    6    330            �           0    0    iris_manage_report_role_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.iris_manage_report_role_id_seq OWNED BY public.iris_manage_report_role.id;
          public          postgres    false    329            �           1259    17759    iris_report_with_water_mark    TABLE     �   CREATE TABLE public.iris_report_with_water_mark (
    id integer NOT NULL,
    user_id integer NOT NULL,
    report_id integer,
    file_path character varying(500),
    calendar_id integer
);
 /   DROP TABLE public.iris_report_with_water_mark;
       public            postgres    false    6            �           1259    17757 "   iris_report_with_water_mark_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iris_report_with_water_mark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.iris_report_with_water_mark_id_seq;
       public          postgres    false    432    6            �           0    0 "   iris_report_with_water_mark_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.iris_report_with_water_mark_id_seq OWNED BY public.iris_report_with_water_mark.id;
          public          postgres    false    431            L           1259    17276    iris_subsidiaries    TABLE     t  CREATE TABLE public.iris_subsidiaries (
    id integer NOT NULL,
    manage_report_id integer NOT NULL,
    name character varying(1000) NOT NULL,
    year character varying(60) NOT NULL,
    month character varying(60) NOT NULL,
    day character varying(60) NOT NULL,
    file_path character varying(1000),
    is_delete boolean DEFAULT false NOT NULL,
    create_by character varying(500),
    update_by character varying(500),
    create_date timestamp without time zone,
    update_date timestamp without time zone,
    file_name character varying(1000),
    file_size numeric,
    date_time timestamp without time zone
);
 %   DROP TABLE public.iris_subsidiaries;
       public            postgres    false    6            K           1259    17274    iris_subsidiaries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iris_subsidiaries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.iris_subsidiaries_id_seq;
       public          postgres    false    6    332            �           0    0    iris_subsidiaries_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.iris_subsidiaries_id_seq OWNED BY public.iris_subsidiaries.id;
          public          postgres    false    331            �           1259    17770    km    TABLE     s   CREATE TABLE public.km (
    id integer NOT NULL,
    km_id integer NOT NULL,
    title character varying(1000)
);
    DROP TABLE public.km;
       public            postgres    false    6            �           1259    17768 	   km_id_seq    SEQUENCE     r   CREATE SEQUENCE public.km_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.km_id_seq;
       public          postgres    false    434    6            �           0    0 	   km_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE public.km_id_seq OWNED BY public.km.id;
          public          postgres    false    433                       1259    19044    leave_benefits    TABLE     �  CREATE TABLE public.leave_benefits (
    id integer NOT NULL,
    benefit_year_id integer NOT NULL,
    min_value integer,
    max_value integer,
    coin_weight integer NOT NULL,
    updated_date timestamp without time zone,
    updated_by character varying(500) NOT NULL,
    leave_benefits_name character varying(100),
    created_date timestamp without time zone,
    created_by character varying(500),
    enable boolean DEFAULT true
);
 "   DROP TABLE public.leave_benefits;
       public            postgres    false    6                       1259    19042    leave_benefits_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.leave_benefits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.leave_benefits_id_seq;
       public          postgres    false    539    6            �           0    0    leave_benefits_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.leave_benefits_id_seq OWNED BY public.leave_benefits.id;
          public          postgres    false    538            #           1259    19145    leave_benefits_user    TABLE     s  CREATE TABLE public.leave_benefits_user (
    id integer NOT NULL,
    user_id integer NOT NULL,
    leave_benefits_id integer NOT NULL,
    amount integer NOT NULL,
    coin_value integer NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
 '   DROP TABLE public.leave_benefits_user;
       public            postgres    false    6            "           1259    19143    leave_benefits_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.leave_benefits_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.leave_benefits_user_id_seq;
       public          postgres    false    547    6            �           0    0    leave_benefits_user_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.leave_benefits_user_id_seq OWNED BY public.leave_benefits_user.id;
          public          postgres    false    546                       1259    18902    login    TABLE     9   CREATE TABLE public.login (
    mode integer NOT NULL
);
    DROP TABLE public.login;
       public            postgres    false    6            j           1259    17413    message    TABLE     �   CREATE TABLE public.message (
    message_id integer NOT NULL,
    user_id integer NOT NULL,
    sender character varying(255),
    message character varying(2000) NOT NULL,
    created_date timestamp without time zone NOT NULL
);
    DROP TABLE public.message;
       public            postgres    false    6            i           1259    17411    message_message_id_seq    SEQUENCE        CREATE SEQUENCE public.message_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.message_message_id_seq;
       public          postgres    false    362    6            �           0    0    message_message_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.message_message_id_seq OWNED BY public.message.message_id;
          public          postgres    false    361            F           1259    17245    news    TABLE     �  CREATE TABLE public.news (
    news_id integer NOT NULL,
    creator_id integer NOT NULL,
    created_date timestamp without time zone NOT NULL,
    publish_date timestamp without time zone NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    type character varying(50) NOT NULL,
    latitude character varying(20),
    longitude character varying(20),
    reward_point integer,
    youtube_url character varying(255),
    maximum_register integer,
    is_global boolean,
    is_pin boolean NOT NULL,
    is_delete boolean NOT NULL,
    additional_addable boolean,
    point_expired_date timestamp without time zone,
    thumbnail_image_id integer,
    news_expired_date timestamp without time zone,
    is_confidential boolean DEFAULT false NOT NULL,
    is_approve boolean,
    comment_reject character varying(255),
    is_enews boolean,
    enews_type character varying(255)
);
    DROP TABLE public.news;
       public            postgres    false    6            �            1259    16718    news_categories    TABLE     �   CREATE TABLE public.news_categories (
    category_id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    is_delete boolean
);
 #   DROP TABLE public.news_categories;
       public            postgres    false    6            �            1259    16716    news_categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.news_categories_category_id_seq;
       public          postgres    false    216    6            �           0    0    news_categories_category_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.news_categories_category_id_seq OWNED BY public.news_categories.category_id;
          public          postgres    false    215            N           1259    17288    news_category_list    TABLE     �   CREATE TABLE public.news_category_list (
    news_category_list_id integer NOT NULL,
    news_id integer NOT NULL,
    category_id integer NOT NULL
);
 &   DROP TABLE public.news_category_list;
       public            postgres    false    6            M           1259    17286 ,   news_category_list_news_category_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_category_list_news_category_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.news_category_list_news_category_list_id_seq;
       public          postgres    false    6    334            �           0    0 ,   news_category_list_news_category_list_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.news_category_list_news_category_list_id_seq OWNED BY public.news_category_list.news_category_list_id;
          public          postgres    false    333            �            1259    16858    news_comments    TABLE     �  CREATE TABLE public.news_comments (
    comment_id integer NOT NULL,
    user_id integer NOT NULL,
    news_id integer NOT NULL,
    created_date timestamp without time zone NOT NULL,
    comment text NOT NULL,
    image_path character varying(255),
    latitude character varying(20),
    longitude character varying(20),
    is_delete boolean NOT NULL,
    file_path character varying(255)
);
 !   DROP TABLE public.news_comments;
       public            postgres    false    6            �            1259    16856    news_comments_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.news_comments_comment_id_seq;
       public          postgres    false    244    6            �           0    0    news_comments_comment_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.news_comments_comment_id_seq OWNED BY public.news_comments.comment_id;
          public          postgres    false    243            P           1259    17296    news_departments    TABLE     �   CREATE TABLE public.news_departments (
    news_departments_id integer NOT NULL,
    news_id integer NOT NULL,
    department_id integer NOT NULL
);
 $   DROP TABLE public.news_departments;
       public            postgres    false    6            O           1259    17294 (   news_departments_news_departments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_departments_news_departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.news_departments_news_departments_id_seq;
       public          postgres    false    336    6            �           0    0 (   news_departments_news_departments_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.news_departments_news_departments_id_seq OWNED BY public.news_departments.news_departments_id;
          public          postgres    false    335            R           1259    17304    news_favorite_list    TABLE     �   CREATE TABLE public.news_favorite_list (
    news_favorite_list_id integer NOT NULL,
    user_id integer,
    news_id integer
);
 &   DROP TABLE public.news_favorite_list;
       public            postgres    false    6            Q           1259    17302 ,   news_favorite_list_news_favorite_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_favorite_list_news_favorite_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.news_favorite_list_news_favorite_list_id_seq;
       public          postgres    false    338    6            �           0    0 ,   news_favorite_list_news_favorite_list_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.news_favorite_list_news_favorite_list_id_seq OWNED BY public.news_favorite_list.news_favorite_list_id;
          public          postgres    false    337            <           1259    17200 
   news_files    TABLE     �   CREATE TABLE public.news_files (
    file_id integer NOT NULL,
    news_id integer NOT NULL,
    file_path character varying(255) NOT NULL
);
    DROP TABLE public.news_files;
       public            postgres    false    6            ;           1259    17198    news_files_file_id_seq    SEQUENCE        CREATE SEQUENCE public.news_files_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.news_files_file_id_seq;
       public          postgres    false    6    316            �           0    0    news_files_file_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.news_files_file_id_seq OWNED BY public.news_files.file_id;
          public          postgres    false    315            T           1259    17312    news_groups    TABLE     �   CREATE TABLE public.news_groups (
    group_id integer NOT NULL,
    group_name character varying(255) NOT NULL,
    icon_image_path character varying(255),
    is_delete boolean NOT NULL
);
    DROP TABLE public.news_groups;
       public            postgres    false    6            V           1259    17323    news_groups_control_list    TABLE     �   CREATE TABLE public.news_groups_control_list (
    news_groups_control_list_id integer NOT NULL,
    group_id integer NOT NULL,
    role_id integer NOT NULL
);
 ,   DROP TABLE public.news_groups_control_list;
       public            postgres    false    6            U           1259    17321 8   news_groups_control_list_news_groups_control_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_groups_control_list_news_groups_control_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 O   DROP SEQUENCE public.news_groups_control_list_news_groups_control_list_id_seq;
       public          postgres    false    342    6            �           0    0 8   news_groups_control_list_news_groups_control_list_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.news_groups_control_list_news_groups_control_list_id_seq OWNED BY public.news_groups_control_list.news_groups_control_list_id;
          public          postgres    false    341            X           1259    17331    news_groups_department_list    TABLE     �   CREATE TABLE public.news_groups_department_list (
    news_groups_department_list_id integer NOT NULL,
    group_id integer,
    department_id integer
);
 /   DROP TABLE public.news_groups_department_list;
       public            postgres    false    6            W           1259    17329 >   news_groups_department_list_news_groups_department_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_groups_department_list_news_groups_department_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 U   DROP SEQUENCE public.news_groups_department_list_news_groups_department_list_id_seq;
       public          postgres    false    6    344            �           0    0 >   news_groups_department_list_news_groups_department_list_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.news_groups_department_list_news_groups_department_list_id_seq OWNED BY public.news_groups_department_list.news_groups_department_list_id;
          public          postgres    false    343            S           1259    17310    news_groups_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_groups_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.news_groups_group_id_seq;
       public          postgres    false    6    340            �           0    0    news_groups_group_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.news_groups_group_id_seq OWNED BY public.news_groups.group_id;
          public          postgres    false    339            �           1259    18313    news_groups_list    TABLE     �   CREATE TABLE public.news_groups_list (
    news_groups_list_id integer NOT NULL,
    news_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.news_groups_list;
       public            postgres    false    6            �           1259    18311 (   news_groups_list_news_groups_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_groups_list_news_groups_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.news_groups_list_news_groups_list_id_seq;
       public          postgres    false    496    6            �           0    0 (   news_groups_list_news_groups_list_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.news_groups_list_news_groups_list_id_seq OWNED BY public.news_groups_list.news_groups_list_id;
          public          postgres    false    495            Z           1259    17339    news_groups_user_list    TABLE     �   CREATE TABLE public.news_groups_user_list (
    news_groups_user_list_id integer NOT NULL,
    group_id integer,
    user_id integer
);
 )   DROP TABLE public.news_groups_user_list;
       public            postgres    false    6            Y           1259    17337 2   news_groups_user_list_news_groups_user_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_groups_user_list_news_groups_user_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.news_groups_user_list_news_groups_user_list_id_seq;
       public          postgres    false    6    346            �           0    0 2   news_groups_user_list_news_groups_user_list_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.news_groups_user_list_news_groups_user_list_id_seq OWNED BY public.news_groups_user_list.news_groups_user_list_id;
          public          postgres    false    345            \           1259    17347    news_images    TABLE     �   CREATE TABLE public.news_images (
    news_images_id integer NOT NULL,
    news_id integer NOT NULL,
    image_id integer NOT NULL
);
    DROP TABLE public.news_images;
       public            postgres    false    6            [           1259    17345    news_images_news_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_images_news_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.news_images_news_images_id_seq;
       public          postgres    false    348    6            �           0    0    news_images_news_images_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.news_images_news_images_id_seq OWNED BY public.news_images.news_images_id;
          public          postgres    false    347            E           1259    17243    news_news_id_seq    SEQUENCE     y   CREATE SEQUENCE public.news_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.news_news_id_seq;
       public          postgres    false    6    326            �           0    0    news_news_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.news_news_id_seq OWNED BY public.news.news_id;
          public          postgres    false    325                       1259    18795    notification_history    TABLE     �  CREATE TABLE public.notification_history (
    id integer NOT NULL,
    owner_user_id integer NOT NULL,
    sender_user_id integer NOT NULL,
    content_th text NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(255),
    content_en text NOT NULL,
    drive_id integer,
    type character varying(255) NOT NULL,
    read boolean DEFAULT false NOT NULL
);
 (   DROP TABLE public.notification_history;
       public            postgres    false    6                       1259    18793    notification_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notification_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.notification_history_id_seq;
       public          postgres    false    517    6            �           0    0    notification_history_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.notification_history_id_seq OWNED BY public.notification_history.id;
          public          postgres    false    516            ^           1259    17355    notification_queues    TABLE     #  CREATE TABLE public.notification_queues (
    notification_id integer NOT NULL,
    news_id integer NOT NULL,
    user_id integer NOT NULL,
    "interval" bigint NOT NULL,
    next_fire_date timestamp without time zone NOT NULL,
    retry integer NOT NULL,
    max_retry integer NOT NULL
);
 '   DROP TABLE public.notification_queues;
       public            postgres    false    6            ]           1259    17353 '   notification_queues_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notification_queues_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.notification_queues_notification_id_seq;
       public          postgres    false    6    350            �           0    0 '   notification_queues_notification_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.notification_queues_notification_id_seq OWNED BY public.notification_queues.notification_id;
          public          postgres    false    349            �           1259    18047    oauth_access_token    TABLE     (  CREATE TABLE public.oauth_access_token (
    token_id character varying(256),
    token bytea,
    authentication_id character varying(256) NOT NULL,
    user_name character varying(256),
    client_id character varying(256),
    authentication bytea,
    refresh_token character varying(256)
);
 &   DROP TABLE public.oauth_access_token;
       public            postgres    false    6            �           1259    18634    oauth_approvals    TABLE       CREATE TABLE public.oauth_approvals (
    "userId" character varying(256),
    "clientId" character varying(256),
    scope character varying(256),
    status character varying(10),
    "expiresAt" timestamp without time zone,
    "lastModifiedAt" timestamp without time zone
);
 #   DROP TABLE public.oauth_approvals;
       public            postgres    false    6            �           1259    18055    oauth_client_details    TABLE       CREATE TABLE public.oauth_client_details (
    client_id character varying(256) NOT NULL,
    resource_ids character varying(256),
    client_secret character varying(256),
    scope character varying(256),
    authorized_grant_types character varying(256),
    web_server_redirect_uri character varying(256),
    authorities character varying(256),
    access_token_validity integer,
    refresh_token_validity integer,
    additional_information character varying(4096),
    autoapprove character varying(256)
);
 (   DROP TABLE public.oauth_client_details;
       public            postgres    false    6            �           1259    18063    oauth_client_token    TABLE     �   CREATE TABLE public.oauth_client_token (
    token_id character varying(256),
    token bytea,
    authentication_id character varying(256) NOT NULL,
    user_name character varying(256),
    client_id character varying(256)
);
 &   DROP TABLE public.oauth_client_token;
       public            postgres    false    6            �           1259    18640 
   oauth_code    TABLE     d   CREATE TABLE public.oauth_code (
    oauth_code character varying(256),
    authentication bytea
);
    DROP TABLE public.oauth_code;
       public            postgres    false    6            �           1259    18646    oauth_refresh_token    TABLE     |   CREATE TABLE public.oauth_refresh_token (
    token_id character varying(256),
    token bytea,
    authentication bytea
);
 '   DROP TABLE public.oauth_refresh_token;
       public            postgres    false    6                       1259    18765    passenger_request    TABLE       CREATE TABLE public.passenger_request (
    id integer NOT NULL,
    user_id integer NOT NULL,
    drive_id integer NOT NULL,
    remark character varying(255) NOT NULL,
    number_of_passenger integer NOT NULL,
    is_accept boolean DEFAULT false NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(255),
    updated_date timestamp without time zone,
    updated_by character varying(255),
    show_trip_end_button boolean DEFAULT true NOT NULL,
    is_interested boolean DEFAULT false NOT NULL
);
 %   DROP TABLE public.passenger_request;
       public            postgres    false    6                       1259    18763    passenger_request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.passenger_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.passenger_request_id_seq;
       public          postgres    false    515    6            �           0    0    passenger_request_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.passenger_request_id_seq OWNED BY public.passenger_request.id;
          public          postgres    false    514            `           1259    17363    play_events    TABLE     �  CREATE TABLE public.play_events (
    id integer NOT NULL,
    user_id integer NOT NULL,
    title character varying(4000) NOT NULL,
    location text NOT NULL,
    description text NOT NULL,
    start_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone NOT NULL,
    total_no_user_join integer NOT NULL,
    no_user_joined integer NOT NULL,
    is_delete boolean NOT NULL,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    reward_coin integer DEFAULT 0,
    is_cancel boolean NOT NULL,
    qr_code character varying(255),
    qr_code_image character varying(255)
);
    DROP TABLE public.play_events;
       public            postgres    false    6            _           1259    17361    play_events_id_seq    SEQUENCE     {   CREATE SEQUENCE public.play_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.play_events_id_seq;
       public          postgres    false    6    352            �           0    0    play_events_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.play_events_id_seq OWNED BY public.play_events.id;
          public          postgres    false    351            b           1259    17375    play_events_images    TABLE     �   CREATE TABLE public.play_events_images (
    id integer NOT NULL,
    play_event_id integer NOT NULL,
    image_path character varying(500) NOT NULL,
    create_date timestamp without time zone NOT NULL
);
 &   DROP TABLE public.play_events_images;
       public            postgres    false    6            a           1259    17373    play_events_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.play_events_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.play_events_images_id_seq;
       public          postgres    false    6    354            �           0    0    play_events_images_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.play_events_images_id_seq OWNED BY public.play_events_images.id;
          public          postgres    false    353            d           1259    17386    play_user_join_event    TABLE     ]  CREATE TABLE public.play_user_join_event (
    id integer NOT NULL,
    play_event_id integer NOT NULL,
    user_id integer NOT NULL,
    join_date timestamp without time zone NOT NULL,
    image_path character varying(500),
    image_date timestamp without time zone,
    role_name character varying(256) NOT NULL,
    is_got_extra_coin boolean
);
 (   DROP TABLE public.play_user_join_event;
       public            postgres    false    6            c           1259    17384    play_user_join_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.play_user_join_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.play_user_join_event_id_seq;
       public          postgres    false    356    6            �           0    0    play_user_join_event_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.play_user_join_event_id_seq OWNED BY public.play_user_join_event.id;
          public          postgres    false    355            f           1259    17397    point_transaction_log    TABLE     �   CREATE TABLE public.point_transaction_log (
    log_id integer NOT NULL,
    user_id integer NOT NULL,
    message character varying(255) NOT NULL,
    point integer NOT NULL,
    created_date timestamp without time zone NOT NULL
);
 )   DROP TABLE public.point_transaction_log;
       public            postgres    false    6            e           1259    17395     point_transaction_log_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.point_transaction_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.point_transaction_log_log_id_seq;
       public          postgres    false    6    358            �           0    0     point_transaction_log_log_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.point_transaction_log_log_id_seq OWNED BY public.point_transaction_log.log_id;
          public          postgres    false    357            �           1259    17781    pool_car    TABLE     9  CREATE TABLE public.pool_car (
    id integer NOT NULL,
    vehichle_id integer NOT NULL,
    vehicle_license character varying(500) NOT NULL,
    vehicle_name character varying(500),
    latitude double precision,
    longitude double precision,
    location text,
    update_date timestamp without time zone
);
    DROP TABLE public.pool_car;
       public            postgres    false    6            �           1259    17779    pool_car_id_seq    SEQUENCE     x   CREATE SEQUENCE public.pool_car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pool_car_id_seq;
       public          postgres    false    6    436            �           0    0    pool_car_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pool_car_id_seq OWNED BY public.pool_car.id;
          public          postgres    false    435                       1259    17068    pool_report    TABLE     �   CREATE TABLE public.pool_report (
    id integer NOT NULL,
    top_start character varying(500),
    start_times integer NOT NULL,
    top_end character varying(500),
    end_times integer NOT NULL,
    create_date timestamp without time zone NOT NULL
);
    DROP TABLE public.pool_report;
       public            postgres    false    6                       1259    17066    pool_report_id_seq    SEQUENCE     {   CREATE SEQUENCE public.pool_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.pool_report_id_seq;
       public          postgres    false    6    286            �           0    0    pool_report_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.pool_report_id_seq OWNED BY public.pool_report.id;
          public          postgres    false    285            �           1259    17792 
   pool_route    TABLE     �  CREATE TABLE public.pool_route (
    id integer NOT NULL,
    pool_id integer NOT NULL,
    line_id integer NOT NULL,
    station_id integer NOT NULL,
    type character varying(500) NOT NULL,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL
);
    DROP TABLE public.pool_route;
       public            postgres    false    6            �           1259    17790    pool_route_id_seq    SEQUENCE     z   CREATE SEQUENCE public.pool_route_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pool_route_id_seq;
       public          postgres    false    6    438            �           0    0    pool_route_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.pool_route_id_seq OWNED BY public.pool_route.id;
          public          postgres    false    437            �           1259    17803    pool_station    TABLE     �   CREATE TABLE public.pool_station (
    id integer NOT NULL,
    station_name character varying(500),
    latitude double precision,
    longitude double precision,
    indexs integer
);
     DROP TABLE public.pool_station;
       public            postgres    false    6            �           1259    17801    pool_station_id_seq    SEQUENCE     |   CREATE SEQUENCE public.pool_station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pool_station_id_seq;
       public          postgres    false    6    440            �           0    0    pool_station_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pool_station_id_seq OWNED BY public.pool_station.id;
          public          postgres    false    439            �           1259    17814    pool_station_time    TABLE     �   CREATE TABLE public.pool_station_time (
    id integer NOT NULL,
    pool_line_id integer NOT NULL,
    station_id integer NOT NULL,
    "time" character varying(500) NOT NULL,
    type character varying(500) NOT NULL
);
 %   DROP TABLE public.pool_station_time;
       public            postgres    false    6            �           1259    17812    pool_station_time_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pool_station_time_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pool_station_time_id_seq;
       public          postgres    false    442    6            �           0    0    pool_station_time_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pool_station_time_id_seq OWNED BY public.pool_station_time.id;
          public          postgres    false    441            �           1259    17825    product    TABLE     s  CREATE TABLE public.product (
    id integer NOT NULL,
    brand_id integer,
    product_api character varying(255),
    thumbnail_image character varying(255),
    quantity integer,
    remain integer,
    normal_coin double precision NOT NULL,
    special_coin double precision,
    title character varying(255),
    name character varying(255),
    description text,
    enable boolean,
    expire_date timestamp without time zone,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    serial_enable boolean,
    category_id integer,
    store_id character varying(255),
    mask_shipping_cost double precision,
    mask_gp double precision,
    store_product_code character varying(255),
    vendor character varying(255),
    exchange_coin_enable boolean
);
    DROP TABLE public.product;
       public            postgres    false    6            �           1259    17836    product_category    TABLE     *  CREATE TABLE public.product_category (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    enable boolean,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
 $   DROP TABLE public.product_category;
       public            postgres    false    6            �           1259    17834    product_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.product_category_id_seq;
       public          postgres    false    446    6            �           0    0    product_category_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.product_category_id_seq OWNED BY public.product_category.id;
          public          postgres    false    445            +           1259    19209    product_form_input    TABLE     8  CREATE TABLE public.product_form_input (
    id integer NOT NULL,
    product_id integer,
    form_input_id integer,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL
);
 &   DROP TABLE public.product_form_input;
       public            postgres    false    6            *           1259    19207    product_form_input_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_form_input_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.product_form_input_id_seq;
       public          postgres    false    6    555            �           0    0    product_form_input_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.product_form_input_id_seq OWNED BY public.product_form_input.id;
          public          postgres    false    554            �           1259    17823    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    444    6            �           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    443            �           1259    17847    product_image    TABLE     9  CREATE TABLE public.product_image (
    id integer NOT NULL,
    product_id integer NOT NULL,
    image_url character varying(255) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
 !   DROP TABLE public.product_image;
       public            postgres    false    6            �           1259    17845    product_image_id_seq    SEQUENCE     }   CREATE SEQUENCE public.product_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_image_id_seq;
       public          postgres    false    6    448            �           0    0    product_image_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_image_id_seq OWNED BY public.product_image.id;
          public          postgres    false    447            �           1259    17858    product_serial    TABLE     |  CREATE TABLE public.product_serial (
    id integer NOT NULL,
    product_id integer NOT NULL,
    serial_number character varying(120) NOT NULL,
    serial_qty integer,
    serial_exchange boolean NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
 "   DROP TABLE public.product_serial;
       public            postgres    false    6            �           1259    17856    product_serial_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.product_serial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_serial_id_seq;
       public          postgres    false    450    6            �           0    0    product_serial_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_serial_id_seq OWNED BY public.product_serial.id;
          public          postgres    false    449            h           1259    17405    readed    TABLE     �   CREATE TABLE public.readed (
    readed_id integer NOT NULL,
    user_id integer NOT NULL,
    news_id integer NOT NULL,
    created_date timestamp without time zone NOT NULL
);
    DROP TABLE public.readed;
       public            postgres    false    6            g           1259    17403    readed_readed_id_seq    SEQUENCE     }   CREATE SEQUENCE public.readed_readed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.readed_readed_id_seq;
       public          postgres    false    360    6            �           0    0    readed_readed_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.readed_readed_id_seq OWNED BY public.readed.readed_id;
          public          postgres    false    359            1           1259    19254    relative    TABLE     -  CREATE TABLE public.relative (
    id integer NOT NULL,
    title character varying(256) NOT NULL,
    firstname character varying(256) NOT NULL,
    lastname character varying(256) NOT NULL,
    national_id character varying(13) NOT NULL,
    user_id integer NOT NULL,
    relative_type_id integer NOT NULL,
    birth_day timestamp without time zone,
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    enable boolean DEFAULT true
);
    DROP TABLE public.relative;
       public            postgres    false    6                       1259    19087    relative_benefits    TABLE     w  CREATE TABLE public.relative_benefits (
    id integer NOT NULL,
    benefit_year_id integer NOT NULL,
    relative_benefits_name character varying(100),
    updated_date date,
    updated_by character varying(500) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(500),
    enable boolean DEFAULT true,
    relative_type_id integer
);
 %   DROP TABLE public.relative_benefits;
       public            postgres    false    6            !           1259    19097    relative_benefits_category    TABLE     �  CREATE TABLE public.relative_benefits_category (
    id integer NOT NULL,
    relative_benefits_id integer NOT NULL,
    category_name character varying(100),
    category_icon character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    created_date timestamp without time zone,
    created_by character varying(500),
    probation_access boolean DEFAULT true,
    enable boolean DEFAULT true
);
 .   DROP TABLE public.relative_benefits_category;
       public            postgres    false    6                        1259    19095 !   relative_benefits_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.relative_benefits_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.relative_benefits_category_id_seq;
       public          postgres    false    545    6            �           0    0 !   relative_benefits_category_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.relative_benefits_category_id_seq OWNED BY public.relative_benefits_category.id;
          public          postgres    false    544            7           1259    19373    relative_benefits_choice_tag    TABLE     q  CREATE TABLE public.relative_benefits_choice_tag (
    id integer NOT NULL,
    relative_benefits_choices_id integer NOT NULL,
    tag_id integer NOT NULL,
    tagged_price numeric(10,2) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500)
);
 0   DROP TABLE public.relative_benefits_choice_tag;
       public            postgres    false    6            6           1259    19371 #   relative_benefits_choice_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.relative_benefits_choice_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.relative_benefits_choice_tag_id_seq;
       public          postgres    false    6    567            �           0    0 #   relative_benefits_choice_tag_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.relative_benefits_choice_tag_id_seq OWNED BY public.relative_benefits_choice_tag.id;
          public          postgres    false    566            '           1259    19182    relative_benefits_choices    TABLE       CREATE TABLE public.relative_benefits_choices (
    id integer NOT NULL,
    relative_benefits_category_id integer NOT NULL,
    choices_name character varying(500) NOT NULL,
    choices_description character varying(500),
    default_coin_value numeric(10,2) NOT NULL,
    consent_details character varying(500),
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    enable boolean DEFAULT true
);
 -   DROP TABLE public.relative_benefits_choices;
       public            postgres    false    6            &           1259    19180     relative_benefits_choices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.relative_benefits_choices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.relative_benefits_choices_id_seq;
       public          postgres    false    551    6            �           0    0     relative_benefits_choices_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.relative_benefits_choices_id_seq OWNED BY public.relative_benefits_choices.id;
          public          postgres    false    550            0           1259    19252    relative_id_seq    SEQUENCE     x   CREATE SEQUENCE public.relative_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.relative_id_seq;
       public          postgres    false    561    6            �           0    0    relative_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.relative_id_seq OWNED BY public.relative.id;
          public          postgres    false    560            ;           1259    19416    relative_selected_choices    TABLE     �  CREATE TABLE public.relative_selected_choices (
    id integer NOT NULL,
    relative_benefits_choices_id integer NOT NULL,
    user_id integer NOT NULL,
    selected_coin_value numeric(10,2),
    user_consent boolean DEFAULT false,
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    relative_benefits_category_id integer NOT NULL,
    relative_id integer NOT NULL
);
 -   DROP TABLE public.relative_selected_choices;
       public            postgres    false    6            :           1259    19414     relative_selected_choices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.relative_selected_choices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.relative_selected_choices_id_seq;
       public          postgres    false    571    6            �           0    0     relative_selected_choices_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.relative_selected_choices_id_seq OWNED BY public.relative_selected_choices.id;
          public          postgres    false    570            /           1259    19246    relative_type    TABLE     t  CREATE TABLE public.relative_type (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    enable boolean DEFAULT true,
    max_number integer,
    description character varying(500)
);
 !   DROP TABLE public.relative_type;
       public            postgres    false    6            .           1259    19244    relative_type_id_seq    SEQUENCE     }   CREATE SEQUENCE public.relative_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.relative_type_id_seq;
       public          postgres    false    559    6            �           0    0    relative_type_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.relative_type_id_seq OWNED BY public.relative_type.id;
          public          postgres    false    558            x           1259    17478    request_status    TABLE     s   CREATE TABLE public.request_status (
    status_id integer NOT NULL,
    status character varying(255) NOT NULL
);
 "   DROP TABLE public.request_status;
       public            postgres    false    6            w           1259    17476    request_status_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.request_status_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.request_status_status_id_seq;
       public          postgres    false    376    6            �           0    0    request_status_status_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.request_status_status_id_seq OWNED BY public.request_status.status_id;
          public          postgres    false    375            z           1259    17486    requests    TABLE     �   CREATE TABLE public.requests (
    request_id integer NOT NULL,
    user_id integer NOT NULL,
    reward_id integer NOT NULL,
    seek_date timestamp without time zone NOT NULL,
    quantity integer,
    status_id integer NOT NULL,
    point integer
);
    DROP TABLE public.requests;
       public            postgres    false    6            y           1259    17484    requests_request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.requests_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.requests_request_id_seq;
       public          postgres    false    6    378            �           0    0    requests_request_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.requests_request_id_seq OWNED BY public.requests.request_id;
          public          postgres    false    377            �            1259    16726    reward_categories    TABLE     �   CREATE TABLE public.reward_categories (
    category_id integer NOT NULL,
    category_name character varying(255) NOT NULL,
    icon_image_path character varying(255),
    is_delete boolean
);
 %   DROP TABLE public.reward_categories;
       public            postgres    false    6            �            1259    16724 !   reward_categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reward_categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.reward_categories_category_id_seq;
       public          postgres    false    218    6            �           0    0 !   reward_categories_category_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.reward_categories_category_id_seq OWNED BY public.reward_categories.category_id;
          public          postgres    false    217            l           1259    17424    reward_category_list    TABLE     �   CREATE TABLE public.reward_category_list (
    reward_category_list_id integer NOT NULL,
    reward_id integer NOT NULL,
    category_id integer NOT NULL
);
 (   DROP TABLE public.reward_category_list;
       public            postgres    false    6            k           1259    17422 0   reward_category_list_reward_category_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reward_category_list_reward_category_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.reward_category_list_reward_category_list_id_seq;
       public          postgres    false    364    6            �           0    0 0   reward_category_list_reward_category_list_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.reward_category_list_reward_category_list_id_seq OWNED BY public.reward_category_list.reward_category_list_id;
          public          postgres    false    363            p           1259    17443    reward_images    TABLE     �   CREATE TABLE public.reward_images (
    reward_images_id integer NOT NULL,
    reward_id integer NOT NULL,
    image_id integer NOT NULL
);
 !   DROP TABLE public.reward_images;
       public            postgres    false    6            o           1259    17441 "   reward_images_reward_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reward_images_reward_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.reward_images_reward_images_id_seq;
       public          postgres    false    6    368            �           0    0 "   reward_images_reward_images_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.reward_images_reward_images_id_seq OWNED BY public.reward_images.reward_images_id;
          public          postgres    false    367            n           1259    17432    rewards    TABLE     �  CREATE TABLE public.rewards (
    reward_id integer NOT NULL,
    reward_name character varying(255) NOT NULL,
    reward_detail text NOT NULL,
    thumbnail_image_id integer,
    point_require integer,
    quantity integer,
    created_date timestamp without time zone NOT NULL,
    publish_date timestamp without time zone NOT NULL,
    expired_date timestamp without time zone,
    is_delete boolean,
    "interval" bigint,
    number_per_request integer,
    full_detail text
);
    DROP TABLE public.rewards;
       public            postgres    false    6            m           1259    17430    rewards_reward_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.rewards_reward_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.rewards_reward_id_seq;
       public          postgres    false    6    366            �           0    0    rewards_reward_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.rewards_reward_id_seq OWNED BY public.rewards.reward_id;
          public          postgres    false    365            >           1259    17208    roles    TABLE     �   CREATE TABLE public.roles (
    role_id integer NOT NULL,
    role_name character varying(255) NOT NULL,
    is_delete boolean
);
    DROP TABLE public.roles;
       public            postgres    false    6            =           1259    17206    roles_role_id_seq    SEQUENCE     z   CREATE SEQUENCE public.roles_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.roles_role_id_seq;
       public          postgres    false    318    6            �           0    0    roles_role_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.roles_role_id_seq OWNED BY public.roles.role_id;
          public          postgres    false    317                       1259    19063    self_benefits    TABLE     r  CREATE TABLE public.self_benefits (
    id integer NOT NULL,
    benefit_year_id integer NOT NULL,
    self_benefits_name character varying(100),
    updated_date date,
    updated_by character varying(500) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(500),
    enable boolean DEFAULT true,
    icon character varying(500)
);
 !   DROP TABLE public.self_benefits;
       public            postgres    false    6                       1259    19073    self_benefits_category    TABLE     �  CREATE TABLE public.self_benefits_category (
    id integer NOT NULL,
    self_benefits_id integer NOT NULL,
    category_name character varying(100),
    category_icon character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    created_date timestamp without time zone,
    created_by character varying(500),
    probation_access boolean DEFAULT true,
    enable boolean DEFAULT true
);
 *   DROP TABLE public.self_benefits_category;
       public            postgres    false    6                       1259    19071    self_benefits_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.self_benefits_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.self_benefits_category_id_seq;
       public          postgres    false    542    6            �           0    0    self_benefits_category_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.self_benefits_category_id_seq OWNED BY public.self_benefits_category.id;
          public          postgres    false    541            5           1259    19352    self_benefits_choice_tag    TABLE     i  CREATE TABLE public.self_benefits_choice_tag (
    id integer NOT NULL,
    self_benefits_choices_id integer NOT NULL,
    tag_id integer NOT NULL,
    tagged_price numeric(10,2) NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500)
);
 ,   DROP TABLE public.self_benefits_choice_tag;
       public            postgres    false    6            4           1259    19350    self_benefits_choice_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.self_benefits_choice_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.self_benefits_choice_tag_id_seq;
       public          postgres    false    6    565            �           0    0    self_benefits_choice_tag_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.self_benefits_choice_tag_id_seq OWNED BY public.self_benefits_choice_tag.id;
          public          postgres    false    564            %           1259    19166    self_benefits_choices    TABLE     �  CREATE TABLE public.self_benefits_choices (
    id integer NOT NULL,
    self_benefits_category_id integer NOT NULL,
    choices_name character varying(500) NOT NULL,
    choices_description character varying(500),
    default_coin_value numeric(10,2) NOT NULL,
    consent_details character varying(500),
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    enable boolean DEFAULT true
);
 )   DROP TABLE public.self_benefits_choices;
       public            postgres    false    6            $           1259    19164    self_benefits_choices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.self_benefits_choices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.self_benefits_choices_id_seq;
       public          postgres    false    549    6            �           0    0    self_benefits_choices_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.self_benefits_choices_id_seq OWNED BY public.self_benefits_choices.id;
          public          postgres    false    548            �           1259    18706    shop_banner    TABLE     e  CREATE TABLE public.shop_banner (
    id integer NOT NULL,
    product_id integer,
    image_path character varying(500) NOT NULL,
    indexs integer NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    category_id integer
);
    DROP TABLE public.shop_banner;
       public            postgres    false    6            �           1259    18704    shop_banner_id_seq    SEQUENCE     {   CREATE SEQUENCE public.shop_banner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.shop_banner_id_seq;
       public          postgres    false    507    6            �           0    0    shop_banner_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.shop_banner_id_seq OWNED BY public.shop_banner.id;
          public          postgres    false    506            3           1259    19278    tag    TABLE     �  CREATE TABLE public.tag (
    id integer NOT NULL,
    tag_name character varying(500) NOT NULL,
    tag_description character varying(500),
    tag_color character varying(500),
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    consent_details character varying(500),
    coin_value integer NOT NULL
);
    DROP TABLE public.tag;
       public            postgres    false    6            2           1259    19276 
   tag_id_seq    SEQUENCE     s   CREATE SEQUENCE public.tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.tag_id_seq;
       public          postgres    false    563    6            �           0    0 
   tag_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;
          public          postgres    false    562                       1259    18992    thaddr_district    TABLE     |  CREATE TABLE public.thaddr_district (
    id integer NOT NULL,
    district_code character varying(100),
    district_name character varying(100),
    province_id integer,
    amphoe_code character varying(100),
    create_date timestamp without time zone,
    update_date timestamp without time zone,
    create_by character varying(500),
    update_by character varying(500)
);
 #   DROP TABLE public.thaddr_district;
       public            postgres    false    6                       1259    18990    thaddr_district_id_seq    SEQUENCE        CREATE SEQUENCE public.thaddr_district_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.thaddr_district_id_seq;
       public          postgres    false    534    6            �           0    0    thaddr_district_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.thaddr_district_id_seq OWNED BY public.thaddr_district.id;
          public          postgres    false    533                       1259    18981    thaddr_province    TABLE     e  CREATE TABLE public.thaddr_province (
    id integer NOT NULL,
    province_code character varying(100) NOT NULL,
    province_name character varying(100) NOT NULL,
    create_date timestamp without time zone,
    update_date timestamp without time zone,
    create_by character varying(500),
    update_by character varying(500),
    country_id integer
);
 #   DROP TABLE public.thaddr_province;
       public            postgres    false    6                       1259    18979    thaddr_province_id_seq    SEQUENCE        CREATE SEQUENCE public.thaddr_province_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.thaddr_province_id_seq;
       public          postgres    false    6    532                        0    0    thaddr_province_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.thaddr_province_id_seq OWNED BY public.thaddr_province.id;
          public          postgres    false    531                       1259    19008    thaddr_subdistrict    TABLE     �  CREATE TABLE public.thaddr_subdistrict (
    id integer NOT NULL,
    subdistrict_code character varying(100),
    subdistrict_name character varying(100),
    zip_code character varying(100),
    province_id integer,
    district_id integer,
    create_date timestamp without time zone,
    update_date timestamp without time zone,
    create_by character varying(500),
    update_by character varying(500)
);
 &   DROP TABLE public.thaddr_subdistrict;
       public            postgres    false    6                       1259    19006    thaddr_subdistrict_id_seq    SEQUENCE     �   CREATE SEQUENCE public.thaddr_subdistrict_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.thaddr_subdistrict_id_seq;
       public          postgres    false    536    6                       0    0    thaddr_subdistrict_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.thaddr_subdistrict_id_seq OWNED BY public.thaddr_subdistrict.id;
          public          postgres    false    535                       1259    18839    thaioil_coins_record    TABLE     �  CREATE TABLE public.thaioil_coins_record (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    job_id integer NOT NULL,
    type character varying(120) NOT NULL,
    coins integer NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(255),
    updated_date timestamp without time zone,
    updated_by character varying(255),
    status_successful boolean NOT NULL
);
 (   DROP TABLE public.thaioil_coins_record;
       public            postgres    false    6                       1259    18837    thaioil_coins_record_id_seq    SEQUENCE     �   CREATE SEQUENCE public.thaioil_coins_record_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.thaioil_coins_record_id_seq;
       public          postgres    false    6    519                       0    0    thaioil_coins_record_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.thaioil_coins_record_id_seq OWNED BY public.thaioil_coins_record.id;
          public          postgres    false    518            B           1259    17229    thread_images    TABLE     �   CREATE TABLE public.thread_images (
    thread_images_id integer NOT NULL,
    thread_id integer NOT NULL,
    image_id integer NOT NULL
);
 !   DROP TABLE public.thread_images;
       public            postgres    false    6            A           1259    17227 "   thread_images_thread_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.thread_images_thread_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.thread_images_thread_images_id_seq;
       public          postgres    false    322    6                       0    0 "   thread_images_thread_images_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.thread_images_thread_images_id_seq OWNED BY public.thread_images.thread_images_id;
          public          postgres    false    321            r           1259    17451    top_coin_transaction_log    TABLE       CREATE TABLE public.top_coin_transaction_log (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(120) NOT NULL,
    digital_news_id integer,
    digital_news_product_id integer,
    odyssey_id integer,
    coin integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    expire_date timestamp without time zone,
    third_party_id integer,
    play_event_id integer,
    km_id integer,
    wellbeing_event_id integer,
    sub_type character varying(120),
    title character varying(500)
);
 ,   DROP TABLE public.top_coin_transaction_log;
       public            postgres    false    6            q           1259    17449    top_coin_transaction_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.top_coin_transaction_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.top_coin_transaction_log_id_seq;
       public          postgres    false    370    6                       0    0    top_coin_transaction_log_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.top_coin_transaction_log_id_seq OWNED BY public.top_coin_transaction_log.id;
          public          postgres    false    369            �           1259    17869    top_donate_activity    TABLE     �   CREATE TABLE public.top_donate_activity (
    id integer NOT NULL,
    activity_name text NOT NULL,
    index integer,
    point integer DEFAULT 0 NOT NULL
);
 '   DROP TABLE public.top_donate_activity;
       public            postgres    false    6            �           1259    17867    top_donate_activity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.top_donate_activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.top_donate_activity_id_seq;
       public          postgres    false    6    452                       0    0    top_donate_activity_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.top_donate_activity_id_seq OWNED BY public.top_donate_activity.id;
          public          postgres    false    451            �            1259    16822    top_donate_coin    TABLE     �   CREATE TABLE public.top_donate_coin (
    id integer NOT NULL,
    user_id integer NOT NULL,
    activity_id integer NOT NULL,
    coin integer DEFAULT 0 NOT NULL,
    create_date timestamp without time zone NOT NULL
);
 #   DROP TABLE public.top_donate_coin;
       public            postgres    false    6            �            1259    16820    top_donate_coin_id_seq    SEQUENCE        CREATE SEQUENCE public.top_donate_coin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.top_donate_coin_id_seq;
       public          postgres    false    6    236                       0    0    top_donate_coin_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.top_donate_coin_id_seq OWNED BY public.top_donate_coin.id;
          public          postgres    false    235            �           1259    17881    top_donate_comment    TABLE     �   CREATE TABLE public.top_donate_comment (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    comment text,
    create_date timestamp without time zone NOT NULL
);
 &   DROP TABLE public.top_donate_comment;
       public            postgres    false    6            �           1259    17879    top_donate_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.top_donate_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.top_donate_comment_id_seq;
       public          postgres    false    6    454                       0    0    top_donate_comment_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.top_donate_comment_id_seq OWNED BY public.top_donate_comment.id;
          public          postgres    false    453            �           1259    17892    top_donate_foundation    TABLE     }   CREATE TABLE public.top_donate_foundation (
    id integer NOT NULL,
    foundation_name text NOT NULL,
    index integer
);
 )   DROP TABLE public.top_donate_foundation;
       public            postgres    false    6            �           1259    17890    top_donate_foundation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.top_donate_foundation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.top_donate_foundation_id_seq;
       public          postgres    false    6    456                       0    0    top_donate_foundation_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.top_donate_foundation_id_seq OWNED BY public.top_donate_foundation.id;
          public          postgres    false    455            �           1259    17903    top_donate_like    TABLE     �   CREATE TABLE public.top_donate_like (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL
);
 #   DROP TABLE public.top_donate_like;
       public            postgres    false    6            �           1259    17901    top_donate_like_id_seq    SEQUENCE        CREATE SEQUENCE public.top_donate_like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.top_donate_like_id_seq;
       public          postgres    false    6    458            	           0    0    top_donate_like_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.top_donate_like_id_seq OWNED BY public.top_donate_like.id;
          public          postgres    false    457            �           1259    17911    top_donate_post    TABLE     �  CREATE TABLE public.top_donate_post (
    id integer NOT NULL,
    description text,
    user_id integer NOT NULL,
    activity_id integer NOT NULL,
    donate_id integer NOT NULL,
    start_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone NOT NULL,
    time_period character varying(500),
    location character varying(500),
    image_url text,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone
);
 #   DROP TABLE public.top_donate_post;
       public            postgres    false    6            �           1259    17909    top_donate_post_id_seq    SEQUENCE        CREATE SEQUENCE public.top_donate_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.top_donate_post_id_seq;
       public          postgres    false    460    6            
           0    0    top_donate_post_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.top_donate_post_id_seq OWNED BY public.top_donate_post.id;
          public          postgres    false    459            �           1259    17922    top_donate_sub_other    TABLE     �   CREATE TABLE public.top_donate_sub_other (
    id integer NOT NULL,
    post_id integer NOT NULL,
    activity_id integer NOT NULL,
    user_id integer NOT NULL,
    other text,
    create_date timestamp without time zone NOT NULL
);
 (   DROP TABLE public.top_donate_sub_other;
       public            postgres    false    6            �           1259    17920    top_donate_sub_other_id_seq    SEQUENCE     �   CREATE SEQUENCE public.top_donate_sub_other_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.top_donate_sub_other_id_seq;
       public          postgres    false    6    462                       0    0    top_donate_sub_other_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.top_donate_sub_other_id_seq OWNED BY public.top_donate_sub_other.id;
          public          postgres    false    461            �           1259    17933    topic_choice    TABLE     r  CREATE TABLE public.topic_choice (
    id integer NOT NULL,
    topic_id integer,
    value integer,
    name character varying(255),
    topic_choice_detail text,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    fix_calculate_enable boolean
);
     DROP TABLE public.topic_choice;
       public            postgres    false    6            �           1259    17931    topic_choice_id_seq    SEQUENCE     |   CREATE SEQUENCE public.topic_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.topic_choice_id_seq;
       public          postgres    false    6    464                       0    0    topic_choice_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.topic_choice_id_seq OWNED BY public.topic_choice.id;
          public          postgres    false    463                       1259    18946    user_address    TABLE       CREATE TABLE public.user_address (
    id integer NOT NULL,
    user_id integer,
    street character varying(100),
    sub_district character varying(100),
    district character varying(100),
    province character varying(100),
    postcode character varying(100),
    country character varying(100),
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL,
    province_id integer,
    district_id integer,
    sub_district_id integer,
    country_code character varying(255),
    province_code character varying(255),
    amphoe_code character varying(255),
    subdistrict_code character varying(255),
    country_id integer
);
     DROP TABLE public.user_address;
       public            postgres    false    6                       1259    18944    user_address_id_seq    SEQUENCE     |   CREATE SEQUENCE public.user_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_address_id_seq;
       public          postgres    false    6    530                       0    0    user_address_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_address_id_seq OWNED BY public.user_address.id;
          public          postgres    false    529                       1259    18935    user_app_shortcut    TABLE     E  CREATE TABLE public.user_app_shortcut (
    id integer NOT NULL,
    app_shortcut_id integer NOT NULL,
    user_id integer NOT NULL,
    indexs integer,
    created_date timestamp without time zone,
    created_by character varying(255),
    updated_date timestamp without time zone,
    updated_by character varying(255)
);
 %   DROP TABLE public.user_app_shortcut;
       public            postgres    false    6                       1259    18933    user_app_shortcut_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_app_shortcut_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.user_app_shortcut_id_seq;
       public          postgres    false    6    528                       0    0    user_app_shortcut_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.user_app_shortcut_id_seq OWNED BY public.user_app_shortcut.id;
          public          postgres    false    527            t           1259    17462    user_choice    TABLE       CREATE TABLE public.user_choice (
    user_choice_id integer NOT NULL,
    user_id integer NOT NULL,
    news_id integer NOT NULL,
    choice_id integer NOT NULL,
    created_date timestamp without time zone NOT NULL,
    additional character varying(255)
);
    DROP TABLE public.user_choice;
       public            postgres    false    6            s           1259    17460    user_choice_user_choice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_choice_user_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.user_choice_user_choice_id_seq;
       public          postgres    false    6    372                       0    0    user_choice_user_choice_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.user_choice_user_choice_id_seq OWNED BY public.user_choice.user_choice_id;
          public          postgres    false    371            �           1259    17944 
   user_claim    TABLE     �  CREATE TABLE public.user_claim (
    id integer NOT NULL,
    user_id integer NOT NULL,
    claim_id integer,
    exchange_coin double precision,
    claim_name character varying(255),
    claim_date timestamp without time zone,
    receipt_file_url character varying(255),
    citizen_file_url character varying(255),
    accept boolean,
    remark text,
    accept_by character varying(255),
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    user_claim_price double precision,
    user_remark character varying(500),
    refund_date timestamp without time zone
);
    DROP TABLE public.user_claim;
       public            postgres    false    6            �           1259    17942    user_claim_id_seq    SEQUENCE     z   CREATE SEQUENCE public.user_claim_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_claim_id_seq;
       public          postgres    false    6    466                       0    0    user_claim_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_claim_id_seq OWNED BY public.user_claim.id;
          public          postgres    false    465            v           1259    17470    user_departments    TABLE     �   CREATE TABLE public.user_departments (
    user_departments_id integer NOT NULL,
    department_id integer NOT NULL,
    user_id integer NOT NULL
);
 $   DROP TABLE public.user_departments;
       public            postgres    false    6            u           1259    17468 (   user_departments_user_departments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_departments_user_departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.user_departments_user_departments_id_seq;
       public          postgres    false    374    6                       0    0 (   user_departments_user_departments_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.user_departments_user_departments_id_seq OWNED BY public.user_departments.user_departments_id;
          public          postgres    false    373            �           1259    17953    user_family    TABLE     K  CREATE TABLE public.user_family (
    id integer NOT NULL,
    user_id integer NOT NULL,
    first_name character varying(500) NOT NULL,
    last_name character varying(500) NOT NULL,
    relationship character varying(120),
    citizen_id character varying(120),
    profile_image_url character varying(500),
    leave_dat integer,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    birth_day timestamp without time zone,
    name_title character varying(120)
);
    DROP TABLE public.user_family;
       public            postgres    false    6            �           1259    17951    user_family_id_seq    SEQUENCE     {   CREATE SEQUENCE public.user_family_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.user_family_id_seq;
       public          postgres    false    6    468                       0    0    user_family_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.user_family_id_seq OWNED BY public.user_family.id;
          public          postgres    false    467            �           1259    17964 "   user_family_insurance_topic_choice    TABLE     �  CREATE TABLE public.user_family_insurance_topic_choice (
    id integer NOT NULL,
    user_id integer NOT NULL,
    family_id integer NOT NULL,
    topic_choice_id integer NOT NULL,
    choice_id integer NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
 6   DROP TABLE public.user_family_insurance_topic_choice;
       public            postgres    false    6            �           1259    17962 )   user_family_insurance_topic_choice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_family_insurance_topic_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.user_family_insurance_topic_choice_id_seq;
       public          postgres    false    470    6                       0    0 )   user_family_insurance_topic_choice_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_family_insurance_topic_choice_id_seq OWNED BY public.user_family_insurance_topic_choice.id;
          public          postgres    false    469            �           1259    17975    user_first_join_odyssey    TABLE     �   CREATE TABLE public.user_first_join_odyssey (
    id integer NOT NULL,
    user_id integer NOT NULL,
    is_join boolean NOT NULL
);
 +   DROP TABLE public.user_first_join_odyssey;
       public            postgres    false    6            �           1259    17973    user_first_join_odyssey_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_first_join_odyssey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.user_first_join_odyssey_id_seq;
       public          postgres    false    6    472                       0    0    user_first_join_odyssey_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.user_first_join_odyssey_id_seq OWNED BY public.user_first_join_odyssey.id;
          public          postgres    false    471            �           1259    17983    user_insurance_topic_choice    TABLE     t  CREATE TABLE public.user_insurance_topic_choice (
    id integer NOT NULL,
    user_id integer NOT NULL,
    topic_choice_id integer NOT NULL,
    choice_id integer NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256),
    set_default boolean
);
 /   DROP TABLE public.user_insurance_topic_choice;
       public            postgres    false    6            �           1259    17981 "   user_insurance_topic_choice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_insurance_topic_choice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_insurance_topic_choice_id_seq;
       public          postgres    false    6    474                       0    0 "   user_insurance_topic_choice_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.user_insurance_topic_choice_id_seq OWNED BY public.user_insurance_topic_choice.id;
          public          postgres    false    473            �           1259    17994    user_leave_coin    TABLE     D  CREATE TABLE public.user_leave_coin (
    id integer NOT NULL,
    enrollment_id integer,
    user_id integer,
    leave_day integer,
    coin integer,
    created_date timestamp without time zone,
    created_by character varying(256),
    updated_date timestamp without time zone,
    updated_by character varying(256)
);
 #   DROP TABLE public.user_leave_coin;
       public            postgres    false    6            �           1259    17992    user_leave_coin_id_seq    SEQUENCE        CREATE SEQUENCE public.user_leave_coin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.user_leave_coin_id_seq;
       public          postgres    false    6    476                       0    0    user_leave_coin_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.user_leave_coin_id_seq OWNED BY public.user_leave_coin.id;
          public          postgres    false    475            �           1259    18677    user_msal_tokens    TABLE     �   CREATE TABLE public.user_msal_tokens (
    token_id integer NOT NULL,
    user_id integer NOT NULL,
    created_date timestamp without time zone,
    updated_date timestamp without time zone,
    token character varying(4000)
);
 $   DROP TABLE public.user_msal_tokens;
       public            postgres    false    6            �           1259    18675    user_msal_tokens_token_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_msal_tokens_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.user_msal_tokens_token_id_seq;
       public          postgres    false    6    505                       0    0    user_msal_tokens_token_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.user_msal_tokens_token_id_seq OWNED BY public.user_msal_tokens.token_id;
          public          postgres    false    504            ?           1259    19599    user_prefix    TABLE     E  CREATE TABLE public.user_prefix (
    id integer NOT NULL,
    prefix_code character varying(100) NOT NULL,
    prefix_name character varying(100) NOT NULL,
    create_date timestamp without time zone,
    update_date timestamp without time zone,
    create_by character varying(500),
    update_by character varying(500)
);
    DROP TABLE public.user_prefix;
       public            postgres    false    6            >           1259    19597    user_prefix_id_seq    SEQUENCE     {   CREATE SEQUENCE public.user_prefix_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.user_prefix_id_seq;
       public          postgres    false    575    6                       0    0    user_prefix_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.user_prefix_id_seq OWNED BY public.user_prefix.id;
          public          postgres    false    574            �           1259    18654    user_product    TABLE     �  CREATE TABLE public.user_product (
    id integer NOT NULL,
    user_id integer,
    product_id integer,
    amount integer DEFAULT 0 NOT NULL,
    status character varying(50),
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    use_date timestamp without time zone,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL,
    serial_number character varying(120)
);
     DROP TABLE public.user_product;
       public            postgres    false    6            �           1259    18652    user_product_id_seq    SEQUENCE     |   CREATE SEQUENCE public.user_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_product_id_seq;
       public          postgres    false    501    6                       0    0    user_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_product_id_seq OWNED BY public.user_product.id;
          public          postgres    false    500            -           1259    19225    user_product_info    TABLE     �  CREATE TABLE public.user_product_info (
    id integer NOT NULL,
    user_product_id integer,
    product_form_input_id integer,
    gender character varying(100),
    age character varying(100),
    birth_date character varying(100),
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    create_by character varying(500) NOT NULL,
    update_by character varying(500) NOT NULL
);
 %   DROP TABLE public.user_product_info;
       public            postgres    false    6            ,           1259    19223    user_product_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_product_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.user_product_info_id_seq;
       public          postgres    false    6    557                       0    0    user_product_info_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.user_product_info_id_seq OWNED BY public.user_product_info.id;
          public          postgres    false    556            |           1259    17494 
   user_roles    TABLE     �   CREATE TABLE public.user_roles (
    user_roles_id integer NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public            postgres    false    6            {           1259    17492    user_roles_user_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_roles_user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.user_roles_user_roles_id_seq;
       public          postgres    false    380    6                       0    0    user_roles_user_roles_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.user_roles_user_roles_id_seq OWNED BY public.user_roles.user_roles_id;
          public          postgres    false    379            9           1259    19394    user_selected_choices    TABLE     �  CREATE TABLE public.user_selected_choices (
    id integer NOT NULL,
    self_benefits_choices_id integer NOT NULL,
    user_id integer NOT NULL,
    selected_coin_value numeric(10,2),
    user_consent boolean DEFAULT false,
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    self_benefits_category_id integer NOT NULL
);
 )   DROP TABLE public.user_selected_choices;
       public            postgres    false    6            8           1259    19392    user_selected_choices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_selected_choices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.user_selected_choices_id_seq;
       public          postgres    false    6    569                       0    0    user_selected_choices_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.user_selected_choices_id_seq OWNED BY public.user_selected_choices.id;
          public          postgres    false    568            C           1259    19623 	   user_tags    TABLE        CREATE TABLE public.user_tags (
    id integer NOT NULL,
    user_id integer NOT NULL,
    tag_id integer NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500)
);
    DROP TABLE public.user_tags;
       public            postgres    false    6            B           1259    19621    user_tags_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_tags_id_seq;
       public          postgres    false    6    579                       0    0    user_tags_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_tags_id_seq OWNED BY public.user_tags.id;
          public          postgres    false    578            �           1259    18003    user_third_party    TABLE     �   CREATE TABLE public.user_third_party (
    id integer NOT NULL,
    username character varying(256) NOT NULL,
    password character varying(256) NOT NULL,
    name character varying(256) NOT NULL
);
 $   DROP TABLE public.user_third_party;
       public            postgres    false    6            �           1259    18001    user_third_party_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_third_party_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.user_third_party_id_seq;
       public          postgres    false    478    6                       0    0    user_third_party_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.user_third_party_id_seq OWNED BY public.user_third_party.id;
          public          postgres    false    477            ~           1259    17502    user_tokens    TABLE     �  CREATE TABLE public.user_tokens (
    token_id integer NOT NULL,
    user_id integer NOT NULL,
    hash character varying(32) NOT NULL,
    mark character varying(255),
    expired_date timestamp without time zone NOT NULL,
    is_valid boolean NOT NULL,
    device_id character varying(255),
    device_type character varying(255),
    created_date timestamp without time zone,
    updated_date timestamp without time zone
);
    DROP TABLE public.user_tokens;
       public            postgres    false    6            }           1259    17500    user_tokens_token_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_tokens_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.user_tokens_token_id_seq;
       public          postgres    false    6    382                       0    0    user_tokens_token_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.user_tokens_token_id_seq OWNED BY public.user_tokens.token_id;
          public          postgres    false    381            @           1259    17216    users    TABLE     �  CREATE TABLE public.users (
    user_id integer NOT NULL,
    emp_id character varying(50),
    email character varying(100) NOT NULL,
    password character varying(255),
    profile_image_path character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    phone_number character varying(50),
    point integer NOT NULL,
    is_delete boolean NOT NULL,
    "position" character varying(255),
    created_date timestamp without time zone,
    is_require_password boolean,
    cover_image_path character varying(255),
    well_being_points integer DEFAULT 0 NOT NULL,
    first_name_th character varying(255),
    last_name_th character varying(255),
    top_points integer DEFAULT 0,
    birth_day timestamp without time zone,
    leave_day integer,
    salary double precision,
    phone_no character varying(32),
    name character varying(400),
    first_login boolean DEFAULT false NOT NULL,
    advance_noti_time character varying(32) DEFAULT '15m'::character varying NOT NULL,
    probation boolean DEFAULT false NOT NULL,
    prefix_code character varying(255),
    id_card character varying(255),
    is_revenue boolean,
    gender character varying(100),
    age character varying(100)
);
    DROP TABLE public.users;
       public            postgres    false    6            =           1259    19557    users_pre_selected_claims    TABLE     �  CREATE TABLE public.users_pre_selected_claims (
    id integer NOT NULL,
    user_id integer NOT NULL,
    claim_id integer NOT NULL,
    pre_selected_amount integer NOT NULL,
    available_amount integer NOT NULL,
    created_date timestamp without time zone,
    created_by character varying(500),
    updated_date timestamp without time zone,
    updated_by character varying(500),
    benefits_year_id integer DEFAULT 0 NOT NULL
);
 -   DROP TABLE public.users_pre_selected_claims;
       public            postgres    false    6            <           1259    19555     users_pre_selected_claims_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_pre_selected_claims_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.users_pre_selected_claims_id_seq;
       public          postgres    false    6    573                        0    0     users_pre_selected_claims_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.users_pre_selected_claims_id_seq OWNED BY public.users_pre_selected_claims.id;
          public          postgres    false    572            ?           1259    17214    users_user_id_seq    SEQUENCE     z   CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    320    6            !           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    319            �           1259    18081    visited    TABLE     �   CREATE TABLE public.visited (
    visited_id integer NOT NULL,
    user_id integer NOT NULL,
    news_id integer NOT NULL,
    created_date timestamp without time zone NOT NULL
);
    DROP TABLE public.visited;
       public            postgres    false    6            �           1259    18079    visited_visited_id_seq    SEQUENCE        CREATE SEQUENCE public.visited_visited_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.visited_visited_id_seq;
       public          postgres    false    6    492            "           0    0    visited_visited_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.visited_visited_id_seq OWNED BY public.visited.visited_id;
          public          postgres    false    491            �            1259    16831    well_being_coin_transaction_log    TABLE     �  CREATE TABLE public.well_being_coin_transaction_log (
    coin_transaction_log_id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(120) NOT NULL,
    event_id integer,
    product_id integer,
    donation_id integer,
    anonymous boolean,
    coin integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    expire_date timestamp without time zone,
    sub_type character varying(120)
);
 3   DROP TABLE public.well_being_coin_transaction_log;
       public            postgres    false    6            �            1259    16829 ;   well_being_coin_transaction_log_coin_transaction_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_coin_transaction_log_coin_transaction_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 R   DROP SEQUENCE public.well_being_coin_transaction_log_coin_transaction_log_id_seq;
       public          postgres    false    6    238            #           0    0 ;   well_being_coin_transaction_log_coin_transaction_log_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_coin_transaction_log_coin_transaction_log_id_seq OWNED BY public.well_being_coin_transaction_log.coin_transaction_log_id;
          public          postgres    false    237                       1259    17024    well_being_donation    TABLE     �  CREATE TABLE public.well_being_donation (
    donation_id integer NOT NULL,
    thumbnail_image character varying(500),
    total_donation integer NOT NULL,
    donated integer NOT NULL,
    title character varying(120) NOT NULL,
    name character varying(500) NOT NULL,
    location character varying(1000) NOT NULL,
    description text NOT NULL,
    expire_date timestamp without time zone NOT NULL,
    create_date timestamp without time zone NOT NULL,
    create_by integer NOT NULL,
    update_date timestamp without time zone,
    update_by integer,
    is_delete boolean NOT NULL,
    minimum_donation integer,
    is_highlight boolean DEFAULT false,
    highlight_date timestamp without time zone
);
 '   DROP TABLE public.well_being_donation;
       public            postgres    false    6                       1259    17022 #   well_being_donation_donation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_donation_donation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.well_being_donation_donation_id_seq;
       public          postgres    false    6    278            $           0    0 #   well_being_donation_donation_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.well_being_donation_donation_id_seq OWNED BY public.well_being_donation.donation_id;
          public          postgres    false    277                       1259    17036    well_being_donation_image    TABLE     �   CREATE TABLE public.well_being_donation_image (
    donation_image_id integer NOT NULL,
    donation_id integer NOT NULL,
    image_path character varying(500) NOT NULL
);
 -   DROP TABLE public.well_being_donation_image;
       public            postgres    false    6                       1259    17034 /   well_being_donation_image_donation_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_donation_image_donation_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.well_being_donation_image_donation_image_id_seq;
       public          postgres    false    280    6            %           0    0 /   well_being_donation_image_donation_image_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_donation_image_donation_image_id_seq OWNED BY public.well_being_donation_image.donation_image_id;
          public          postgres    false    279                       1259    17047    well_being_donation_thank    TABLE     �   CREATE TABLE public.well_being_donation_thank (
    donation_thank_id integer NOT NULL,
    image_path character varying(500) NOT NULL
);
 -   DROP TABLE public.well_being_donation_thank;
       public            postgres    false    6                       1259    17045 /   well_being_donation_thank_donation_thank_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_donation_thank_donation_thank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.well_being_donation_thank_donation_thank_id_seq;
       public          postgres    false    282    6            &           0    0 /   well_being_donation_thank_donation_thank_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_donation_thank_donation_thank_id_seq OWNED BY public.well_being_donation_thank.donation_thank_id;
          public          postgres    false    281            &           1259    17106    well_being_event_team_register    TABLE     �   CREATE TABLE public.well_being_event_team_register (
    event_team_register_id integer NOT NULL,
    event_id integer NOT NULL,
    team_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL
);
 2   DROP TABLE public.well_being_event_team_register;
       public            postgres    false    6            %           1259    17104 9   well_being_event_team_register_event_team_register_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_event_team_register_event_team_register_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.well_being_event_team_register_event_team_register_id_seq;
       public          postgres    false    6    294            '           0    0 9   well_being_event_team_register_event_team_register_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_event_team_register_event_team_register_id_seq OWNED BY public.well_being_event_team_register.event_team_register_id;
          public          postgres    false    293            (           1259    17114    well_being_event_type    TABLE     �   CREATE TABLE public.well_being_event_type (
    event_type_id integer NOT NULL,
    event_type_name character varying(120) NOT NULL
);
 )   DROP TABLE public.well_being_event_type;
       public            postgres    false    6            '           1259    17112 '   well_being_event_type_event_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_event_type_event_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.well_being_event_type_event_type_id_seq;
       public          postgres    false    296    6            (           0    0 '   well_being_event_type_event_type_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.well_being_event_type_event_type_id_seq OWNED BY public.well_being_event_type.event_type_id;
          public          postgres    false    295            *           1259    17122    well_being_event_user_register    TABLE     H  CREATE TABLE public.well_being_event_user_register (
    event_user_register_id integer NOT NULL,
    event_id integer NOT NULL,
    team_id integer,
    user_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    scan_qr_code character varying(255),
    scan_qr_code_date timestamp without time zone
);
 2   DROP TABLE public.well_being_event_user_register;
       public            postgres    false    6            )           1259    17120 9   well_being_event_user_register_event_user_register_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_event_user_register_event_user_register_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.well_being_event_user_register_event_user_register_id_seq;
       public          postgres    false    6    298            )           0    0 9   well_being_event_user_register_event_user_register_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_event_user_register_event_user_register_id_seq OWNED BY public.well_being_event_user_register.event_user_register_id;
          public          postgres    false    297                       1259    17055    well_being_events    TABLE     %  CREATE TABLE public.well_being_events (
    event_id integer NOT NULL,
    title character varying(200) NOT NULL,
    image_path character varying(500),
    register_type character varying(60) NOT NULL,
    location character varying(1000) NOT NULL,
    datetime_description character varying(1000) NOT NULL,
    description text NOT NULL,
    reward integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    create_by integer NOT NULL,
    update_date timestamp without time zone,
    update_by integer,
    is_delete boolean NOT NULL,
    event_type_id integer DEFAULT 1 NOT NULL,
    start_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone NOT NULL,
    maximum_join integer,
    joined integer,
    pre_reward integer,
    goal numeric,
    sub_register_type character varying(255) DEFAULT 'CHALLENGE GOAL'::character varying,
    qr_code character varying(255),
    qr_code_image character varying(255),
    distance_per_reward integer,
    maximum_team_join integer,
    maximum_team_members integer
);
 %   DROP TABLE public.well_being_events;
       public            postgres    false    6                       1259    17053    well_being_events_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_events_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.well_being_events_event_id_seq;
       public          postgres    false    6    284            *           0    0    well_being_events_event_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.well_being_events_event_id_seq OWNED BY public.well_being_events.event_id;
          public          postgres    false    283            ,           1259    17130    well_being_exercise_types    TABLE     �   CREATE TABLE public.well_being_exercise_types (
    exercise_type_id integer NOT NULL,
    name character varying(120) NOT NULL
);
 -   DROP TABLE public.well_being_exercise_types;
       public            postgres    false    6            +           1259    17128 .   well_being_exercise_types_exercise_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_exercise_types_exercise_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.well_being_exercise_types_exercise_type_id_seq;
       public          postgres    false    300    6            +           0    0 .   well_being_exercise_types_exercise_type_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_exercise_types_exercise_type_id_seq OWNED BY public.well_being_exercise_types.exercise_type_id;
          public          postgres    false    299            6           1259    17173    well_being_feedbacks    TABLE     �   CREATE TABLE public.well_being_feedbacks (
    feedback_id integer NOT NULL,
    user_id integer NOT NULL,
    content character varying(500) NOT NULL,
    create_date timestamp without time zone NOT NULL
);
 (   DROP TABLE public.well_being_feedbacks;
       public            postgres    false    6            5           1259    17171 $   well_being_feedbacks_feedback_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_feedbacks_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.well_being_feedbacks_feedback_id_seq;
       public          postgres    false    6    310            ,           0    0 $   well_being_feedbacks_feedback_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.well_being_feedbacks_feedback_id_seq OWNED BY public.well_being_feedbacks.feedback_id;
          public          postgres    false    309            �           1259    17544    well_being_follow    TABLE     �   CREATE TABLE public.well_being_follow (
    follow_id integer NOT NULL,
    user_followed integer NOT NULL,
    follower integer NOT NULL,
    create_date timestamp without time zone NOT NULL
);
 %   DROP TABLE public.well_being_follow;
       public            postgres    false    6            �           1259    17542    well_being_follow_follow_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_follow_follow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.well_being_follow_follow_id_seq;
       public          postgres    false    6    390            -           0    0    well_being_follow_follow_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.well_being_follow_follow_id_seq OWNED BY public.well_being_follow.follow_id;
          public          postgres    false    389            �           1259    17552    well_being_goals    TABLE     6  CREATE TABLE public.well_being_goals (
    goal_id integer NOT NULL,
    exercise_type_id integer NOT NULL,
    user_id integer NOT NULL,
    status character varying(120) NOT NULL,
    start_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone NOT NULL,
    distance numeric
);
 $   DROP TABLE public.well_being_goals;
       public            postgres    false    6            �           1259    17550    well_being_goals_goal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_goals_goal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.well_being_goals_goal_id_seq;
       public          postgres    false    6    392            .           0    0    well_being_goals_goal_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.well_being_goals_goal_id_seq OWNED BY public.well_being_goals.goal_id;
          public          postgres    false    391            �           1259    17524    well_being_health_tip    TABLE     �  CREATE TABLE public.well_being_health_tip (
    health_tip_id integer NOT NULL,
    title character varying(120) NOT NULL,
    thumbnail_image character varying(500),
    name character varying(120) NOT NULL,
    description text,
    create_date timestamp without time zone NOT NULL,
    create_by integer NOT NULL,
    update_date timestamp without time zone,
    update_by integer,
    is_delete boolean NOT NULL,
    view integer DEFAULT 0
);
 )   DROP TABLE public.well_being_health_tip;
       public            postgres    false    6            �           1259    17522 '   well_being_health_tip_health_tip_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_health_tip_health_tip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.well_being_health_tip_health_tip_id_seq;
       public          postgres    false    6    386            /           0    0 '   well_being_health_tip_health_tip_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.well_being_health_tip_health_tip_id_seq OWNED BY public.well_being_health_tip.health_tip_id;
          public          postgres    false    385            �           1259    17563    well_being_likes    TABLE     �   CREATE TABLE public.well_being_likes (
    like_id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL
);
 $   DROP TABLE public.well_being_likes;
       public            postgres    false    6            �           1259    17561    well_being_likes_like_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_likes_like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.well_being_likes_like_id_seq;
       public          postgres    false    394    6            0           0    0    well_being_likes_like_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.well_being_likes_like_id_seq OWNED BY public.well_being_likes.like_id;
          public          postgres    false    393            �           1259    18033    well_being_notification    TABLE       CREATE TABLE public.well_being_notification (
    notification_id integer NOT NULL,
    user_id integer NOT NULL,
    event_id integer,
    post_id integer,
    like_id integer,
    is_read boolean,
    post_comment_id integer,
    create_date timestamp without time zone NOT NULL
);
 +   DROP TABLE public.well_being_notification;
       public            postgres    false    6            �           1259    18031 +   well_being_notification_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_notification_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.well_being_notification_notification_id_seq;
       public          postgres    false    484    6            1           0    0 +   well_being_notification_notification_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.well_being_notification_notification_id_seq OWNED BY public.well_being_notification.notification_id;
          public          postgres    false    483            �           1259    17571    well_being_post_comments    TABLE     D  CREATE TABLE public.well_being_post_comments (
    post_comment_id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    comment character varying(1000) NOT NULL,
    is_delete boolean NOT NULL
);
 ,   DROP TABLE public.well_being_post_comments;
       public            postgres    false    6            �           1259    17569 ,   well_being_post_comments_post_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_post_comments_post_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.well_being_post_comments_post_comment_id_seq;
       public          postgres    false    396    6            2           0    0 ,   well_being_post_comments_post_comment_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.well_being_post_comments_post_comment_id_seq OWNED BY public.well_being_post_comments.post_comment_id;
          public          postgres    false    395            �           1259    17609    well_being_post_news_detail    TABLE     �   CREATE TABLE public.well_being_post_news_detail (
    post_news_detail_id integer NOT NULL,
    post_id integer NOT NULL,
    title character varying(120) NOT NULL,
    content character varying(4000) NOT NULL,
    url character varying(500) NOT NULL
);
 /   DROP TABLE public.well_being_post_news_detail;
       public            postgres    false    6            �           1259    17620 !   well_being_post_news_detail_image    TABLE     �   CREATE TABLE public.well_being_post_news_detail_image (
    post_news_detail_image_id integer NOT NULL,
    post_news_detail_id integer NOT NULL,
    image_path character varying(500) NOT NULL
);
 5   DROP TABLE public.well_being_post_news_detail_image;
       public            postgres    false    6            �           1259    17618 ?   well_being_post_news_detail_image_post_news_detail_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_post_news_detail_image_post_news_detail_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.well_being_post_news_detail_image_post_news_detail_image_id_seq;
       public          postgres    false    406    6            3           0    0 ?   well_being_post_news_detail_image_post_news_detail_image_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_post_news_detail_image_post_news_detail_image_id_seq OWNED BY public.well_being_post_news_detail_image.post_news_detail_image_id;
          public          postgres    false    405            �           1259    17607 3   well_being_post_news_detail_post_news_detail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_post_news_detail_post_news_detail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.well_being_post_news_detail_post_news_detail_id_seq;
       public          postgres    false    404    6            4           0    0 3   well_being_post_news_detail_post_news_detail_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_post_news_detail_post_news_detail_id_seq OWNED BY public.well_being_post_news_detail.post_news_detail_id;
          public          postgres    false    403            �           1259    17582    well_being_posts    TABLE     �  CREATE TABLE public.well_being_posts (
    post_id integer NOT NULL,
    post_type character varying(120) NOT NULL,
    user_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    image_path character varying(500),
    content character varying(1000) NOT NULL,
    is_delete boolean NOT NULL,
    distance numeric,
    heart_rate integer,
    duration integer
);
 $   DROP TABLE public.well_being_posts;
       public            postgres    false    6            �           1259    17580    well_being_posts_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_posts_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.well_being_posts_post_id_seq;
       public          postgres    false    6    398            5           0    0    well_being_posts_post_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.well_being_posts_post_id_seq OWNED BY public.well_being_posts.post_id;
          public          postgres    false    397            �           1259    17631    well_being_product    TABLE     |  CREATE TABLE public.well_being_product (
    product_id integer NOT NULL,
    product_type_id integer NOT NULL,
    thumbnail_image character varying(500),
    quantity integer NOT NULL,
    remain integer NOT NULL,
    normal_price integer NOT NULL,
    special_price integer,
    title character varying(120) NOT NULL,
    name character varying(500) NOT NULL,
    description text NOT NULL,
    expire_date timestamp without time zone NOT NULL,
    create_date timestamp without time zone NOT NULL,
    create_by integer NOT NULL,
    update_date timestamp without time zone,
    update_by integer,
    is_delete boolean NOT NULL
);
 &   DROP TABLE public.well_being_product;
       public            postgres    false    6            �            1259    16575    well_being_product_best_seller    TABLE     �   CREATE TABLE public.well_being_product_best_seller (
    best_seller_id integer NOT NULL,
    product_id integer NOT NULL,
    best_seller_date timestamp without time zone NOT NULL
);
 2   DROP TABLE public.well_being_product_best_seller;
       public            postgres    false    6            �            1259    16573 1   well_being_product_best_seller_best_seller_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_product_best_seller_best_seller_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.well_being_product_best_seller_best_seller_id_seq;
       public          postgres    false    6    190            6           0    0 1   well_being_product_best_seller_best_seller_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_product_best_seller_best_seller_id_seq OWNED BY public.well_being_product_best_seller.best_seller_id;
          public          postgres    false    189            �           1259    17536    well_being_product_delivery    TABLE     L  CREATE TABLE public.well_being_product_delivery (
    product_delivery_id integer NOT NULL,
    coin_transaction_log_id integer NOT NULL,
    user_id integer NOT NULL,
    product_status_id integer NOT NULL,
    create_date timestamp without time zone NOT NULL,
    update_date timestamp without time zone,
    update_by integer
);
 /   DROP TABLE public.well_being_product_delivery;
       public            postgres    false    6            �           1259    17534 3   well_being_product_delivery_product_delivery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_product_delivery_product_delivery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.well_being_product_delivery_product_delivery_id_seq;
       public          postgres    false    388    6            7           0    0 3   well_being_product_delivery_product_delivery_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_product_delivery_product_delivery_id_seq OWNED BY public.well_being_product_delivery.product_delivery_id;
          public          postgres    false    387            �           1259    17642    well_being_product_image    TABLE     �   CREATE TABLE public.well_being_product_image (
    product_image_id integer NOT NULL,
    product_id integer NOT NULL,
    image_path character varying(500) NOT NULL
);
 ,   DROP TABLE public.well_being_product_image;
       public            postgres    false    6            �           1259    17640 -   well_being_product_image_product_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_product_image_product_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.well_being_product_image_product_image_id_seq;
       public          postgres    false    6    410            8           0    0 -   well_being_product_image_product_image_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.well_being_product_image_product_image_id_seq OWNED BY public.well_being_product_image.product_image_id;
          public          postgres    false    409            �           1259    17629 !   well_being_product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.well_being_product_product_id_seq;
       public          postgres    false    408    6            9           0    0 !   well_being_product_product_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.well_being_product_product_id_seq OWNED BY public.well_being_product.product_id;
          public          postgres    false    407            �           1259    17653    well_being_product_status    TABLE     �   CREATE TABLE public.well_being_product_status (
    product_status_id integer NOT NULL,
    product_status_name character varying(120) NOT NULL,
    is_delete boolean NOT NULL
);
 -   DROP TABLE public.well_being_product_status;
       public            postgres    false    6            �           1259    17651 /   well_being_product_status_product_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_product_status_product_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.well_being_product_status_product_status_id_seq;
       public          postgres    false    412    6            :           0    0 /   well_being_product_status_product_status_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_product_status_product_status_id_seq OWNED BY public.well_being_product_status.product_status_id;
          public          postgres    false    411            �           1259    17661    well_being_product_type    TABLE       CREATE TABLE public.well_being_product_type (
    product_type_id integer NOT NULL,
    product_type_name_en character varying(120) NOT NULL,
    product_type_name_th character varying(120) DEFAULT 'ไม่มีชืิ่อ'::character varying NOT NULL
);
 +   DROP TABLE public.well_being_product_type;
       public            postgres    false    6            �           1259    17659 +   well_being_product_type_product_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_product_type_product_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.well_being_product_type_product_type_id_seq;
       public          postgres    false    414    6            ;           0    0 +   well_being_product_type_product_type_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.well_being_product_type_product_type_id_seq OWNED BY public.well_being_product_type.product_type_id;
          public          postgres    false    413            �           1259    18073    well_being_team_members    TABLE     �   CREATE TABLE public.well_being_team_members (
    team_member_id integer NOT NULL,
    team_id integer NOT NULL,
    user_id integer,
    create_date timestamp without time zone NOT NULL
);
 +   DROP TABLE public.well_being_team_members;
       public            postgres    false    6            �           1259    18071 *   well_being_team_members_team_member_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_team_members_team_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.well_being_team_members_team_member_id_seq;
       public          postgres    false    6    490            <           0    0 *   well_being_team_members_team_member_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.well_being_team_members_team_member_id_seq OWNED BY public.well_being_team_members.team_member_id;
          public          postgres    false    489            �           1259    17513    well_being_teams    TABLE     R  CREATE TABLE public.well_being_teams (
    team_id integer NOT NULL,
    name character varying(200) NOT NULL,
    image_path character varying(500),
    create_date timestamp without time zone NOT NULL,
    create_by integer NOT NULL,
    update_date timestamp without time zone,
    update_by integer,
    is_delete boolean NOT NULL
);
 $   DROP TABLE public.well_being_teams;
       public            postgres    false    6                       1259    17511    well_being_teams_team_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_teams_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.well_being_teams_team_id_seq;
       public          postgres    false    6    384            =           0    0    well_being_teams_team_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.well_being_teams_team_id_seq OWNED BY public.well_being_teams.team_id;
          public          postgres    false    383            �            1259    16681    well_being_workout_histories    TABLE     `  CREATE TABLE public.well_being_workout_histories (
    workout_history_id integer NOT NULL,
    user_id integer NOT NULL,
    distance numeric,
    heart_rate integer,
    duration integer,
    create_date timestamp without time zone NOT NULL,
    step integer DEFAULT 0 NOT NULL,
    calorie numeric DEFAULT 0 NOT NULL,
    resting_calorie numeric
);
 0   DROP TABLE public.well_being_workout_histories;
       public            postgres    false    6            �            1259    16679 3   well_being_workout_histories_workout_history_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_workout_histories_workout_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.well_being_workout_histories_workout_history_id_seq;
       public          postgres    false    210    6            >           0    0 3   well_being_workout_histories_workout_history_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_workout_histories_workout_history_id_seq OWNED BY public.well_being_workout_histories.workout_history_id;
          public          postgres    false    209            �           1259    17593 (   well_being_workout_history_before_events    TABLE     g  CREATE TABLE public.well_being_workout_history_before_events (
    workout_history_before_event_id integer NOT NULL,
    event_id integer NOT NULL,
    user_id integer NOT NULL,
    distance integer,
    heart_rate integer,
    duration integer,
    create_date timestamp without time zone NOT NULL,
    step integer NOT NULL,
    calorie integer NOT NULL
);
 <   DROP TABLE public.well_being_workout_history_before_events;
       public            postgres    false    6            �           1259    17591 ?   well_being_workout_history_be_workout_history_before_event__seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_workout_history_be_workout_history_before_event__seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.well_being_workout_history_be_workout_history_before_event__seq;
       public          postgres    false    6    400            ?           0    0 ?   well_being_workout_history_be_workout_history_before_event__seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_workout_history_be_workout_history_before_event__seq OWNED BY public.well_being_workout_history_before_events.workout_history_before_event_id;
          public          postgres    false    399            �           1259    17601 !   well_being_workout_history_events    TABLE     �  CREATE TABLE public.well_being_workout_history_events (
    workout_history_event_id integer NOT NULL,
    event_id integer NOT NULL,
    user_id integer NOT NULL,
    distance integer,
    heart_rate integer,
    duration integer,
    create_date timestamp without time zone NOT NULL,
    step integer NOT NULL,
    calorie integer NOT NULL,
    start_date timestamp without time zone,
    end_date timestamp without time zone
);
 5   DROP TABLE public.well_being_workout_history_events;
       public            postgres    false    6            �           1259    17599 >   well_being_workout_history_events_workout_history_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_workout_history_events_workout_history_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 U   DROP SEQUENCE public.well_being_workout_history_events_workout_history_event_id_seq;
       public          postgres    false    6    402            @           0    0 >   well_being_workout_history_events_workout_history_event_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.well_being_workout_history_events_workout_history_event_id_seq OWNED BY public.well_being_workout_history_events.workout_history_event_id;
          public          postgres    false    401            �           1259    18014    well_being_workout_sync    TABLE     �   CREATE TABLE public.well_being_workout_sync (
    id integer NOT NULL,
    user_id integer NOT NULL,
    event_id integer,
    create_date timestamp without time zone NOT NULL,
    last_sync timestamp without time zone NOT NULL
);
 +   DROP TABLE public.well_being_workout_sync;
       public            postgres    false    6            �           1259    18012    well_being_workout_sync_id_seq    SEQUENCE     �   CREATE SEQUENCE public.well_being_workout_sync_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.well_being_workout_sync_id_seq;
       public          postgres    false    6    480            A           0    0    well_being_workout_sync_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.well_being_workout_sync_id_seq OWNED BY public.well_being_workout_sync.id;
          public          postgres    false    479            �            1259    16480    z_databasechangelog    TABLE     [  CREATE TABLE public.z_databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);
 '   DROP TABLE public.z_databasechangelog;
       public            postgres    false    6            �            1259    16475    z_databasechangeloglock    TABLE     �   CREATE TABLE public.z_databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);
 +   DROP TABLE public.z_databasechangeloglock;
       public            postgres    false    6            '           2604    16491 +   access_control_items access_control_item_id    DEFAULT     �   ALTER TABLE ONLY public.access_control_items ALTER COLUMN access_control_item_id SET DEFAULT nextval('public.access_control_items_access_control_item_id_seq'::regclass);
 Z   ALTER TABLE public.access_control_items ALTER COLUMN access_control_item_id DROP DEFAULT;
       public          postgres    false    172    171    172            (           2604    16502 *   access_control_list access_control_list_id    DEFAULT     �   ALTER TABLE ONLY public.access_control_list ALTER COLUMN access_control_list_id SET DEFAULT nextval('public.access_control_list_access_control_list_id_seq'::regclass);
 Y   ALTER TABLE public.access_control_list ALTER COLUMN access_control_list_id DROP DEFAULT;
       public          postgres    false    173    174    174            �           2604    18720 &   announcenment_of_passenger_requests id    DEFAULT     �   ALTER TABLE ONLY public.announcenment_of_passenger_requests ALTER COLUMN id SET DEFAULT nextval('public.announcenment_of_passenger_requests_id_seq'::regclass);
 U   ALTER TABLE public.announcenment_of_passenger_requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    509    508    509            �           2604    18927    app_shortcut id    DEFAULT     r   ALTER TABLE ONLY public.app_shortcut ALTER COLUMN id SET DEFAULT nextval('public.app_shortcut_id_seq'::regclass);
 >   ALTER TABLE public.app_shortcut ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    525    526    526            *           2604    16521    app_version id    DEFAULT     p   ALTER TABLE ONLY public.app_version ALTER COLUMN id SET DEFAULT nextval('public.app_version_id_seq'::regclass);
 =   ALTER TABLE public.app_version ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    177    178    178            +           2604    16532    auth_authority id    DEFAULT     v   ALTER TABLE ONLY public.auth_authority ALTER COLUMN id SET DEFAULT nextval('public.auth_authority_id_seq'::regclass);
 @   ALTER TABLE public.auth_authority ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    179    180    180            -           2604    16548    auth_role id    DEFAULT     l   ALTER TABLE ONLY public.auth_role ALTER COLUMN id SET DEFAULT nextval('public.auth_role_id_seq'::regclass);
 ;   ALTER TABLE public.auth_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    184    183    184            ,           2604    16540    auth_role_authority id    DEFAULT     �   ALTER TABLE ONLY public.auth_role_authority ALTER COLUMN id SET DEFAULT nextval('public.auth_role_authority_id_seq'::regclass);
 E   ALTER TABLE public.auth_role_authority ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    181    182    182            .           2604    16559    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    185    186    186            0           2604    16570    auth_user_role id    DEFAULT     v   ALTER TABLE ONLY public.auth_user_role ALTER COLUMN id SET DEFAULT nextval('public.auth_user_role_id_seq'::regclass);
 @   ALTER TABLE public.auth_user_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    187    188    188            3           2604    16597    brand id    DEFAULT     d   ALTER TABLE ONLY public.brand ALTER COLUMN id SET DEFAULT nextval('public.brand_id_seq'::regclass);
 7   ALTER TABLE public.brand ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    193    194    194            2           2604    16586    brand_api id    DEFAULT     l   ALTER TABLE ONLY public.brand_api ALTER COLUMN id SET DEFAULT nextval('public.brand_api_id_seq'::regclass);
 ;   ALTER TABLE public.brand_api ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    191    192    192            �           2604    18669    brand_email id    DEFAULT     p   ALTER TABLE ONLY public.brand_email ALTER COLUMN id SET DEFAULT nextval('public.brand_email_id_seq'::regclass);
 =   ALTER TABLE public.brand_email ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    503    502    503            4           2604    16608    bus id    DEFAULT     `   ALTER TABLE ONLY public.bus ALTER COLUMN id SET DEFAULT nextval('public.bus_id_seq'::regclass);
 5   ALTER TABLE public.bus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    195    196    196            5           2604    16619    bus_report id    DEFAULT     n   ALTER TABLE ONLY public.bus_report ALTER COLUMN id SET DEFAULT nextval('public.bus_report_id_seq'::regclass);
 <   ALTER TABLE public.bus_report ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    198    198            6           2604    16630    bus_route id    DEFAULT     l   ALTER TABLE ONLY public.bus_route ALTER COLUMN id SET DEFAULT nextval('public.bus_route_id_seq'::regclass);
 ;   ALTER TABLE public.bus_route ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    199    200    200            8           2604    16642    bus_station id    DEFAULT     p   ALTER TABLE ONLY public.bus_station ALTER COLUMN id SET DEFAULT nextval('public.bus_station_id_seq'::regclass);
 =   ALTER TABLE public.bus_station ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    202    202            :           2604    16654    bus_time id    DEFAULT     j   ALTER TABLE ONLY public.bus_time ALTER COLUMN id SET DEFAULT nextval('public.bus_time_id_seq'::regclass);
 :   ALTER TABLE public.bus_time ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204            ;           2604    16665    calendar_events event_id    DEFAULT     �   ALTER TABLE ONLY public.calendar_events ALTER COLUMN event_id SET DEFAULT nextval('public.calendar_events_event_id_seq'::regclass);
 G   ALTER TABLE public.calendar_events ALTER COLUMN event_id DROP DEFAULT;
       public          postgres    false    206    205    206            <           2604    16676    calendar_type type_id    DEFAULT     ~   ALTER TABLE ONLY public.calendar_type ALTER COLUMN type_id SET DEFAULT nextval('public.calendar_type_type_id_seq'::regclass);
 D   ALTER TABLE public.calendar_type ALTER COLUMN type_id DROP DEFAULT;
       public          postgres    false    208    207    208            �           2604    18731    car_information id    DEFAULT     x   ALTER TABLE ONLY public.car_information ALTER COLUMN id SET DEFAULT nextval('public.car_information_id_seq'::regclass);
 A   ALTER TABLE public.car_information ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    510    511    511            @           2604    16697    car_lines id    DEFAULT     l   ALTER TABLE ONLY public.car_lines ALTER COLUMN id SET DEFAULT nextval('public.car_lines_id_seq'::regclass);
 ;   ALTER TABLE public.car_lines ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            F           2604    16751 	   choice id    DEFAULT     f   ALTER TABLE ONLY public.choice ALTER COLUMN id SET DEFAULT nextval('public.choice_id_seq'::regclass);
 8   ALTER TABLE public.choice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            E           2604    16740    choices choice_id    DEFAULT     v   ALTER TABLE ONLY public.choices ALTER COLUMN choice_id SET DEFAULT nextval('public.choices_choice_id_seq'::regclass);
 @   ALTER TABLE public.choices ALTER COLUMN choice_id DROP DEFAULT;
       public          postgres    false    219    220    220            G           2604    16762    claim id    DEFAULT     d   ALTER TABLE ONLY public.claim ALTER COLUMN id SET DEFAULT nextval('public.claim_id_seq'::regclass);
 7   ALTER TABLE public.claim ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            M           2604    16773    claim_type id    DEFAULT     n   ALTER TABLE ONLY public.claim_type ALTER COLUMN id SET DEFAULT nextval('public.claim_type_id_seq'::regclass);
 <   ALTER TABLE public.claim_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            N           2604    16784    club_albums club_albums_id    DEFAULT     �   ALTER TABLE ONLY public.club_albums ALTER COLUMN club_albums_id SET DEFAULT nextval('public.club_albums_club_albums_id_seq'::regclass);
 I   ALTER TABLE public.club_albums ALTER COLUMN club_albums_id DROP DEFAULT;
       public          postgres    false    228    227    228            O           2604    16792    club_comments comment_id    DEFAULT     �   ALTER TABLE ONLY public.club_comments ALTER COLUMN comment_id SET DEFAULT nextval('public.club_comments_comment_id_seq'::regclass);
 G   ALTER TABLE public.club_comments ALTER COLUMN comment_id DROP DEFAULT;
       public          postgres    false    230    229    230            Q           2604    16814    club_threads thread_id    DEFAULT     �   ALTER TABLE ONLY public.club_threads ALTER COLUMN thread_id SET DEFAULT nextval('public.club_threads_thread_id_seq'::regclass);
 E   ALTER TABLE public.club_threads ALTER COLUMN thread_id DROP DEFAULT;
       public          postgres    false    233    234    234            P           2604    16803    clubs club_id    DEFAULT     n   ALTER TABLE ONLY public.clubs ALTER COLUMN club_id SET DEFAULT nextval('public.clubs_club_id_seq'::regclass);
 <   ALTER TABLE public.clubs ALTER COLUMN club_id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    18160    coin id    DEFAULT     b   ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);
 6   ALTER TABLE public.coin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    493    494    494            X           2604    16872    companies company_id    DEFAULT     |   ALTER TABLE ONLY public.companies ALTER COLUMN company_id SET DEFAULT nextval('public.companies_company_id_seq'::regclass);
 C   ALTER TABLE public.companies ALTER COLUMN company_id DROP DEFAULT;
       public          postgres    false    245    246    246            Y           2604    16880    configurations configuration_id    DEFAULT     �   ALTER TABLE ONLY public.configurations ALTER COLUMN configuration_id SET DEFAULT nextval('public.configurations_configuration_id_seq'::regclass);
 N   ALTER TABLE public.configurations ALTER COLUMN configuration_id DROP DEFAULT;
       public          postgres    false    248    247    248            U           2604    16842    content_comments comment_id    DEFAULT     �   ALTER TABLE ONLY public.content_comments ALTER COLUMN comment_id SET DEFAULT nextval('public.content_comments_comment_id_seq'::regclass);
 J   ALTER TABLE public.content_comments ALTER COLUMN comment_id DROP DEFAULT;
       public          postgres    false    240    239    240            Z           2604    16889    content_files file_id    DEFAULT     ~   ALTER TABLE ONLY public.content_files ALTER COLUMN file_id SET DEFAULT nextval('public.content_files_file_id_seq'::regclass);
 D   ALTER TABLE public.content_files ALTER COLUMN file_id DROP DEFAULT;
       public          postgres    false    249    250    250            ]           2604    16909     content_images content_images_id    DEFAULT     �   ALTER TABLE ONLY public.content_images ALTER COLUMN content_images_id SET DEFAULT nextval('public.content_images_content_images_id_seq'::regclass);
 O   ALTER TABLE public.content_images ALTER COLUMN content_images_id DROP DEFAULT;
       public          postgres    false    253    254    254            [           2604    16897    contents content_id    DEFAULT     z   ALTER TABLE ONLY public.contents ALTER COLUMN content_id SET DEFAULT nextval('public.contents_content_id_seq'::regclass);
 B   ALTER TABLE public.contents ALTER COLUMN content_id DROP DEFAULT;
       public          postgres    false    252    251    252            %           2604    19613 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    576    577    577            ^           2604    16917    departments department_id    DEFAULT     �   ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);
 H   ALTER TABLE public.departments ALTER COLUMN department_id DROP DEFAULT;
       public          postgres    false    255    256    256            _           2604    16925    digital_news_comment id    DEFAULT     �   ALTER TABLE ONLY public.digital_news_comment ALTER COLUMN id SET DEFAULT nextval('public.digital_news_comment_id_seq'::regclass);
 F   ALTER TABLE public.digital_news_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258            `           2604    16936    digital_news_header_images id    DEFAULT     �   ALTER TABLE ONLY public.digital_news_header_images ALTER COLUMN id SET DEFAULT nextval('public.digital_news_header_images_id_seq'::regclass);
 L   ALTER TABLE public.digital_news_header_images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            a           2604    16947    digital_news_notification id    DEFAULT     �   ALTER TABLE ONLY public.digital_news_notification ALTER COLUMN id SET DEFAULT nextval('public.digital_news_notification_id_seq'::regclass);
 K   ALTER TABLE public.digital_news_notification ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            e           2604    16958 %   digital_news_product_datail_images id    DEFAULT     �   ALTER TABLE ONLY public.digital_news_product_datail_images ALTER COLUMN id SET DEFAULT nextval('public.digital_news_product_datail_images_id_seq'::regclass);
 T   ALTER TABLE public.digital_news_product_datail_images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            f           2604    16969 1   digital_news_product_delivery product_delivery_id    DEFAULT     �   ALTER TABLE ONLY public.digital_news_product_delivery ALTER COLUMN product_delivery_id SET DEFAULT nextval('public.digital_news_product_delivery_product_delivery_id_seq'::regclass);
 `   ALTER TABLE public.digital_news_product_delivery ALTER COLUMN product_delivery_id DROP DEFAULT;
       public          postgres    false    265    266    266            g           2604    16977 -   digital_news_product_status product_status_id    DEFAULT     �   ALTER TABLE ONLY public.digital_news_product_status ALTER COLUMN product_status_id SET DEFAULT nextval('public.digital_news_product_status_product_status_id_seq'::regclass);
 \   ALTER TABLE public.digital_news_product_status ALTER COLUMN product_status_id DROP DEFAULT;
       public          postgres    false    268    267    268            h           2604    16985    digital_news_quiz id    DEFAULT     |   ALTER TABLE ONLY public.digital_news_quiz ALTER COLUMN id SET DEFAULT nextval('public.digital_news_quiz_id_seq'::regclass);
 C   ALTER TABLE public.digital_news_quiz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            �           2604    18896    digital_news_type id    DEFAULT     |   ALTER TABLE ONLY public.digital_news_type ALTER COLUMN id SET DEFAULT nextval('public.digital_news_type_id_seq'::regclass);
 C   ALTER TABLE public.digital_news_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    523    522    523            k           2604    16998    digital_news_user_quiz id    DEFAULT     �   ALTER TABLE ONLY public.digital_news_user_quiz ALTER COLUMN id SET DEFAULT nextval('public.digital_news_user_quiz_id_seq'::regclass);
 H   ALTER TABLE public.digital_news_user_quiz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            m           2604    17007    digital_news_user_vote id    DEFAULT     �   ALTER TABLE ONLY public.digital_news_user_vote ALTER COLUMN id SET DEFAULT nextval('public.digital_news_user_vote_id_seq'::regclass);
 H   ALTER TABLE public.digital_news_user_vote ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            n           2604    17015    digital_news_vote id    DEFAULT     |   ALTER TABLE ONLY public.digital_news_vote ALTER COLUMN id SET DEFAULT nextval('public.digital_news_vote_id_seq'::regclass);
 C   ALTER TABLE public.digital_news_vote ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    276    276            �           2604    18747    drive_master id    DEFAULT     r   ALTER TABLE ONLY public.drive_master ALTER COLUMN id SET DEFAULT nextval('public.drive_master_id_seq'::regclass);
 >   ALTER TABLE public.drive_master ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    512    513    513            �           2604    18861    drive_requests id    DEFAULT     v   ALTER TABLE ONLY public.drive_requests ALTER COLUMN id SET DEFAULT nextval('public.drive_requests_id_seq'::regclass);
 @   ALTER TABLE public.drive_requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    521    520    521            x           2604    17082    enrollment id    DEFAULT     n   ALTER TABLE ONLY public.enrollment ALTER COLUMN id SET DEFAULT nextval('public.enrollment_id_seq'::regclass);
 <   ALTER TABLE public.enrollment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    287    288            y           2604    17093 &   event_departments event_departments_id    DEFAULT     �   ALTER TABLE ONLY public.event_departments ALTER COLUMN event_departments_id SET DEFAULT nextval('public.event_departments_event_departments_id_seq'::regclass);
 U   ALTER TABLE public.event_departments ALTER COLUMN event_departments_id DROP DEFAULT;
       public          postgres    false    289    290    290            z           2604    17101 !   event_registers event_register_id    DEFAULT     �   ALTER TABLE ONLY public.event_registers ALTER COLUMN event_register_id SET DEFAULT nextval('public.event_registers_event_register_id_seq'::regclass);
 P   ALTER TABLE public.event_registers ALTER COLUMN event_register_id DROP DEFAULT;
       public          postgres    false    291    292    292                       2604    17141    external_systems system_id    DEFAULT     �   ALTER TABLE ONLY public.external_systems ALTER COLUMN system_id SET DEFAULT nextval('public.external_systems_system_id_seq'::regclass);
 I   ALTER TABLE public.external_systems ALTER COLUMN system_id DROP DEFAULT;
       public          postgres    false    302    301    302            B           2604    16709    feedback_categories category_id    DEFAULT     �   ALTER TABLE ONLY public.feedback_categories ALTER COLUMN category_id SET DEFAULT nextval('public.feedback_categories_category_id_seq'::regclass);
 N   ALTER TABLE public.feedback_categories ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    17149 @   feedback_category_control_list feedback_category_control_list_id    DEFAULT     �   ALTER TABLE ONLY public.feedback_category_control_list ALTER COLUMN feedback_category_control_list_id SET DEFAULT nextval('public.feedback_category_control_lis_feedback_category_control_lis_seq'::regclass);
 o   ALTER TABLE public.feedback_category_control_list ALTER COLUMN feedback_category_control_list_id DROP DEFAULT;
       public          postgres    false    304    303    304            V           2604    16850    feedback_comments comment_id    DEFAULT     �   ALTER TABLE ONLY public.feedback_comments ALTER COLUMN comment_id SET DEFAULT nextval('public.feedback_comments_comment_id_seq'::regclass);
 K   ALTER TABLE public.feedback_comments ALTER COLUMN comment_id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    17157 )   feedback_event_logs feedback_event_log_id    DEFAULT     �   ALTER TABLE ONLY public.feedback_event_logs ALTER COLUMN feedback_event_log_id SET DEFAULT nextval('public.feedback_event_logs_feedback_event_log_id_seq'::regclass);
 X   ALTER TABLE public.feedback_event_logs ALTER COLUMN feedback_event_log_id DROP DEFAULT;
       public          postgres    false    305    306    306            �           2604    17187    feedback_images image_id    DEFAULT     �   ALTER TABLE ONLY public.feedback_images ALTER COLUMN image_id SET DEFAULT nextval('public.feedback_images_image_id_seq'::regclass);
 G   ALTER TABLE public.feedback_images ALTER COLUMN image_id DROP DEFAULT;
       public          postgres    false    311    312    312            �           2604    17195    feedback_status status_id    DEFAULT     �   ALTER TABLE ONLY public.feedback_status ALTER COLUMN status_id SET DEFAULT nextval('public.feedback_status_status_id_seq'::regclass);
 H   ALTER TABLE public.feedback_status ALTER COLUMN status_id DROP DEFAULT;
       public          postgres    false    314    313    314            �           2604    17165    feedbacks feedback_id    DEFAULT     ~   ALTER TABLE ONLY public.feedbacks ALTER COLUMN feedback_id SET DEFAULT nextval('public.feedbacks_feedback_id_seq'::regclass);
 D   ALTER TABLE public.feedbacks ALTER COLUMN feedback_id DROP DEFAULT;
       public          postgres    false    308    307    308            1           2604    19685    fend_item id    DEFAULT     l   ALTER TABLE ONLY public.fend_item ALTER COLUMN id SET DEFAULT nextval('public.fend_item_id_seq'::regclass);
 ;   ALTER TABLE public.fend_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    583    582    583            '           2604    19659    fend_register_form id    DEFAULT     ~   ALTER TABLE ONLY public.fend_register_form ALTER COLUMN id SET DEFAULT nextval('public.fend_register_form_id_seq'::regclass);
 D   ALTER TABLE public.fend_register_form ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    580    581    581            3           2604    19696    fend_research id    DEFAULT     t   ALTER TABLE ONLY public.fend_research ALTER COLUMN id SET DEFAULT nextval('public.fend_research_id_seq'::regclass);
 ?   ALTER TABLE public.fend_research ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    584    585    585                       2604    19201    form_input id    DEFAULT     n   ALTER TABLE ONLY public.form_input ALTER COLUMN id SET DEFAULT nextval('public.form_input_id_seq'::regclass);
 <   ALTER TABLE public.form_input ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    553    552    553            �           2604    17673 
   fs_file id    DEFAULT     h   ALTER TABLE ONLY public.fs_file ALTER COLUMN id SET DEFAULT nextval('public.fs_file_id_seq'::regclass);
 9   ALTER TABLE public.fs_file ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    415    416    416            )           2604    16510    image_albums album_id    DEFAULT     ~   ALTER TABLE ONLY public.image_albums ALTER COLUMN album_id SET DEFAULT nextval('public.image_albums_album_id_seq'::regclass);
 D   ALTER TABLE public.image_albums ALTER COLUMN album_id DROP DEFAULT;
       public          postgres    false    175    176    176            �           2604    17240    images image_id    DEFAULT     r   ALTER TABLE ONLY public.images ALTER COLUMN image_id SET DEFAULT nextval('public.images_image_id_seq'::regclass);
 >   ALTER TABLE public.images ALTER COLUMN image_id DROP DEFAULT;
       public          postgres    false    323    324    324            �           2604    18025 *   inbox_schedule_send inbox_schedule_send_id    DEFAULT     �   ALTER TABLE ONLY public.inbox_schedule_send ALTER COLUMN inbox_schedule_send_id SET DEFAULT nextval('public.inbox_schedule_send_inbox_schedule_send_id_seq'::regclass);
 Y   ALTER TABLE public.inbox_schedule_send ALTER COLUMN inbox_schedule_send_id DROP DEFAULT;
       public          postgres    false    482    481    482            �           2604    17684    insurance id    DEFAULT     l   ALTER TABLE ONLY public.insurance ALTER COLUMN id SET DEFAULT nextval('public.insurance_id_seq'::regclass);
 ;   ALTER TABLE public.insurance ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    418    417    418            �           2604    17695    insurance_choice id    DEFAULT     z   ALTER TABLE ONLY public.insurance_choice ALTER COLUMN id SET DEFAULT nextval('public.insurance_choice_id_seq'::regclass);
 B   ALTER TABLE public.insurance_choice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    420    419    420            �           2604    17706    insurance_join_topic id    DEFAULT     �   ALTER TABLE ONLY public.insurance_join_topic ALTER COLUMN id SET DEFAULT nextval('public.insurance_join_topic_id_seq'::regclass);
 F   ALTER TABLE public.insurance_join_topic ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    422    421    422            �           2604    17717    insurance_topic id    DEFAULT     x   ALTER TABLE ONLY public.insurance_topic ALTER COLUMN id SET DEFAULT nextval('public.insurance_topic_id_seq'::regclass);
 A   ALTER TABLE public.insurance_topic ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    423    424    424            �           2604    17728    insurance_type id    DEFAULT     v   ALTER TABLE ONLY public.insurance_type ALTER COLUMN id SET DEFAULT nextval('public.insurance_type_id_seq'::regclass);
 @   ALTER TABLE public.insurance_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    425    426    426            �           2604    17739    insurance_year id    DEFAULT     v   ALTER TABLE ONLY public.insurance_year ALTER COLUMN id SET DEFAULT nextval('public.insurance_year_id_seq'::regclass);
 @   ALTER TABLE public.insurance_year ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    428    427    428            �           2604    17750    iris_calendar id    DEFAULT     t   ALTER TABLE ONLY public.iris_calendar ALTER COLUMN id SET DEFAULT nextval('public.iris_calendar_id_seq'::regclass);
 ?   ALTER TABLE public.iris_calendar ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    430    429    430            �           2604    17260    iris_manage_report id    DEFAULT     ~   ALTER TABLE ONLY public.iris_manage_report ALTER COLUMN id SET DEFAULT nextval('public.iris_manage_report_id_seq'::regclass);
 D   ALTER TABLE public.iris_manage_report ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    328    327    328            �           2604    17271    iris_manage_report_role id    DEFAULT     �   ALTER TABLE ONLY public.iris_manage_report_role ALTER COLUMN id SET DEFAULT nextval('public.iris_manage_report_role_id_seq'::regclass);
 I   ALTER TABLE public.iris_manage_report_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    329    330    330            �           2604    17762    iris_report_with_water_mark id    DEFAULT     �   ALTER TABLE ONLY public.iris_report_with_water_mark ALTER COLUMN id SET DEFAULT nextval('public.iris_report_with_water_mark_id_seq'::regclass);
 M   ALTER TABLE public.iris_report_with_water_mark ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    431    432    432            �           2604    17279    iris_subsidiaries id    DEFAULT     |   ALTER TABLE ONLY public.iris_subsidiaries ALTER COLUMN id SET DEFAULT nextval('public.iris_subsidiaries_id_seq'::regclass);
 C   ALTER TABLE public.iris_subsidiaries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    332    331    332            �           2604    17773    km id    DEFAULT     ^   ALTER TABLE ONLY public.km ALTER COLUMN id SET DEFAULT nextval('public.km_id_seq'::regclass);
 4   ALTER TABLE public.km ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    434    433    434                       2604    19047    leave_benefits id    DEFAULT     v   ALTER TABLE ONLY public.leave_benefits ALTER COLUMN id SET DEFAULT nextval('public.leave_benefits_id_seq'::regclass);
 @   ALTER TABLE public.leave_benefits ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    538    539    539                       2604    19148    leave_benefits_user id    DEFAULT     �   ALTER TABLE ONLY public.leave_benefits_user ALTER COLUMN id SET DEFAULT nextval('public.leave_benefits_user_id_seq'::regclass);
 E   ALTER TABLE public.leave_benefits_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    547    546    547            �           2604    17416    message message_id    DEFAULT     x   ALTER TABLE ONLY public.message ALTER COLUMN message_id SET DEFAULT nextval('public.message_message_id_seq'::regclass);
 A   ALTER TABLE public.message ALTER COLUMN message_id DROP DEFAULT;
       public          postgres    false    361    362    362            �           2604    17248    news news_id    DEFAULT     l   ALTER TABLE ONLY public.news ALTER COLUMN news_id SET DEFAULT nextval('public.news_news_id_seq'::regclass);
 ;   ALTER TABLE public.news ALTER COLUMN news_id DROP DEFAULT;
       public          postgres    false    326    325    326            C           2604    16721    news_categories category_id    DEFAULT     �   ALTER TABLE ONLY public.news_categories ALTER COLUMN category_id SET DEFAULT nextval('public.news_categories_category_id_seq'::regclass);
 J   ALTER TABLE public.news_categories ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    17291 (   news_category_list news_category_list_id    DEFAULT     �   ALTER TABLE ONLY public.news_category_list ALTER COLUMN news_category_list_id SET DEFAULT nextval('public.news_category_list_news_category_list_id_seq'::regclass);
 W   ALTER TABLE public.news_category_list ALTER COLUMN news_category_list_id DROP DEFAULT;
       public          postgres    false    334    333    334            W           2604    16861    news_comments comment_id    DEFAULT     �   ALTER TABLE ONLY public.news_comments ALTER COLUMN comment_id SET DEFAULT nextval('public.news_comments_comment_id_seq'::regclass);
 G   ALTER TABLE public.news_comments ALTER COLUMN comment_id DROP DEFAULT;
       public          postgres    false    244    243    244            �           2604    17299 $   news_departments news_departments_id    DEFAULT     �   ALTER TABLE ONLY public.news_departments ALTER COLUMN news_departments_id SET DEFAULT nextval('public.news_departments_news_departments_id_seq'::regclass);
 S   ALTER TABLE public.news_departments ALTER COLUMN news_departments_id DROP DEFAULT;
       public          postgres    false    335    336    336            �           2604    17307 (   news_favorite_list news_favorite_list_id    DEFAULT     �   ALTER TABLE ONLY public.news_favorite_list ALTER COLUMN news_favorite_list_id SET DEFAULT nextval('public.news_favorite_list_news_favorite_list_id_seq'::regclass);
 W   ALTER TABLE public.news_favorite_list ALTER COLUMN news_favorite_list_id DROP DEFAULT;
       public          postgres    false    338    337    338            �           2604    17203    news_files file_id    DEFAULT     x   ALTER TABLE ONLY public.news_files ALTER COLUMN file_id SET DEFAULT nextval('public.news_files_file_id_seq'::regclass);
 A   ALTER TABLE public.news_files ALTER COLUMN file_id DROP DEFAULT;
       public          postgres    false    315    316    316            �           2604    17315    news_groups group_id    DEFAULT     |   ALTER TABLE ONLY public.news_groups ALTER COLUMN group_id SET DEFAULT nextval('public.news_groups_group_id_seq'::regclass);
 C   ALTER TABLE public.news_groups ALTER COLUMN group_id DROP DEFAULT;
       public          postgres    false    340    339    340            �           2604    17326 4   news_groups_control_list news_groups_control_list_id    DEFAULT     �   ALTER TABLE ONLY public.news_groups_control_list ALTER COLUMN news_groups_control_list_id SET DEFAULT nextval('public.news_groups_control_list_news_groups_control_list_id_seq'::regclass);
 c   ALTER TABLE public.news_groups_control_list ALTER COLUMN news_groups_control_list_id DROP DEFAULT;
       public          postgres    false    342    341    342            �           2604    17334 :   news_groups_department_list news_groups_department_list_id    DEFAULT     �   ALTER TABLE ONLY public.news_groups_department_list ALTER COLUMN news_groups_department_list_id SET DEFAULT nextval('public.news_groups_department_list_news_groups_department_list_id_seq'::regclass);
 i   ALTER TABLE public.news_groups_department_list ALTER COLUMN news_groups_department_list_id DROP DEFAULT;
       public          postgres    false    344    343    344            �           2604    18316 $   news_groups_list news_groups_list_id    DEFAULT     �   ALTER TABLE ONLY public.news_groups_list ALTER COLUMN news_groups_list_id SET DEFAULT nextval('public.news_groups_list_news_groups_list_id_seq'::regclass);
 S   ALTER TABLE public.news_groups_list ALTER COLUMN news_groups_list_id DROP DEFAULT;
       public          postgres    false    495    496    496            �           2604    17342 .   news_groups_user_list news_groups_user_list_id    DEFAULT     �   ALTER TABLE ONLY public.news_groups_user_list ALTER COLUMN news_groups_user_list_id SET DEFAULT nextval('public.news_groups_user_list_news_groups_user_list_id_seq'::regclass);
 ]   ALTER TABLE public.news_groups_user_list ALTER COLUMN news_groups_user_list_id DROP DEFAULT;
       public          postgres    false    346    345    346            �           2604    17350    news_images news_images_id    DEFAULT     �   ALTER TABLE ONLY public.news_images ALTER COLUMN news_images_id SET DEFAULT nextval('public.news_images_news_images_id_seq'::regclass);
 I   ALTER TABLE public.news_images ALTER COLUMN news_images_id DROP DEFAULT;
       public          postgres    false    347    348    348            �           2604    18798    notification_history id    DEFAULT     �   ALTER TABLE ONLY public.notification_history ALTER COLUMN id SET DEFAULT nextval('public.notification_history_id_seq'::regclass);
 F   ALTER TABLE public.notification_history ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    516    517    517            �           2604    17358 #   notification_queues notification_id    DEFAULT     �   ALTER TABLE ONLY public.notification_queues ALTER COLUMN notification_id SET DEFAULT nextval('public.notification_queues_notification_id_seq'::regclass);
 R   ALTER TABLE public.notification_queues ALTER COLUMN notification_id DROP DEFAULT;
       public          postgres    false    349    350    350            �           2604    18768    passenger_request id    DEFAULT     |   ALTER TABLE ONLY public.passenger_request ALTER COLUMN id SET DEFAULT nextval('public.passenger_request_id_seq'::regclass);
 C   ALTER TABLE public.passenger_request ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    514    515    515            �           2604    17366    play_events id    DEFAULT     p   ALTER TABLE ONLY public.play_events ALTER COLUMN id SET DEFAULT nextval('public.play_events_id_seq'::regclass);
 =   ALTER TABLE public.play_events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    351    352    352            �           2604    17378    play_events_images id    DEFAULT     ~   ALTER TABLE ONLY public.play_events_images ALTER COLUMN id SET DEFAULT nextval('public.play_events_images_id_seq'::regclass);
 D   ALTER TABLE public.play_events_images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    354    353    354            �           2604    17389    play_user_join_event id    DEFAULT     �   ALTER TABLE ONLY public.play_user_join_event ALTER COLUMN id SET DEFAULT nextval('public.play_user_join_event_id_seq'::regclass);
 F   ALTER TABLE public.play_user_join_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    355    356    356            �           2604    17400    point_transaction_log log_id    DEFAULT     �   ALTER TABLE ONLY public.point_transaction_log ALTER COLUMN log_id SET DEFAULT nextval('public.point_transaction_log_log_id_seq'::regclass);
 K   ALTER TABLE public.point_transaction_log ALTER COLUMN log_id DROP DEFAULT;
       public          postgres    false    357    358    358            �           2604    17784    pool_car id    DEFAULT     j   ALTER TABLE ONLY public.pool_car ALTER COLUMN id SET DEFAULT nextval('public.pool_car_id_seq'::regclass);
 :   ALTER TABLE public.pool_car ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    436    435    436            w           2604    17071    pool_report id    DEFAULT     p   ALTER TABLE ONLY public.pool_report ALTER COLUMN id SET DEFAULT nextval('public.pool_report_id_seq'::regclass);
 =   ALTER TABLE public.pool_report ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    286    285    286            �           2604    17795    pool_route id    DEFAULT     n   ALTER TABLE ONLY public.pool_route ALTER COLUMN id SET DEFAULT nextval('public.pool_route_id_seq'::regclass);
 <   ALTER TABLE public.pool_route ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    437    438    438            �           2604    17806    pool_station id    DEFAULT     r   ALTER TABLE ONLY public.pool_station ALTER COLUMN id SET DEFAULT nextval('public.pool_station_id_seq'::regclass);
 >   ALTER TABLE public.pool_station ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    440    439    440            �           2604    17817    pool_station_time id    DEFAULT     |   ALTER TABLE ONLY public.pool_station_time ALTER COLUMN id SET DEFAULT nextval('public.pool_station_time_id_seq'::regclass);
 C   ALTER TABLE public.pool_station_time ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    441    442    442            �           2604    17828 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    443    444    444            �           2604    17839    product_category id    DEFAULT     z   ALTER TABLE ONLY public.product_category ALTER COLUMN id SET DEFAULT nextval('public.product_category_id_seq'::regclass);
 B   ALTER TABLE public.product_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    446    445    446                       2604    19212    product_form_input id    DEFAULT     ~   ALTER TABLE ONLY public.product_form_input ALTER COLUMN id SET DEFAULT nextval('public.product_form_input_id_seq'::regclass);
 D   ALTER TABLE public.product_form_input ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    554    555    555            �           2604    17850    product_image id    DEFAULT     t   ALTER TABLE ONLY public.product_image ALTER COLUMN id SET DEFAULT nextval('public.product_image_id_seq'::regclass);
 ?   ALTER TABLE public.product_image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    448    447    448            �           2604    17861    product_serial id    DEFAULT     v   ALTER TABLE ONLY public.product_serial ALTER COLUMN id SET DEFAULT nextval('public.product_serial_id_seq'::regclass);
 @   ALTER TABLE public.product_serial ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    449    450    450            �           2604    17408    readed readed_id    DEFAULT     t   ALTER TABLE ONLY public.readed ALTER COLUMN readed_id SET DEFAULT nextval('public.readed_readed_id_seq'::regclass);
 ?   ALTER TABLE public.readed ALTER COLUMN readed_id DROP DEFAULT;
       public          postgres    false    360    359    360                       2604    19257    relative id    DEFAULT     j   ALTER TABLE ONLY public.relative ALTER COLUMN id SET DEFAULT nextval('public.relative_id_seq'::regclass);
 :   ALTER TABLE public.relative ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    560    561    561                       2604    19100    relative_benefits_category id    DEFAULT     �   ALTER TABLE ONLY public.relative_benefits_category ALTER COLUMN id SET DEFAULT nextval('public.relative_benefits_category_id_seq'::regclass);
 L   ALTER TABLE public.relative_benefits_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    545    544    545                       2604    19376    relative_benefits_choice_tag id    DEFAULT     �   ALTER TABLE ONLY public.relative_benefits_choice_tag ALTER COLUMN id SET DEFAULT nextval('public.relative_benefits_choice_tag_id_seq'::regclass);
 N   ALTER TABLE public.relative_benefits_choice_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    566    567    567                       2604    19185    relative_benefits_choices id    DEFAULT     �   ALTER TABLE ONLY public.relative_benefits_choices ALTER COLUMN id SET DEFAULT nextval('public.relative_benefits_choices_id_seq'::regclass);
 K   ALTER TABLE public.relative_benefits_choices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    550    551    551                        2604    19419    relative_selected_choices id    DEFAULT     �   ALTER TABLE ONLY public.relative_selected_choices ALTER COLUMN id SET DEFAULT nextval('public.relative_selected_choices_id_seq'::regclass);
 K   ALTER TABLE public.relative_selected_choices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    570    571    571                       2604    19249    relative_type id    DEFAULT     t   ALTER TABLE ONLY public.relative_type ALTER COLUMN id SET DEFAULT nextval('public.relative_type_id_seq'::regclass);
 ?   ALTER TABLE public.relative_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    558    559    559            �           2604    17481    request_status status_id    DEFAULT     �   ALTER TABLE ONLY public.request_status ALTER COLUMN status_id SET DEFAULT nextval('public.request_status_status_id_seq'::regclass);
 G   ALTER TABLE public.request_status ALTER COLUMN status_id DROP DEFAULT;
       public          postgres    false    375    376    376            �           2604    17489    requests request_id    DEFAULT     z   ALTER TABLE ONLY public.requests ALTER COLUMN request_id SET DEFAULT nextval('public.requests_request_id_seq'::regclass);
 B   ALTER TABLE public.requests ALTER COLUMN request_id DROP DEFAULT;
       public          postgres    false    377    378    378            D           2604    16729    reward_categories category_id    DEFAULT     �   ALTER TABLE ONLY public.reward_categories ALTER COLUMN category_id SET DEFAULT nextval('public.reward_categories_category_id_seq'::regclass);
 L   ALTER TABLE public.reward_categories ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    17427 ,   reward_category_list reward_category_list_id    DEFAULT     �   ALTER TABLE ONLY public.reward_category_list ALTER COLUMN reward_category_list_id SET DEFAULT nextval('public.reward_category_list_reward_category_list_id_seq'::regclass);
 [   ALTER TABLE public.reward_category_list ALTER COLUMN reward_category_list_id DROP DEFAULT;
       public          postgres    false    364    363    364            �           2604    17446    reward_images reward_images_id    DEFAULT     �   ALTER TABLE ONLY public.reward_images ALTER COLUMN reward_images_id SET DEFAULT nextval('public.reward_images_reward_images_id_seq'::regclass);
 M   ALTER TABLE public.reward_images ALTER COLUMN reward_images_id DROP DEFAULT;
       public          postgres    false    367    368    368            �           2604    17435    rewards reward_id    DEFAULT     v   ALTER TABLE ONLY public.rewards ALTER COLUMN reward_id SET DEFAULT nextval('public.rewards_reward_id_seq'::regclass);
 @   ALTER TABLE public.rewards ALTER COLUMN reward_id DROP DEFAULT;
       public          postgres    false    365    366    366            �           2604    17211    roles role_id    DEFAULT     n   ALTER TABLE ONLY public.roles ALTER COLUMN role_id SET DEFAULT nextval('public.roles_role_id_seq'::regclass);
 <   ALTER TABLE public.roles ALTER COLUMN role_id DROP DEFAULT;
       public          postgres    false    318    317    318                       2604    19076    self_benefits_category id    DEFAULT     �   ALTER TABLE ONLY public.self_benefits_category ALTER COLUMN id SET DEFAULT nextval('public.self_benefits_category_id_seq'::regclass);
 H   ALTER TABLE public.self_benefits_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    542    541    542                       2604    19355    self_benefits_choice_tag id    DEFAULT     �   ALTER TABLE ONLY public.self_benefits_choice_tag ALTER COLUMN id SET DEFAULT nextval('public.self_benefits_choice_tag_id_seq'::regclass);
 J   ALTER TABLE public.self_benefits_choice_tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    565    564    565                       2604    19169    self_benefits_choices id    DEFAULT     �   ALTER TABLE ONLY public.self_benefits_choices ALTER COLUMN id SET DEFAULT nextval('public.self_benefits_choices_id_seq'::regclass);
 G   ALTER TABLE public.self_benefits_choices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    549    548    549            �           2604    18709    shop_banner id    DEFAULT     p   ALTER TABLE ONLY public.shop_banner ALTER COLUMN id SET DEFAULT nextval('public.shop_banner_id_seq'::regclass);
 =   ALTER TABLE public.shop_banner ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    506    507    507                       2604    19281    tag id    DEFAULT     `   ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);
 5   ALTER TABLE public.tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    562    563    563                       2604    18995    thaddr_district id    DEFAULT     x   ALTER TABLE ONLY public.thaddr_district ALTER COLUMN id SET DEFAULT nextval('public.thaddr_district_id_seq'::regclass);
 A   ALTER TABLE public.thaddr_district ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    534    533    534                       2604    18984    thaddr_province id    DEFAULT     x   ALTER TABLE ONLY public.thaddr_province ALTER COLUMN id SET DEFAULT nextval('public.thaddr_province_id_seq'::regclass);
 A   ALTER TABLE public.thaddr_province ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    532    531    532                       2604    19011    thaddr_subdistrict id    DEFAULT     ~   ALTER TABLE ONLY public.thaddr_subdistrict ALTER COLUMN id SET DEFAULT nextval('public.thaddr_subdistrict_id_seq'::regclass);
 D   ALTER TABLE public.thaddr_subdistrict ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    535    536    536            �           2604    18842    thaioil_coins_record id    DEFAULT     �   ALTER TABLE ONLY public.thaioil_coins_record ALTER COLUMN id SET DEFAULT nextval('public.thaioil_coins_record_id_seq'::regclass);
 F   ALTER TABLE public.thaioil_coins_record ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    519    518    519            �           2604    17232    thread_images thread_images_id    DEFAULT     �   ALTER TABLE ONLY public.thread_images ALTER COLUMN thread_images_id SET DEFAULT nextval('public.thread_images_thread_images_id_seq'::regclass);
 M   ALTER TABLE public.thread_images ALTER COLUMN thread_images_id DROP DEFAULT;
       public          postgres    false    321    322    322            �           2604    17454    top_coin_transaction_log id    DEFAULT     �   ALTER TABLE ONLY public.top_coin_transaction_log ALTER COLUMN id SET DEFAULT nextval('public.top_coin_transaction_log_id_seq'::regclass);
 J   ALTER TABLE public.top_coin_transaction_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    370    369    370            �           2604    17872    top_donate_activity id    DEFAULT     �   ALTER TABLE ONLY public.top_donate_activity ALTER COLUMN id SET DEFAULT nextval('public.top_donate_activity_id_seq'::regclass);
 E   ALTER TABLE public.top_donate_activity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    451    452    452            R           2604    16825    top_donate_coin id    DEFAULT     x   ALTER TABLE ONLY public.top_donate_coin ALTER COLUMN id SET DEFAULT nextval('public.top_donate_coin_id_seq'::regclass);
 A   ALTER TABLE public.top_donate_coin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    17884    top_donate_comment id    DEFAULT     ~   ALTER TABLE ONLY public.top_donate_comment ALTER COLUMN id SET DEFAULT nextval('public.top_donate_comment_id_seq'::regclass);
 D   ALTER TABLE public.top_donate_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    453    454    454            �           2604    17895    top_donate_foundation id    DEFAULT     �   ALTER TABLE ONLY public.top_donate_foundation ALTER COLUMN id SET DEFAULT nextval('public.top_donate_foundation_id_seq'::regclass);
 G   ALTER TABLE public.top_donate_foundation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    455    456    456            �           2604    17906    top_donate_like id    DEFAULT     x   ALTER TABLE ONLY public.top_donate_like ALTER COLUMN id SET DEFAULT nextval('public.top_donate_like_id_seq'::regclass);
 A   ALTER TABLE public.top_donate_like ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    457    458    458            �           2604    17914    top_donate_post id    DEFAULT     x   ALTER TABLE ONLY public.top_donate_post ALTER COLUMN id SET DEFAULT nextval('public.top_donate_post_id_seq'::regclass);
 A   ALTER TABLE public.top_donate_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    459    460    460            �           2604    17925    top_donate_sub_other id    DEFAULT     �   ALTER TABLE ONLY public.top_donate_sub_other ALTER COLUMN id SET DEFAULT nextval('public.top_donate_sub_other_id_seq'::regclass);
 F   ALTER TABLE public.top_donate_sub_other ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    461    462    462            �           2604    17936    topic_choice id    DEFAULT     r   ALTER TABLE ONLY public.topic_choice ALTER COLUMN id SET DEFAULT nextval('public.topic_choice_id_seq'::regclass);
 >   ALTER TABLE public.topic_choice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    464    463    464                       2604    18949    user_address id    DEFAULT     r   ALTER TABLE ONLY public.user_address ALTER COLUMN id SET DEFAULT nextval('public.user_address_id_seq'::regclass);
 >   ALTER TABLE public.user_address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    530    529    530                        2604    18938    user_app_shortcut id    DEFAULT     |   ALTER TABLE ONLY public.user_app_shortcut ALTER COLUMN id SET DEFAULT nextval('public.user_app_shortcut_id_seq'::regclass);
 C   ALTER TABLE public.user_app_shortcut ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    528    527    528            �           2604    17465    user_choice user_choice_id    DEFAULT     �   ALTER TABLE ONLY public.user_choice ALTER COLUMN user_choice_id SET DEFAULT nextval('public.user_choice_user_choice_id_seq'::regclass);
 I   ALTER TABLE public.user_choice ALTER COLUMN user_choice_id DROP DEFAULT;
       public          postgres    false    372    371    372            �           2604    17947    user_claim id    DEFAULT     n   ALTER TABLE ONLY public.user_claim ALTER COLUMN id SET DEFAULT nextval('public.user_claim_id_seq'::regclass);
 <   ALTER TABLE public.user_claim ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    466    465    466            �           2604    17473 $   user_departments user_departments_id    DEFAULT     �   ALTER TABLE ONLY public.user_departments ALTER COLUMN user_departments_id SET DEFAULT nextval('public.user_departments_user_departments_id_seq'::regclass);
 S   ALTER TABLE public.user_departments ALTER COLUMN user_departments_id DROP DEFAULT;
       public          postgres    false    374    373    374            �           2604    17956    user_family id    DEFAULT     p   ALTER TABLE ONLY public.user_family ALTER COLUMN id SET DEFAULT nextval('public.user_family_id_seq'::regclass);
 =   ALTER TABLE public.user_family ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    468    467    468            �           2604    17967 %   user_family_insurance_topic_choice id    DEFAULT     �   ALTER TABLE ONLY public.user_family_insurance_topic_choice ALTER COLUMN id SET DEFAULT nextval('public.user_family_insurance_topic_choice_id_seq'::regclass);
 T   ALTER TABLE public.user_family_insurance_topic_choice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    470    469    470            �           2604    17978    user_first_join_odyssey id    DEFAULT     �   ALTER TABLE ONLY public.user_first_join_odyssey ALTER COLUMN id SET DEFAULT nextval('public.user_first_join_odyssey_id_seq'::regclass);
 I   ALTER TABLE public.user_first_join_odyssey ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    471    472    472            �           2604    17986    user_insurance_topic_choice id    DEFAULT     �   ALTER TABLE ONLY public.user_insurance_topic_choice ALTER COLUMN id SET DEFAULT nextval('public.user_insurance_topic_choice_id_seq'::regclass);
 M   ALTER TABLE public.user_insurance_topic_choice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    473    474    474            �           2604    17997    user_leave_coin id    DEFAULT     x   ALTER TABLE ONLY public.user_leave_coin ALTER COLUMN id SET DEFAULT nextval('public.user_leave_coin_id_seq'::regclass);
 A   ALTER TABLE public.user_leave_coin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    476    475    476            �           2604    18680    user_msal_tokens token_id    DEFAULT     �   ALTER TABLE ONLY public.user_msal_tokens ALTER COLUMN token_id SET DEFAULT nextval('public.user_msal_tokens_token_id_seq'::regclass);
 H   ALTER TABLE public.user_msal_tokens ALTER COLUMN token_id DROP DEFAULT;
       public          postgres    false    505    504    505            $           2604    19602    user_prefix id    DEFAULT     p   ALTER TABLE ONLY public.user_prefix ALTER COLUMN id SET DEFAULT nextval('public.user_prefix_id_seq'::regclass);
 =   ALTER TABLE public.user_prefix ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    575    574    575            �           2604    18657    user_product id    DEFAULT     r   ALTER TABLE ONLY public.user_product ALTER COLUMN id SET DEFAULT nextval('public.user_product_id_seq'::regclass);
 >   ALTER TABLE public.user_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    501    500    501                       2604    19228    user_product_info id    DEFAULT     |   ALTER TABLE ONLY public.user_product_info ALTER COLUMN id SET DEFAULT nextval('public.user_product_info_id_seq'::regclass);
 C   ALTER TABLE public.user_product_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    557    556    557            �           2604    17497    user_roles user_roles_id    DEFAULT     �   ALTER TABLE ONLY public.user_roles ALTER COLUMN user_roles_id SET DEFAULT nextval('public.user_roles_user_roles_id_seq'::regclass);
 G   ALTER TABLE public.user_roles ALTER COLUMN user_roles_id DROP DEFAULT;
       public          postgres    false    380    379    380                       2604    19397    user_selected_choices id    DEFAULT     �   ALTER TABLE ONLY public.user_selected_choices ALTER COLUMN id SET DEFAULT nextval('public.user_selected_choices_id_seq'::regclass);
 G   ALTER TABLE public.user_selected_choices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    568    569    569            &           2604    19626    user_tags id    DEFAULT     l   ALTER TABLE ONLY public.user_tags ALTER COLUMN id SET DEFAULT nextval('public.user_tags_id_seq'::regclass);
 ;   ALTER TABLE public.user_tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    579    578    579            �           2604    18006    user_third_party id    DEFAULT     z   ALTER TABLE ONLY public.user_third_party ALTER COLUMN id SET DEFAULT nextval('public.user_third_party_id_seq'::regclass);
 B   ALTER TABLE public.user_third_party ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    477    478    478            �           2604    17505    user_tokens token_id    DEFAULT     |   ALTER TABLE ONLY public.user_tokens ALTER COLUMN token_id SET DEFAULT nextval('public.user_tokens_token_id_seq'::regclass);
 C   ALTER TABLE public.user_tokens ALTER COLUMN token_id DROP DEFAULT;
       public          postgres    false    381    382    382            �           2604    17219    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    319    320    320            "           2604    19560    users_pre_selected_claims id    DEFAULT     �   ALTER TABLE ONLY public.users_pre_selected_claims ALTER COLUMN id SET DEFAULT nextval('public.users_pre_selected_claims_id_seq'::regclass);
 K   ALTER TABLE public.users_pre_selected_claims ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    572    573    573            �           2604    18084    visited visited_id    DEFAULT     x   ALTER TABLE ONLY public.visited ALTER COLUMN visited_id SET DEFAULT nextval('public.visited_visited_id_seq'::regclass);
 A   ALTER TABLE public.visited ALTER COLUMN visited_id DROP DEFAULT;
       public          postgres    false    491    492    492            T           2604    16834 7   well_being_coin_transaction_log coin_transaction_log_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_coin_transaction_log ALTER COLUMN coin_transaction_log_id SET DEFAULT nextval('public.well_being_coin_transaction_log_coin_transaction_log_id_seq'::regclass);
 f   ALTER TABLE public.well_being_coin_transaction_log ALTER COLUMN coin_transaction_log_id DROP DEFAULT;
       public          postgres    false    238    237    238            p           2604    17027    well_being_donation donation_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_donation ALTER COLUMN donation_id SET DEFAULT nextval('public.well_being_donation_donation_id_seq'::regclass);
 N   ALTER TABLE public.well_being_donation ALTER COLUMN donation_id DROP DEFAULT;
       public          postgres    false    277    278    278            r           2604    17039 +   well_being_donation_image donation_image_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_donation_image ALTER COLUMN donation_image_id SET DEFAULT nextval('public.well_being_donation_image_donation_image_id_seq'::regclass);
 Z   ALTER TABLE public.well_being_donation_image ALTER COLUMN donation_image_id DROP DEFAULT;
       public          postgres    false    280    279    280            s           2604    17050 +   well_being_donation_thank donation_thank_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_donation_thank ALTER COLUMN donation_thank_id SET DEFAULT nextval('public.well_being_donation_thank_donation_thank_id_seq'::regclass);
 Z   ALTER TABLE public.well_being_donation_thank ALTER COLUMN donation_thank_id DROP DEFAULT;
       public          postgres    false    282    281    282            {           2604    17109 5   well_being_event_team_register event_team_register_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_event_team_register ALTER COLUMN event_team_register_id SET DEFAULT nextval('public.well_being_event_team_register_event_team_register_id_seq'::regclass);
 d   ALTER TABLE public.well_being_event_team_register ALTER COLUMN event_team_register_id DROP DEFAULT;
       public          postgres    false    293    294    294            |           2604    17117 #   well_being_event_type event_type_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_event_type ALTER COLUMN event_type_id SET DEFAULT nextval('public.well_being_event_type_event_type_id_seq'::regclass);
 R   ALTER TABLE public.well_being_event_type ALTER COLUMN event_type_id DROP DEFAULT;
       public          postgres    false    296    295    296            }           2604    17125 5   well_being_event_user_register event_user_register_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_event_user_register ALTER COLUMN event_user_register_id SET DEFAULT nextval('public.well_being_event_user_register_event_user_register_id_seq'::regclass);
 d   ALTER TABLE public.well_being_event_user_register ALTER COLUMN event_user_register_id DROP DEFAULT;
       public          postgres    false    297    298    298            t           2604    17058    well_being_events event_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_events ALTER COLUMN event_id SET DEFAULT nextval('public.well_being_events_event_id_seq'::regclass);
 I   ALTER TABLE public.well_being_events ALTER COLUMN event_id DROP DEFAULT;
       public          postgres    false    284    283    284            ~           2604    17133 *   well_being_exercise_types exercise_type_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_exercise_types ALTER COLUMN exercise_type_id SET DEFAULT nextval('public.well_being_exercise_types_exercise_type_id_seq'::regclass);
 Y   ALTER TABLE public.well_being_exercise_types ALTER COLUMN exercise_type_id DROP DEFAULT;
       public          postgres    false    299    300    300            �           2604    17176     well_being_feedbacks feedback_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_feedbacks ALTER COLUMN feedback_id SET DEFAULT nextval('public.well_being_feedbacks_feedback_id_seq'::regclass);
 O   ALTER TABLE public.well_being_feedbacks ALTER COLUMN feedback_id DROP DEFAULT;
       public          postgres    false    310    309    310            �           2604    17547    well_being_follow follow_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_follow ALTER COLUMN follow_id SET DEFAULT nextval('public.well_being_follow_follow_id_seq'::regclass);
 J   ALTER TABLE public.well_being_follow ALTER COLUMN follow_id DROP DEFAULT;
       public          postgres    false    390    389    390            �           2604    17555    well_being_goals goal_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_goals ALTER COLUMN goal_id SET DEFAULT nextval('public.well_being_goals_goal_id_seq'::regclass);
 G   ALTER TABLE public.well_being_goals ALTER COLUMN goal_id DROP DEFAULT;
       public          postgres    false    391    392    392            �           2604    17527 #   well_being_health_tip health_tip_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_health_tip ALTER COLUMN health_tip_id SET DEFAULT nextval('public.well_being_health_tip_health_tip_id_seq'::regclass);
 R   ALTER TABLE public.well_being_health_tip ALTER COLUMN health_tip_id DROP DEFAULT;
       public          postgres    false    386    385    386            �           2604    17566    well_being_likes like_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_likes ALTER COLUMN like_id SET DEFAULT nextval('public.well_being_likes_like_id_seq'::regclass);
 G   ALTER TABLE public.well_being_likes ALTER COLUMN like_id DROP DEFAULT;
       public          postgres    false    393    394    394            �           2604    18036 '   well_being_notification notification_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_notification ALTER COLUMN notification_id SET DEFAULT nextval('public.well_being_notification_notification_id_seq'::regclass);
 V   ALTER TABLE public.well_being_notification ALTER COLUMN notification_id DROP DEFAULT;
       public          postgres    false    483    484    484            �           2604    17574 (   well_being_post_comments post_comment_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_post_comments ALTER COLUMN post_comment_id SET DEFAULT nextval('public.well_being_post_comments_post_comment_id_seq'::regclass);
 W   ALTER TABLE public.well_being_post_comments ALTER COLUMN post_comment_id DROP DEFAULT;
       public          postgres    false    395    396    396            �           2604    17612 /   well_being_post_news_detail post_news_detail_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_post_news_detail ALTER COLUMN post_news_detail_id SET DEFAULT nextval('public.well_being_post_news_detail_post_news_detail_id_seq'::regclass);
 ^   ALTER TABLE public.well_being_post_news_detail ALTER COLUMN post_news_detail_id DROP DEFAULT;
       public          postgres    false    403    404    404            �           2604    17623 ;   well_being_post_news_detail_image post_news_detail_image_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_post_news_detail_image ALTER COLUMN post_news_detail_image_id SET DEFAULT nextval('public.well_being_post_news_detail_image_post_news_detail_image_id_seq'::regclass);
 j   ALTER TABLE public.well_being_post_news_detail_image ALTER COLUMN post_news_detail_image_id DROP DEFAULT;
       public          postgres    false    406    405    406            �           2604    17585    well_being_posts post_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_posts ALTER COLUMN post_id SET DEFAULT nextval('public.well_being_posts_post_id_seq'::regclass);
 G   ALTER TABLE public.well_being_posts ALTER COLUMN post_id DROP DEFAULT;
       public          postgres    false    397    398    398            �           2604    17634    well_being_product product_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_product ALTER COLUMN product_id SET DEFAULT nextval('public.well_being_product_product_id_seq'::regclass);
 L   ALTER TABLE public.well_being_product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    408    407    408            1           2604    16578 -   well_being_product_best_seller best_seller_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_product_best_seller ALTER COLUMN best_seller_id SET DEFAULT nextval('public.well_being_product_best_seller_best_seller_id_seq'::regclass);
 \   ALTER TABLE public.well_being_product_best_seller ALTER COLUMN best_seller_id DROP DEFAULT;
       public          postgres    false    189    190    190            �           2604    17539 /   well_being_product_delivery product_delivery_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_product_delivery ALTER COLUMN product_delivery_id SET DEFAULT nextval('public.well_being_product_delivery_product_delivery_id_seq'::regclass);
 ^   ALTER TABLE public.well_being_product_delivery ALTER COLUMN product_delivery_id DROP DEFAULT;
       public          postgres    false    387    388    388            �           2604    17645 )   well_being_product_image product_image_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_product_image ALTER COLUMN product_image_id SET DEFAULT nextval('public.well_being_product_image_product_image_id_seq'::regclass);
 X   ALTER TABLE public.well_being_product_image ALTER COLUMN product_image_id DROP DEFAULT;
       public          postgres    false    410    409    410            �           2604    17656 +   well_being_product_status product_status_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_product_status ALTER COLUMN product_status_id SET DEFAULT nextval('public.well_being_product_status_product_status_id_seq'::regclass);
 Z   ALTER TABLE public.well_being_product_status ALTER COLUMN product_status_id DROP DEFAULT;
       public          postgres    false    412    411    412            �           2604    17664 '   well_being_product_type product_type_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_product_type ALTER COLUMN product_type_id SET DEFAULT nextval('public.well_being_product_type_product_type_id_seq'::regclass);
 V   ALTER TABLE public.well_being_product_type ALTER COLUMN product_type_id DROP DEFAULT;
       public          postgres    false    413    414    414            �           2604    18076 &   well_being_team_members team_member_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_team_members ALTER COLUMN team_member_id SET DEFAULT nextval('public.well_being_team_members_team_member_id_seq'::regclass);
 U   ALTER TABLE public.well_being_team_members ALTER COLUMN team_member_id DROP DEFAULT;
       public          postgres    false    489    490    490            �           2604    17516    well_being_teams team_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_teams ALTER COLUMN team_id SET DEFAULT nextval('public.well_being_teams_team_id_seq'::regclass);
 G   ALTER TABLE public.well_being_teams ALTER COLUMN team_id DROP DEFAULT;
       public          postgres    false    384    383    384            =           2604    16684 /   well_being_workout_histories workout_history_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_workout_histories ALTER COLUMN workout_history_id SET DEFAULT nextval('public.well_being_workout_histories_workout_history_id_seq'::regclass);
 ^   ALTER TABLE public.well_being_workout_histories ALTER COLUMN workout_history_id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    17596 H   well_being_workout_history_before_events workout_history_before_event_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_workout_history_before_events ALTER COLUMN workout_history_before_event_id SET DEFAULT nextval('public.well_being_workout_history_be_workout_history_before_event__seq'::regclass);
 w   ALTER TABLE public.well_being_workout_history_before_events ALTER COLUMN workout_history_before_event_id DROP DEFAULT;
       public          postgres    false    399    400    400            �           2604    17604 :   well_being_workout_history_events workout_history_event_id    DEFAULT     �   ALTER TABLE ONLY public.well_being_workout_history_events ALTER COLUMN workout_history_event_id SET DEFAULT nextval('public.well_being_workout_history_events_workout_history_event_id_seq'::regclass);
 i   ALTER TABLE public.well_being_workout_history_events ALTER COLUMN workout_history_event_id DROP DEFAULT;
       public          postgres    false    402    401    402            �           2604    18017    well_being_workout_sync id    DEFAULT     �   ALTER TABLE ONLY public.well_being_workout_sync ALTER COLUMN id SET DEFAULT nextval('public.well_being_workout_sync_id_seq'::regclass);
 I   ALTER TABLE public.well_being_workout_sync ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    479    480    480                      0    18039    ClientDetails 
   TABLE DATA           �   COPY public."ClientDetails" ("appId", "resourceIds", "appSecret", scope, "grantTypes", "redirectUrl", authorities, access_token_validity, refresh_token_validity, "additionalInformation", "autoApproveScopes") FROM stdin;
    public          postgres    false    485   ��      �          0    16488    access_control_items 
   TABLE DATA           ^   COPY public.access_control_items (access_control_item_id, authority, description) FROM stdin;
    public          postgres    false    172   �      �          0    16499    access_control_list 
   TABLE DATA           f   COPY public.access_control_list (access_control_list_id, access_control_item_id, role_id) FROM stdin;
    public          postgres    false    174   6�      #          0    18717 #   announcenment_of_passenger_requests 
   TABLE DATA           r  COPY public.announcenment_of_passenger_requests (id, user_id, source_location_lat, source_location_long, source_location_title, source_location_description, destination_location_lat, destination_location_long, destination_location_title, destination_location_description, number_of_passengers, start_date, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    509   S�      4          0    18924    app_shortcut 
   TABLE DATA           z   COPY public.app_shortcut (id, name, logo_path, type, url, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    526   p�      �          0    16518    app_version 
   TABLE DATA           h   COPY public.app_version (ios_path, android_path, ios_manifest, is_lasted, id, version_code) FROM stdin;
    public          postgres    false    178   ��      �          0    16529    auth_authority 
   TABLE DATA           2   COPY public.auth_authority (id, name) FROM stdin;
    public          postgres    false    180   ��      �          0    16545 	   auth_role 
   TABLE DATA           [   COPY public.auth_role (id, role_identifier, role_display_name, is_static_role) FROM stdin;
    public          postgres    false    184   ǐ      �          0    16537    auth_role_authority 
   TABLE DATA           H   COPY public.auth_role_authority (id, role_id, authority_id) FROM stdin;
    public          postgres    false    182   �      �          0    16556 	   auth_user 
   TABLE DATA           $  COPY public.auth_user (id, type, username, password, name, first_name, last_name, email, phone_no, is_non_locked, is_enabled, created_date, created_by, updated_date, updated_by, profile_image_url, "position", address, salary, top_coin, citizen_id, employee_id, advance_noti_time) FROM stdin;
    public          postgres    false    186   �      �          0    16567    auth_user_role 
   TABLE DATA           >   COPY public.auth_user_role (id, user_id, role_id) FROM stdin;
    public          postgres    false    188   �      ?          0    19034    benefit_year 
   TABLE DATA           �   COPY public.benefit_year (id, enable, created_date, updated_date, created_by, updated_by, start_enrollment_date, end_enrollment_date, start_period_date, end_period_date) FROM stdin;
    public          postgres    false    537   ;�      �          0    16594    brand 
   TABLE DATA           �   COPY public.brand (id, product_category_id, name, image_url, created_date, created_by, updated_date, updated_by, order_acknowledge_type) FROM stdin;
    public          postgres    false    194   X�      �          0    16583 	   brand_api 
   TABLE DATA           p   COPY public.brand_api (id, brand_id, name, url, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    192   u�                0    18666    brand_email 
   TABLE DATA           t   COPY public.brand_email (id, brand_id, name, email, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    503   ��      �          0    16605    bus 
   TABLE DATA           y   COPY public.bus (id, vehichle_id, vehicle_license, vehicle_name, latitude, longitude, location, update_date) FROM stdin;
    public          postgres    false    196   ��      �          0    16616 
   bus_report 
   TABLE DATA           a   COPY public.bus_report (id, top_start, start_times, top_end, end_times, create_date) FROM stdin;
    public          postgres    false    198   ̑      �          0    16627 	   bus_route 
   TABLE DATA           �   COPY public.bus_route (id, bus_id, line_id, station_id, type, car_cycle, indexs, create_date, update_date, create_by, update_by) FROM stdin;
    public          postgres    false    200   �      �          0    16639    bus_station 
   TABLE DATA           �   COPY public.bus_station (id, station_name, latitude, longitude, is_delete, create_date, update_date, create_by, update_by, indexs) FROM stdin;
    public          postgres    false    202   �      �          0    16651    bus_time 
   TABLE DATA           E   COPY public.bus_time (id, bus_line_id, bus_go, bus_back) FROM stdin;
    public          postgres    false    204   #�      �          0    16662    calendar_events 
   TABLE DATA           �   COPY public.calendar_events (event_id, user_id, title, description, event_start, event_end, location, is_global, is_repeat, is_delete, is_allday, type_id, ews_id) FROM stdin;
    public          postgres    false    206   @�      �          0    16673    calendar_type 
   TABLE DATA           M   COPY public.calendar_type (type_id, type_name, color, is_delete) FROM stdin;
    public          postgres    false    208   ]�      %          0    18728    car_information 
   TABLE DATA           �   COPY public.car_information (id, user_id, car_brands, car_model, car_registration_no, car_color, created_date, created_by, updated_date, updated_by, is_default) FROM stdin;
    public          postgres    false    511   z�      �          0    16694 	   car_lines 
   TABLE DATA           s   COPY public.car_lines (id, line_name, is_delete, create_date, update_date, create_by, update_by, type) FROM stdin;
    public          postgres    false    212   ��                0    16748    choice 
   TABLE DATA           �   COPY public.choice (id, topic_choice_id, name, detail, parent_id, exchange_coin, default_choice, enable, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    222   ��                0    16737    choices 
   TABLE DATA           W   COPY public.choices (choice_id, news_id, choice_value, answer, image_path) FROM stdin;
    public          postgres    false    220   ђ                0    16759    claim 
   TABLE DATA             COPY public.claim (id, name, claim_type_id, exchange_coin, fix_exchange_coin, detail, show_dashboard, created_date, created_by, updated_date, updated_by, claim_price, show, allow_amount, "limit", limit_type, probation, max_claimable_limit, icon) FROM stdin;
    public          postgres    false    224   �                0    16770 
   claim_type 
   TABLE DATA           b   COPY public.claim_type (id, name, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    226   �      
          0    16781    club_albums 
   TABLE DATA           H   COPY public.club_albums (club_albums_id, club_id, album_id) FROM stdin;
    public          postgres    false    228   (�                0    16789    club_comments 
   TABLE DATA           �   COPY public.club_comments (comment_id, thread_id, user_id, comment, created_date, image_path, latitude, longitude, is_delete, file_path) FROM stdin;
    public          postgres    false    230   E�                0    16811    club_threads 
   TABLE DATA           �   COPY public.club_threads (thread_id, club_id, user_id, title, content, created_date, publish_date, thumbnail_image_id, is_delete) FROM stdin;
    public          postgres    false    234   b�                0    16800    clubs 
   TABLE DATA           g   COPY public.clubs (club_id, name, annouce, thumbnail_image_id, is_delete, icon_image_path) FROM stdin;
    public          postgres    false    232   �                0    18157    coin 
   TABLE DATA           �   COPY public.coin (id, user_id, type, coin, created_date, created_by, updated_date, updated_by, ref_id, is_add, ref_title, ref_image) FROM stdin;
    public          postgres    false    494   ��                0    16869 	   companies 
   TABLE DATA           Q   COPY public.companies (company_id, company_name, acronym, is_delete) FROM stdin;
    public          postgres    false    246   ��                0    16877    configurations 
   TABLE DATA           F   COPY public.configurations (configuration_id, key, value) FROM stdin;
    public          postgres    false    248   ֓                0    16839    content_comments 
   TABLE DATA           m   COPY public.content_comments (comment_id, content_id, user_id, comment, created_date, is_delete) FROM stdin;
    public          postgres    false    240   �                 0    16886    content_files 
   TABLE DATA           G   COPY public.content_files (file_id, content_id, file_path) FROM stdin;
    public          postgres    false    250   �      $          0    16906    content_images 
   TABLE DATA           Q   COPY public.content_images (content_images_id, content_id, image_id) FROM stdin;
    public          postgres    false    254   -�      "          0    16894    contents 
   TABLE DATA           �   COPY public.contents (content_id, user_id, thumbnail_image_id, title, content, type, created_date, publish_date, expired_date, is_delete, commentable, is_hide, is_confidential) FROM stdin;
    public          postgres    false    252   J�      g          0    19610    country 
   TABLE DATA           q   COPY public.country (id, country_code, country_name, create_date, update_date, create_by, update_by) FROM stdin;
    public          postgres    false    577   g�      &          0    16914    departments 
   TABLE DATA           v   COPY public.departments (department_id, company_id, department_name, parent_department, level, is_delete) FROM stdin;
    public          postgres    false    256   �      (          0    16922    digital_news_comment 
   TABLE DATA           n   COPY public.digital_news_comment (id, digital_news_id, user_id, comment, image_path, create_date) FROM stdin;
    public          postgres    false    258   
�      *          0    16933    digital_news_header_images 
   TABLE DATA           b   COPY public.digital_news_header_images (id, digital_news_id, image_path, create_date) FROM stdin;
    public          postgres    false    260   '�      ,          0    16944    digital_news_notification 
   TABLE DATA           z   COPY public.digital_news_notification (id, user_id, is_read, create_date, type, ref_id, is_inform, read_date) FROM stdin;
    public          postgres    false    262   D�      .          0    16955 "   digital_news_product_datail_images 
   TABLE DATA           r   COPY public.digital_news_product_datail_images (id, digital_news_product_id, image_path, create_date) FROM stdin;
    public          postgres    false    264   a�      0          0    16966    digital_news_product_delivery 
   TABLE DATA           �   COPY public.digital_news_product_delivery (product_delivery_id, coin_transaction_log_id, user_id, product_status_id, create_date, update_date, update_by) FROM stdin;
    public          postgres    false    266   ~�      2          0    16974    digital_news_product_status 
   TABLE DATA           h   COPY public.digital_news_product_status (product_status_id, product_status_name, is_delete) FROM stdin;
    public          postgres    false    268   ��      4          0    16982    digital_news_quiz 
   TABLE DATA           w   COPY public.digital_news_quiz (id, digital_news_id, quiz_option, create_date, is_correct, quiz_score, idx) FROM stdin;
    public          postgres    false    270   ��      1          0    18893    digital_news_type 
   TABLE DATA           t   COPY public.digital_news_type (id, name, logo_path, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    523   ՝      6          0    16995    digital_news_user_quiz 
   TABLE DATA           w   COPY public.digital_news_user_quiz (id, user_id, digital_news_id, quiz_option_id, create_date, is_correct) FROM stdin;
    public          postgres    false    272   �      8          0    17004    digital_news_user_vote 
   TABLE DATA           k   COPY public.digital_news_user_vote (id, user_id, digital_news_id, vote_option_id, create_date) FROM stdin;
    public          postgres    false    274   �      :          0    17012    digital_news_vote 
   TABLE DATA           w   COPY public.digital_news_vote (id, digital_news_id, vote_option, image_path, create_date, vote_score, idx) FROM stdin;
    public          postgres    false    276   ,�      '          0    18744    drive_master 
   TABLE DATA           �  COPY public.drive_master (id, user_id, car_id, source_location_lat, source_location_long, source_location_title, source_location_description, destination_location_lat, destination_location_long, destination_location_title, destination_location_description, passenger_seats, start_date, remark, created_date, created_by, updated_date, updated_by, show_trip_end_button, get_coin) FROM stdin;
    public          postgres    false    513   I�      /          0    18858    drive_requests 
   TABLE DATA           z   COPY public.drive_requests (id, aop_id, drive_id, status, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    521   f�      F          0    17079 
   enrollment 
   TABLE DATA           z   COPY public.enrollment (id, start_date, end_date, enable, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    288   ��      H          0    17090    event_departments 
   TABLE DATA           Z   COPY public.event_departments (event_departments_id, event_id, department_id) FROM stdin;
    public          postgres    false    290   ��      J          0    17098    event_registers 
   TABLE DATA           \   COPY public.event_registers (event_register_id, user_id, news_id, created_date) FROM stdin;
    public          postgres    false    292   ��      T          0    17138    external_systems 
   TABLE DATA           ]   COPY public.external_systems (system_id, title, description, api_key, is_enable) FROM stdin;
    public          postgres    false    302   ڞ      �          0    16706    feedback_categories 
   TABLE DATA           }   COPY public.feedback_categories (category_id, category_name, icon_image_path, is_private, is_special, is_delete) FROM stdin;
    public          postgres    false    214   ��      V          0    17146    feedback_category_control_list 
   TABLE DATA           q   COPY public.feedback_category_control_list (feedback_category_control_list_id, category_id, role_id) FROM stdin;
    public          postgres    false    304   �                0    16847    feedback_comments 
   TABLE DATA           �   COPY public.feedback_comments (comment_id, user_id, feedback_id, created_date, comment, image_path, latitude, longitude, is_delete, file_path) FROM stdin;
    public          postgres    false    242   1�      X          0    17154    feedback_event_logs 
   TABLE DATA           �   COPY public.feedback_event_logs (feedback_event_log_id, feedback_id, user_id, created_date, event, status_id, system_id) FROM stdin;
    public          postgres    false    306   N�      ^          0    17184    feedback_images 
   TABLE DATA           L   COPY public.feedback_images (image_id, feedback_id, image_path) FROM stdin;
    public          postgres    false    312   k�      `          0    17192    feedback_status 
   TABLE DATA           <   COPY public.feedback_status (status_id, status) FROM stdin;
    public          postgres    false    314   ��      Z          0    17162 	   feedbacks 
   TABLE DATA           �   COPY public.feedbacks (feedback_id, user_id, category_id, created_date, title, content, latitude, longitude, is_private, is_delete, status_id, system_id) FROM stdin;
    public          postgres    false    308   ��      m          0    19682 	   fend_item 
   TABLE DATA           �   COPY public.fend_item (id, research_name, contract_file, remark, receive_date, get_back_date, form_id, consent_file, created_date, updated_date, created_by, updated_by) FROM stdin;
    public          postgres    false    583         k          0    19656    fend_register_form 
   TABLE DATA             COPY public.fend_register_form (id, first_name, last_name, telephone, birthday, age, citizen_id, diagnosis_dmd, diagnosis_sma_typ2, diagnosis_cmt, diagnosis_sma_typ1, diagnosis_sma_typ3, diagnosis_other, hospital_name, doctor_name, doctor_hospital_telephone, underlying_diseases, neuromuscular, neuromuscular_doc, disability, disability_doc, help, email, consent, created_date, updated_date, created_by, updated_by, parent_first_name, parent_last_name, parent_relevancy, parent_telephone_number, is_delete, consent_version) FROM stdin;
    public          postgres    false    581   ߟ      o          0    19693    fend_research 
   TABLE DATA           �   COPY public.fend_research (id, research_name, join_date, research_owner, research_contact, research_telephone, research_remark, receive_date, get_back_date, form_id, created_date, updated_date, created_by, updated_by) FROM stdin;
    public          postgres    false    585   !�      O          0    19198 
   form_input 
   TABLE DATA           i   COPY public.form_input (id, key, form_input, create_date, update_date, create_by, update_by) FROM stdin;
    public          postgres    false    553   >�      �          0    17670    fs_file 
   TABLE DATA           E   COPY public.fs_file (id, bucket, path, url, upload_date) FROM stdin;
    public          postgres    false    416   [�      �          0    16507    image_albums 
   TABLE DATA           �   COPY public.image_albums (album_id, user_id, album_name, created_date, album_for, is_delete, description, cover_id, updated_date) FROM stdin;
    public          postgres    false    176   ��      j          0    17237    images 
   TABLE DATA           N   COPY public.images (image_id, album_id, created_date, image_path) FROM stdin;
    public          postgres    false    324   ��                0    18022    inbox_schedule_send 
   TABLE DATA           �   COPY public.inbox_schedule_send (inbox_schedule_send_id, api_key, channel, sender, message, emails, company_name, department_name, schedule_time, feedback_category_id, sent, deptids, compids, userids) FROM stdin;
    public          postgres    false    482   �      �          0    17681 	   insurance 
   TABLE DATA           �   COPY public.insurance (id, name, insurance_type_id, detail, enable, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    418   *�      �          0    17692    insurance_choice 
   TABLE DATA             COPY public.insurance_choice (id, topic_choice_id, name, detail, parent_id, exchange_coin, default_choice, enable, created_date, created_by, updated_date, updated_by, template, title, title_detail, title_sub_detail, choice_multiply, compensation) FROM stdin;
    public          postgres    false    420   G�      �          0    17703    insurance_join_topic 
   TABLE DATA           �   COPY public.insurance_join_topic (id, insurance_id, insurance_topic_id, enable, created_date, created_by, updated_date, updated_by, topic_type, topic_sub_type) FROM stdin;
    public          postgres    false    422   d�      �          0    17714    insurance_topic 
   TABLE DATA           �   COPY public.insurance_topic (id, name, topic_detail, topic_type, enable, created_date, created_by, updated_date, updated_by, rate_calculate, max_compensation, topic_sub_type) FROM stdin;
    public          postgres    false    424   ��      �          0    17725    insurance_type 
   TABLE DATA           n   COPY public.insurance_type (id, name, enable, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    426   ��      �          0    17736    insurance_year 
   TABLE DATA           �   COPY public.insurance_year (id, start_enrollment_id, insurance_id, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    428   ��      �          0    17747    iris_calendar 
   TABLE DATA           �   COPY public.iris_calendar (id, title, description, location, create_date, update_date, start_date, end_date, file_path, is_delete, create_by, update_by, file_name, file_size) FROM stdin;
    public          postgres    false    430   ��      n          0    17257    iris_manage_report 
   TABLE DATA           B   COPY public.iris_manage_report (id, name, image_path) FROM stdin;
    public          postgres    false    328   ��      p          0    17268    iris_manage_report_role 
   TABLE DATA           P   COPY public.iris_manage_report_role (id, manage_report_id, role_id) FROM stdin;
    public          postgres    false    330   �      �          0    17759    iris_report_with_water_mark 
   TABLE DATA           e   COPY public.iris_report_with_water_mark (id, user_id, report_id, file_path, calendar_id) FROM stdin;
    public          postgres    false    432   /�      r          0    17276    iris_subsidiaries 
   TABLE DATA           �   COPY public.iris_subsidiaries (id, manage_report_id, name, year, month, day, file_path, is_delete, create_by, update_by, create_date, update_date, file_name, file_size, date_time) FROM stdin;
    public          postgres    false    332   L�      �          0    17770    km 
   TABLE DATA           .   COPY public.km (id, km_id, title) FROM stdin;
    public          postgres    false    434   i�      A          0    19044    leave_benefits 
   TABLE DATA           �   COPY public.leave_benefits (id, benefit_year_id, min_value, max_value, coin_weight, updated_date, updated_by, leave_benefits_name, created_date, created_by, enable) FROM stdin;
    public          postgres    false    539   ��      I          0    19145    leave_benefits_user 
   TABLE DATA           �   COPY public.leave_benefits_user (id, user_id, leave_benefits_id, amount, coin_value, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    547   ��      2          0    18902    login 
   TABLE DATA           %   COPY public.login (mode) FROM stdin;
    public          postgres    false    524   ��      �          0    17413    message 
   TABLE DATA           U   COPY public.message (message_id, user_id, sender, message, created_date) FROM stdin;
    public          postgres    false    362   ��      l          0    17245    news 
   TABLE DATA           W  COPY public.news (news_id, creator_id, created_date, publish_date, title, content, type, latitude, longitude, reward_point, youtube_url, maximum_register, is_global, is_pin, is_delete, additional_addable, point_expired_date, thumbnail_image_id, news_expired_date, is_confidential, is_approve, comment_reject, is_enews, enews_type) FROM stdin;
    public          postgres    false    326   ��      �          0    16718    news_categories 
   TABLE DATA           P   COPY public.news_categories (category_id, category_name, is_delete) FROM stdin;
    public          postgres    false    216   �      t          0    17288    news_category_list 
   TABLE DATA           Y   COPY public.news_category_list (news_category_list_id, news_id, category_id) FROM stdin;
    public          postgres    false    334   4�                0    16858    news_comments 
   TABLE DATA           �   COPY public.news_comments (comment_id, user_id, news_id, created_date, comment, image_path, latitude, longitude, is_delete, file_path) FROM stdin;
    public          postgres    false    244   Q�      v          0    17296    news_departments 
   TABLE DATA           W   COPY public.news_departments (news_departments_id, news_id, department_id) FROM stdin;
    public          postgres    false    336   n�      x          0    17304    news_favorite_list 
   TABLE DATA           U   COPY public.news_favorite_list (news_favorite_list_id, user_id, news_id) FROM stdin;
    public          postgres    false    338   ��      b          0    17200 
   news_files 
   TABLE DATA           A   COPY public.news_files (file_id, news_id, file_path) FROM stdin;
    public          postgres    false    316   ��      z          0    17312    news_groups 
   TABLE DATA           W   COPY public.news_groups (group_id, group_name, icon_image_path, is_delete) FROM stdin;
    public          postgres    false    340   ��      |          0    17323    news_groups_control_list 
   TABLE DATA           b   COPY public.news_groups_control_list (news_groups_control_list_id, group_id, role_id) FROM stdin;
    public          postgres    false    342   ��      ~          0    17331    news_groups_department_list 
   TABLE DATA           n   COPY public.news_groups_department_list (news_groups_department_list_id, group_id, department_id) FROM stdin;
    public          postgres    false    344   ��                0    18313    news_groups_list 
   TABLE DATA           R   COPY public.news_groups_list (news_groups_list_id, news_id, group_id) FROM stdin;
    public          postgres    false    496   �      �          0    17339    news_groups_user_list 
   TABLE DATA           \   COPY public.news_groups_user_list (news_groups_user_list_id, group_id, user_id) FROM stdin;
    public          postgres    false    346   9�      �          0    17347    news_images 
   TABLE DATA           H   COPY public.news_images (news_images_id, news_id, image_id) FROM stdin;
    public          postgres    false    348   V�      +          0    18795    notification_history 
   TABLE DATA           �   COPY public.notification_history (id, owner_user_id, sender_user_id, content_th, created_date, created_by, content_en, drive_id, type, read) FROM stdin;
    public          postgres    false    517   s�      �          0    17355    notification_queues 
   TABLE DATA           ~   COPY public.notification_queues (notification_id, news_id, user_id, "interval", next_fire_date, retry, max_retry) FROM stdin;
    public          postgres    false    350   ��                0    18047    oauth_access_token 
   TABLE DATA           �   COPY public.oauth_access_token (token_id, token, authentication_id, user_name, client_id, authentication, refresh_token) FROM stdin;
    public          postgres    false    486   ��                0    18634    oauth_approvals 
   TABLE DATA           m   COPY public.oauth_approvals ("userId", "clientId", scope, status, "expiresAt", "lastModifiedAt") FROM stdin;
    public          postgres    false    497   ��                0    18055    oauth_client_details 
   TABLE DATA           �   COPY public.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) FROM stdin;
    public          postgres    false    487   ��                0    18063    oauth_client_token 
   TABLE DATA           f   COPY public.oauth_client_token (token_id, token, authentication_id, user_name, client_id) FROM stdin;
    public          postgres    false    488   �                0    18640 
   oauth_code 
   TABLE DATA           @   COPY public.oauth_code (oauth_code, authentication) FROM stdin;
    public          postgres    false    498   !�                0    18646    oauth_refresh_token 
   TABLE DATA           N   COPY public.oauth_refresh_token (token_id, token, authentication) FROM stdin;
    public          postgres    false    499   >�      )          0    18765    passenger_request 
   TABLE DATA           �   COPY public.passenger_request (id, user_id, drive_id, remark, number_of_passenger, is_accept, created_date, created_by, updated_date, updated_by, show_trip_end_button, is_interested) FROM stdin;
    public          postgres    false    515   [�      �          0    17363    play_events 
   TABLE DATA           �   COPY public.play_events (id, user_id, title, location, description, start_date, end_date, total_no_user_join, no_user_joined, is_delete, create_date, update_date, reward_coin, is_cancel, qr_code, qr_code_image) FROM stdin;
    public          postgres    false    352   x�      �          0    17375    play_events_images 
   TABLE DATA           X   COPY public.play_events_images (id, play_event_id, image_path, create_date) FROM stdin;
    public          postgres    false    354   ��      �          0    17386    play_user_join_event 
   TABLE DATA           �   COPY public.play_user_join_event (id, play_event_id, user_id, join_date, image_path, image_date, role_name, is_got_extra_coin) FROM stdin;
    public          postgres    false    356   ��      �          0    17397    point_transaction_log 
   TABLE DATA           ^   COPY public.point_transaction_log (log_id, user_id, message, point, created_date) FROM stdin;
    public          postgres    false    358   ��      �          0    17781    pool_car 
   TABLE DATA           ~   COPY public.pool_car (id, vehichle_id, vehicle_license, vehicle_name, latitude, longitude, location, update_date) FROM stdin;
    public          postgres    false    436   ��      D          0    17068    pool_report 
   TABLE DATA           b   COPY public.pool_report (id, top_start, start_times, top_end, end_times, create_date) FROM stdin;
    public          postgres    false    286   	�      �          0    17792 
   pool_route 
   TABLE DATA           |   COPY public.pool_route (id, pool_id, line_id, station_id, type, create_date, update_date, create_by, update_by) FROM stdin;
    public          postgres    false    438   &�      �          0    17803    pool_station 
   TABLE DATA           U   COPY public.pool_station (id, station_name, latitude, longitude, indexs) FROM stdin;
    public          postgres    false    440   C�      �          0    17814    pool_station_time 
   TABLE DATA           W   COPY public.pool_station_time (id, pool_line_id, station_id, "time", type) FROM stdin;
    public          postgres    false    442   `�      �          0    17825    product 
   TABLE DATA           R  COPY public.product (id, brand_id, product_api, thumbnail_image, quantity, remain, normal_coin, special_coin, title, name, description, enable, expire_date, created_date, created_by, updated_date, updated_by, serial_enable, category_id, store_id, mask_shipping_cost, mask_gp, store_product_code, vendor, exchange_coin_enable) FROM stdin;
    public          postgres    false    444   }�      �          0    17836    product_category 
   TABLE DATA           p   COPY public.product_category (id, name, enable, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    446   ��      Q          0    19209    product_form_input 
   TABLE DATA           {   COPY public.product_form_input (id, product_id, form_input_id, create_date, update_date, create_by, update_by) FROM stdin;
    public          postgres    false    555   ��      �          0    17847    product_image 
   TABLE DATA           v   COPY public.product_image (id, product_id, image_url, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    448   ��      �          0    17858    product_serial 
   TABLE DATA           �   COPY public.product_serial (id, product_id, serial_number, serial_qty, serial_exchange, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    450   ��      �          0    17405    readed 
   TABLE DATA           K   COPY public.readed (readed_id, user_id, news_id, created_date) FROM stdin;
    public          postgres    false    360   �      W          0    19254    relative 
   TABLE DATA           �   COPY public.relative (id, title, firstname, lastname, national_id, user_id, relative_type_id, birth_day, created_date, created_by, updated_date, updated_by, enable) FROM stdin;
    public          postgres    false    561   +�      E          0    19087    relative_benefits 
   TABLE DATA           �   COPY public.relative_benefits (id, benefit_year_id, relative_benefits_name, updated_date, updated_by, created_date, created_by, enable, relative_type_id) FROM stdin;
    public          postgres    false    543   H�      G          0    19097    relative_benefits_category 
   TABLE DATA           �   COPY public.relative_benefits_category (id, relative_benefits_id, category_name, category_icon, updated_date, updated_by, created_date, created_by, probation_access, enable) FROM stdin;
    public          postgres    false    545   e�      ]          0    19373    relative_benefits_choice_tag 
   TABLE DATA           �   COPY public.relative_benefits_choice_tag (id, relative_benefits_choices_id, tag_id, tagged_price, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    567   ��      M          0    19182    relative_benefits_choices 
   TABLE DATA           �   COPY public.relative_benefits_choices (id, relative_benefits_category_id, choices_name, choices_description, default_coin_value, consent_details, created_date, created_by, updated_date, updated_by, enable) FROM stdin;
    public          postgres    false    551   ��      a          0    19416    relative_selected_choices 
   TABLE DATA           �   COPY public.relative_selected_choices (id, relative_benefits_choices_id, user_id, selected_coin_value, user_consent, created_date, created_by, updated_date, updated_by, relative_benefits_category_id, relative_id) FROM stdin;
    public          postgres    false    571   ��      U          0    19246    relative_type 
   TABLE DATA           �   COPY public.relative_type (id, name, created_date, created_by, updated_date, updated_by, enable, max_number, description) FROM stdin;
    public          postgres    false    559   ��      �          0    17478    request_status 
   TABLE DATA           ;   COPY public.request_status (status_id, status) FROM stdin;
    public          postgres    false    376   ��      �          0    17486    requests 
   TABLE DATA           i   COPY public.requests (request_id, user_id, reward_id, seek_date, quantity, status_id, point) FROM stdin;
    public          postgres    false    378   �                 0    16726    reward_categories 
   TABLE DATA           c   COPY public.reward_categories (category_id, category_name, icon_image_path, is_delete) FROM stdin;
    public          postgres    false    218   0�      �          0    17424    reward_category_list 
   TABLE DATA           _   COPY public.reward_category_list (reward_category_list_id, reward_id, category_id) FROM stdin;
    public          postgres    false    364   M�      �          0    17443    reward_images 
   TABLE DATA           N   COPY public.reward_images (reward_images_id, reward_id, image_id) FROM stdin;
    public          postgres    false    368   j�      �          0    17432    rewards 
   TABLE DATA           �   COPY public.rewards (reward_id, reward_name, reward_detail, thumbnail_image_id, point_require, quantity, created_date, publish_date, expired_date, is_delete, "interval", number_per_request, full_detail) FROM stdin;
    public          postgres    false    366   ��      d          0    17208    roles 
   TABLE DATA           >   COPY public.roles (role_id, role_name, is_delete) FROM stdin;
    public          postgres    false    318   ��      B          0    19063    self_benefits 
   TABLE DATA           �   COPY public.self_benefits (id, benefit_year_id, self_benefits_name, updated_date, updated_by, created_date, created_by, enable, icon) FROM stdin;
    public          postgres    false    540   ��      D          0    19073    self_benefits_category 
   TABLE DATA           �   COPY public.self_benefits_category (id, self_benefits_id, category_name, category_icon, updated_date, updated_by, created_date, created_by, probation_access, enable) FROM stdin;
    public          postgres    false    542   ��      [          0    19352    self_benefits_choice_tag 
   TABLE DATA           �   COPY public.self_benefits_choice_tag (id, self_benefits_choices_id, tag_id, tagged_price, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    565   �      K          0    19166    self_benefits_choices 
   TABLE DATA           �   COPY public.self_benefits_choices (id, self_benefits_category_id, choices_name, choices_description, default_coin_value, consent_details, created_date, created_by, updated_date, updated_by, enable) FROM stdin;
    public          postgres    false    549   *�      !          0    18706    shop_banner 
   TABLE DATA           �   COPY public.shop_banner (id, product_id, image_path, indexs, created_date, created_by, updated_date, updated_by, category_id) FROM stdin;
    public          postgres    false    507   G�      Y          0    19278    tag 
   TABLE DATA           �   COPY public.tag (id, tag_name, tag_description, tag_color, created_date, created_by, updated_date, updated_by, consent_details, coin_value) FROM stdin;
    public          postgres    false    563   d�      <          0    18992    thaddr_district 
   TABLE DATA           �   COPY public.thaddr_district (id, district_code, district_name, province_id, amphoe_code, create_date, update_date, create_by, update_by) FROM stdin;
    public          postgres    false    534   ��      :          0    18981    thaddr_province 
   TABLE DATA           �   COPY public.thaddr_province (id, province_code, province_name, create_date, update_date, create_by, update_by, country_id) FROM stdin;
    public          postgres    false    532   	      >          0    19008    thaddr_subdistrict 
   TABLE DATA           �   COPY public.thaddr_subdistrict (id, subdistrict_code, subdistrict_name, zip_code, province_id, district_id, create_date, update_date, create_by, update_by) FROM stdin;
    public          postgres    false    536   	      -          0    18839    thaioil_coins_record 
   TABLE DATA           �   COPY public.thaioil_coins_record (id, name, job_id, type, coins, created_date, created_by, updated_date, updated_by, status_successful) FROM stdin;
    public          postgres    false    519   nn
      h          0    17229    thread_images 
   TABLE DATA           N   COPY public.thread_images (thread_images_id, thread_id, image_id) FROM stdin;
    public          postgres    false    322   �n
      �          0    17451    top_coin_transaction_log 
   TABLE DATA           �   COPY public.top_coin_transaction_log (id, user_id, type, digital_news_id, digital_news_product_id, odyssey_id, coin, create_date, expire_date, third_party_id, play_event_id, km_id, wellbeing_event_id, sub_type, title) FROM stdin;
    public          postgres    false    370   �n
      �          0    17869    top_donate_activity 
   TABLE DATA           N   COPY public.top_donate_activity (id, activity_name, index, point) FROM stdin;
    public          postgres    false    452   �n
                0    16822    top_donate_coin 
   TABLE DATA           V   COPY public.top_donate_coin (id, user_id, activity_id, coin, create_date) FROM stdin;
    public          postgres    false    236   �n
      �          0    17881    top_donate_comment 
   TABLE DATA           X   COPY public.top_donate_comment (id, post_id, user_id, comment, create_date) FROM stdin;
    public          postgres    false    454   �n
      �          0    17892    top_donate_foundation 
   TABLE DATA           K   COPY public.top_donate_foundation (id, foundation_name, index) FROM stdin;
    public          postgres    false    456   o
      �          0    17903    top_donate_like 
   TABLE DATA           L   COPY public.top_donate_like (id, post_id, user_id, create_date) FROM stdin;
    public          postgres    false    458   9o
      �          0    17911    top_donate_post 
   TABLE DATA           �   COPY public.top_donate_post (id, description, user_id, activity_id, donate_id, start_date, end_date, time_period, location, image_url, create_date, update_date) FROM stdin;
    public          postgres    false    460   Vo
      �          0    17922    top_donate_sub_other 
   TABLE DATA           e   COPY public.top_donate_sub_other (id, post_id, activity_id, user_id, other, create_date) FROM stdin;
    public          postgres    false    462   so
      �          0    17933    topic_choice 
   TABLE DATA           �   COPY public.topic_choice (id, topic_id, value, name, topic_choice_detail, created_date, created_by, updated_date, updated_by, fix_calculate_enable) FROM stdin;
    public          postgres    false    464   �o
      8          0    18946    user_address 
   TABLE DATA             COPY public.user_address (id, user_id, street, sub_district, district, province, postcode, country, create_date, update_date, create_by, update_by, province_id, district_id, sub_district_id, country_code, province_code, amphoe_code, subdistrict_code, country_id) FROM stdin;
    public          postgres    false    530   �o
      6          0    18935    user_app_shortcut 
   TABLE DATA           �   COPY public.user_app_shortcut (id, app_shortcut_id, user_id, indexs, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    528   �o
      �          0    17462    user_choice 
   TABLE DATA           l   COPY public.user_choice (user_choice_id, user_id, news_id, choice_id, created_date, additional) FROM stdin;
    public          postgres    false    372   �o
      �          0    17944 
   user_claim 
   TABLE DATA             COPY public.user_claim (id, user_id, claim_id, exchange_coin, claim_name, claim_date, receipt_file_url, citizen_file_url, accept, remark, accept_by, created_date, created_by, updated_date, updated_by, user_claim_price, user_remark, refund_date) FROM stdin;
    public          postgres    false    466   p
      �          0    17470    user_departments 
   TABLE DATA           W   COPY public.user_departments (user_departments_id, department_id, user_id) FROM stdin;
    public          postgres    false    374   !p
      �          0    17953    user_family 
   TABLE DATA           �   COPY public.user_family (id, user_id, first_name, last_name, relationship, citizen_id, profile_image_url, leave_dat, created_date, created_by, updated_date, updated_by, birth_day, name_title) FROM stdin;
    public          postgres    false    468   >p
      �          0    17964 "   user_family_insurance_topic_choice 
   TABLE DATA           �   COPY public.user_family_insurance_topic_choice (id, user_id, family_id, topic_choice_id, choice_id, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    470   [p
      �          0    17975    user_first_join_odyssey 
   TABLE DATA           G   COPY public.user_first_join_odyssey (id, user_id, is_join) FROM stdin;
    public          postgres    false    472   xp
                 0    17983    user_insurance_topic_choice 
   TABLE DATA           �   COPY public.user_insurance_topic_choice (id, user_id, topic_choice_id, choice_id, created_date, created_by, updated_date, updated_by, set_default) FROM stdin;
    public          postgres    false    474   �p
                0    17994    user_leave_coin 
   TABLE DATA           �   COPY public.user_leave_coin (id, enrollment_id, user_id, leave_day, coin, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    476   �p
                0    18677    user_msal_tokens 
   TABLE DATA           `   COPY public.user_msal_tokens (token_id, user_id, created_date, updated_date, token) FROM stdin;
    public          postgres    false    505   �p
      e          0    19599    user_prefix 
   TABLE DATA           s   COPY public.user_prefix (id, prefix_code, prefix_name, create_date, update_date, create_by, update_by) FROM stdin;
    public          postgres    false    575   �p
                0    18654    user_product 
   TABLE DATA           �   COPY public.user_product (id, user_id, product_id, amount, status, create_date, update_date, use_date, create_by, update_by, serial_number) FROM stdin;
    public          postgres    false    501   j|
      S          0    19225    user_product_info 
   TABLE DATA           �   COPY public.user_product_info (id, user_product_id, product_form_input_id, gender, age, birth_date, create_date, update_date, create_by, update_by) FROM stdin;
    public          postgres    false    557   �|
      �          0    17494 
   user_roles 
   TABLE DATA           E   COPY public.user_roles (user_roles_id, user_id, role_id) FROM stdin;
    public          postgres    false    380   �|
      _          0    19394    user_selected_choices 
   TABLE DATA           �   COPY public.user_selected_choices (id, self_benefits_choices_id, user_id, selected_coin_value, user_consent, created_date, created_by, updated_date, updated_by, self_benefits_category_id) FROM stdin;
    public          postgres    false    569   �|
      i          0    19623 	   user_tags 
   TABLE DATA           l   COPY public.user_tags (id, user_id, tag_id, created_date, created_by, updated_date, updated_by) FROM stdin;
    public          postgres    false    579   �|
                0    18003    user_third_party 
   TABLE DATA           H   COPY public.user_third_party (id, username, password, name) FROM stdin;
    public          postgres    false    478   }
      �          0    17502    user_tokens 
   TABLE DATA           �   COPY public.user_tokens (token_id, user_id, hash, mark, expired_date, is_valid, device_id, device_type, created_date, updated_date) FROM stdin;
    public          postgres    false    382   }
      f          0    17216    users 
   TABLE DATA           �  COPY public.users (user_id, emp_id, email, password, profile_image_path, first_name, last_name, phone_number, point, is_delete, "position", created_date, is_require_password, cover_image_path, well_being_points, first_name_th, last_name_th, top_points, birth_day, leave_day, salary, phone_no, name, first_login, advance_noti_time, probation, prefix_code, id_card, is_revenue, gender, age) FROM stdin;
    public          postgres    false    320   8�
      c          0    19557    users_pre_selected_claims 
   TABLE DATA           �   COPY public.users_pre_selected_claims (id, user_id, claim_id, pre_selected_amount, available_amount, created_date, created_by, updated_date, updated_by, benefits_year_id) FROM stdin;
    public          postgres    false    573   %�
                0    18081    visited 
   TABLE DATA           M   COPY public.visited (visited_id, user_id, news_id, created_date) FROM stdin;
    public          postgres    false    492   B�
                0    16831    well_being_coin_transaction_log 
   TABLE DATA           �   COPY public.well_being_coin_transaction_log (coin_transaction_log_id, user_id, type, event_id, product_id, donation_id, anonymous, coin, create_date, expire_date, sub_type) FROM stdin;
    public          postgres    false    238   _�
      <          0    17024    well_being_donation 
   TABLE DATA              COPY public.well_being_donation (donation_id, thumbnail_image, total_donation, donated, title, name, location, description, expire_date, create_date, create_by, update_date, update_by, is_delete, minimum_donation, is_highlight, highlight_date) FROM stdin;
    public          postgres    false    278   |�
      >          0    17036    well_being_donation_image 
   TABLE DATA           _   COPY public.well_being_donation_image (donation_image_id, donation_id, image_path) FROM stdin;
    public          postgres    false    280   ��
      @          0    17047    well_being_donation_thank 
   TABLE DATA           R   COPY public.well_being_donation_thank (donation_thank_id, image_path) FROM stdin;
    public          postgres    false    282   ��
      L          0    17106    well_being_event_team_register 
   TABLE DATA           p   COPY public.well_being_event_team_register (event_team_register_id, event_id, team_id, create_date) FROM stdin;
    public          postgres    false    294   ӌ
      N          0    17114    well_being_event_type 
   TABLE DATA           O   COPY public.well_being_event_type (event_type_id, event_type_name) FROM stdin;
    public          postgres    false    296   ��
      P          0    17122    well_being_event_user_register 
   TABLE DATA           �   COPY public.well_being_event_user_register (event_user_register_id, event_id, team_id, user_id, create_date, scan_qr_code, scan_qr_code_date) FROM stdin;
    public          postgres    false    298   �
      B          0    17055    well_being_events 
   TABLE DATA           }  COPY public.well_being_events (event_id, title, image_path, register_type, location, datetime_description, description, reward, create_date, create_by, update_date, update_by, is_delete, event_type_id, start_date, end_date, maximum_join, joined, pre_reward, goal, sub_register_type, qr_code, qr_code_image, distance_per_reward, maximum_team_join, maximum_team_members) FROM stdin;
    public          postgres    false    284   *�
      R          0    17130    well_being_exercise_types 
   TABLE DATA           K   COPY public.well_being_exercise_types (exercise_type_id, name) FROM stdin;
    public          postgres    false    300   G�
      \          0    17173    well_being_feedbacks 
   TABLE DATA           Z   COPY public.well_being_feedbacks (feedback_id, user_id, content, create_date) FROM stdin;
    public          postgres    false    310   d�
      �          0    17544    well_being_follow 
   TABLE DATA           \   COPY public.well_being_follow (follow_id, user_followed, follower, create_date) FROM stdin;
    public          postgres    false    390   ��
      �          0    17552    well_being_goals 
   TABLE DATA           v   COPY public.well_being_goals (goal_id, exercise_type_id, user_id, status, start_date, end_date, distance) FROM stdin;
    public          postgres    false    392   ��
      �          0    17524    well_being_health_tip 
   TABLE DATA           �   COPY public.well_being_health_tip (health_tip_id, title, thumbnail_image, name, description, create_date, create_by, update_date, update_by, is_delete, view) FROM stdin;
    public          postgres    false    386   ��
      �          0    17563    well_being_likes 
   TABLE DATA           R   COPY public.well_being_likes (like_id, post_id, user_id, create_date) FROM stdin;
    public          postgres    false    394   ؍
      
          0    18033    well_being_notification 
   TABLE DATA           �   COPY public.well_being_notification (notification_id, user_id, event_id, post_id, like_id, is_read, post_comment_id, create_date) FROM stdin;
    public          postgres    false    484   ��
      �          0    17571    well_being_post_comments 
   TABLE DATA           �   COPY public.well_being_post_comments (post_comment_id, post_id, user_id, create_date, update_date, comment, is_delete) FROM stdin;
    public          postgres    false    396   �
      �          0    17609    well_being_post_news_detail 
   TABLE DATA           h   COPY public.well_being_post_news_detail (post_news_detail_id, post_id, title, content, url) FROM stdin;
    public          postgres    false    404   /�
      �          0    17620 !   well_being_post_news_detail_image 
   TABLE DATA           w   COPY public.well_being_post_news_detail_image (post_news_detail_image_id, post_news_detail_id, image_path) FROM stdin;
    public          postgres    false    406   L�
      �          0    17582    well_being_posts 
   TABLE DATA           �   COPY public.well_being_posts (post_id, post_type, user_id, create_date, update_date, image_path, content, is_delete, distance, heart_rate, duration) FROM stdin;
    public          postgres    false    398   i�
      �          0    17631    well_being_product 
   TABLE DATA           �   COPY public.well_being_product (product_id, product_type_id, thumbnail_image, quantity, remain, normal_price, special_price, title, name, description, expire_date, create_date, create_by, update_date, update_by, is_delete) FROM stdin;
    public          postgres    false    408   ��
      �          0    16575    well_being_product_best_seller 
   TABLE DATA           f   COPY public.well_being_product_best_seller (best_seller_id, product_id, best_seller_date) FROM stdin;
    public          postgres    false    190   ��
      �          0    17536    well_being_product_delivery 
   TABLE DATA           �   COPY public.well_being_product_delivery (product_delivery_id, coin_transaction_log_id, user_id, product_status_id, create_date, update_date, update_by) FROM stdin;
    public          postgres    false    388   ��
      �          0    17642    well_being_product_image 
   TABLE DATA           \   COPY public.well_being_product_image (product_image_id, product_id, image_path) FROM stdin;
    public          postgres    false    410   ݎ
      �          0    17653    well_being_product_status 
   TABLE DATA           f   COPY public.well_being_product_status (product_status_id, product_status_name, is_delete) FROM stdin;
    public          postgres    false    412   ��
      �          0    17661    well_being_product_type 
   TABLE DATA           n   COPY public.well_being_product_type (product_type_id, product_type_name_en, product_type_name_th) FROM stdin;
    public          postgres    false    414   �
                0    18073    well_being_team_members 
   TABLE DATA           `   COPY public.well_being_team_members (team_member_id, team_id, user_id, create_date) FROM stdin;
    public          postgres    false    490   4�
      �          0    17513    well_being_teams 
   TABLE DATA           �   COPY public.well_being_teams (team_id, name, image_path, create_date, create_by, update_date, update_by, is_delete) FROM stdin;
    public          postgres    false    384   Q�
      �          0    16681    well_being_workout_histories 
   TABLE DATA           �   COPY public.well_being_workout_histories (workout_history_id, user_id, distance, heart_rate, duration, create_date, step, calorie, resting_calorie) FROM stdin;
    public          postgres    false    210   n�
      �          0    17593 (   well_being_workout_history_before_events 
   TABLE DATA           �   COPY public.well_being_workout_history_before_events (workout_history_before_event_id, event_id, user_id, distance, heart_rate, duration, create_date, step, calorie) FROM stdin;
    public          postgres    false    400   ��
      �          0    17601 !   well_being_workout_history_events 
   TABLE DATA           �   COPY public.well_being_workout_history_events (workout_history_event_id, event_id, user_id, distance, heart_rate, duration, create_date, step, calorie, start_date, end_date) FROM stdin;
    public          postgres    false    402   ��
                0    18014    well_being_workout_sync 
   TABLE DATA           `   COPY public.well_being_workout_sync (id, user_id, event_id, create_date, last_sync) FROM stdin;
    public          postgres    false    480   ŏ
      �          0    16480    z_databasechangelog 
   TABLE DATA           �   COPY public.z_databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
    public          postgres    false    170   �
      �          0    16475    z_databasechangeloglock 
   TABLE DATA           T   COPY public.z_databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
    public          postgres    false    169   ,�
      B           0    0 /   access_control_items_access_control_item_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.access_control_items_access_control_item_id_seq', 39, true);
          public          postgres    false    171            C           0    0 .   access_control_list_access_control_list_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.access_control_list_access_control_list_id_seq', 1, false);
          public          postgres    false    173            D           0    0 *   announcenment_of_passenger_requests_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.announcenment_of_passenger_requests_id_seq', 1, false);
          public          postgres    false    508            E           0    0    app_shortcut_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.app_shortcut_id_seq', 1, false);
          public          postgres    false    525            F           0    0    app_version_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.app_version_id_seq', 1, false);
          public          postgres    false    177            G           0    0    auth_authority_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.auth_authority_id_seq', 1, false);
          public          postgres    false    179            H           0    0    auth_role_authority_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.auth_role_authority_id_seq', 1, false);
          public          postgres    false    181            I           0    0    auth_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_role_id_seq', 1, false);
          public          postgres    false    183            J           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    185            K           0    0    auth_user_role_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.auth_user_role_id_seq', 1, false);
          public          postgres    false    187            L           0    0    brand_api_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.brand_api_id_seq', 1, false);
          public          postgres    false    191            M           0    0    brand_email_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.brand_email_id_seq', 1, false);
          public          postgres    false    502            N           0    0    brand_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.brand_id_seq', 1, false);
          public          postgres    false    193            O           0    0 
   bus_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.bus_id_seq', 1, false);
          public          postgres    false    195            P           0    0    bus_report_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.bus_report_id_seq', 1, false);
          public          postgres    false    197            Q           0    0    bus_route_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.bus_route_id_seq', 1, false);
          public          postgres    false    199            R           0    0    bus_station_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bus_station_id_seq', 1, false);
          public          postgres    false    201            S           0    0    bus_time_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bus_time_id_seq', 1, false);
          public          postgres    false    203            T           0    0    calendar_events_event_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.calendar_events_event_id_seq', 1, false);
          public          postgres    false    205            U           0    0    calendar_type_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.calendar_type_type_id_seq', 1, false);
          public          postgres    false    207            V           0    0    car_information_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.car_information_id_seq', 1, false);
          public          postgres    false    510            W           0    0    car_lines_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.car_lines_id_seq', 1, false);
          public          postgres    false    211            X           0    0    choice_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.choice_id_seq', 1, false);
          public          postgres    false    221            Y           0    0    choices_choice_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.choices_choice_id_seq', 1, false);
          public          postgres    false    219            Z           0    0    claim_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.claim_id_seq', 1, false);
          public          postgres    false    223            [           0    0    claim_type_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.claim_type_id_seq', 1, false);
          public          postgres    false    225            \           0    0    club_albums_club_albums_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.club_albums_club_albums_id_seq', 1, false);
          public          postgres    false    227            ]           0    0    club_comments_comment_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.club_comments_comment_id_seq', 1, false);
          public          postgres    false    229            ^           0    0    club_threads_thread_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.club_threads_thread_id_seq', 1, false);
          public          postgres    false    233            _           0    0    clubs_club_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.clubs_club_id_seq', 1, false);
          public          postgres    false    231            `           0    0    coin_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.coin_id_seq', 1, false);
          public          postgres    false    493            a           0    0    companies_company_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.companies_company_id_seq', 1, false);
          public          postgres    false    245            b           0    0 #   configurations_configuration_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.configurations_configuration_id_seq', 1, false);
          public          postgres    false    247            c           0    0    content_comments_comment_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.content_comments_comment_id_seq', 1, false);
          public          postgres    false    239            d           0    0    content_files_file_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.content_files_file_id_seq', 1, false);
          public          postgres    false    249            e           0    0 $   content_images_content_images_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.content_images_content_images_id_seq', 1, false);
          public          postgres    false    253            f           0    0    contents_content_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.contents_content_id_seq', 1, false);
          public          postgres    false    251            g           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 1, false);
          public          postgres    false    576            h           0    0    departments_department_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.departments_department_id_seq', 1, false);
          public          postgres    false    255            i           0    0    digital_news_comment_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.digital_news_comment_id_seq', 1, false);
          public          postgres    false    257            j           0    0 !   digital_news_header_images_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.digital_news_header_images_id_seq', 1, false);
          public          postgres    false    259            k           0    0     digital_news_notification_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.digital_news_notification_id_seq', 1, false);
          public          postgres    false    261            l           0    0 )   digital_news_product_datail_images_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.digital_news_product_datail_images_id_seq', 1, false);
          public          postgres    false    263            m           0    0 5   digital_news_product_delivery_product_delivery_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.digital_news_product_delivery_product_delivery_id_seq', 1, false);
          public          postgres    false    265            n           0    0 1   digital_news_product_status_product_status_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.digital_news_product_status_product_status_id_seq', 1, false);
          public          postgres    false    267            o           0    0    digital_news_quiz_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.digital_news_quiz_id_seq', 1, false);
          public          postgres    false    269            p           0    0    digital_news_type_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.digital_news_type_id_seq', 1, false);
          public          postgres    false    522            q           0    0    digital_news_user_quiz_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.digital_news_user_quiz_id_seq', 1, false);
          public          postgres    false    271            r           0    0    digital_news_user_vote_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.digital_news_user_vote_id_seq', 1, false);
          public          postgres    false    273            s           0    0    digital_news_vote_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.digital_news_vote_id_seq', 1, false);
          public          postgres    false    275            t           0    0    drive_master_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.drive_master_id_seq', 1, false);
          public          postgres    false    512            u           0    0    drive_requests_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.drive_requests_id_seq', 1, false);
          public          postgres    false    520            v           0    0    enrollment_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.enrollment_id_seq', 1, false);
          public          postgres    false    287            w           0    0 *   event_departments_event_departments_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.event_departments_event_departments_id_seq', 1, false);
          public          postgres    false    289            x           0    0 %   event_registers_event_register_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.event_registers_event_register_id_seq', 1, false);
          public          postgres    false    291            y           0    0    external_systems_system_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.external_systems_system_id_seq', 1, false);
          public          postgres    false    301            z           0    0 #   feedback_categories_category_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.feedback_categories_category_id_seq', 1, false);
          public          postgres    false    213            {           0    0 ?   feedback_category_control_lis_feedback_category_control_lis_seq    SEQUENCE SET     n   SELECT pg_catalog.setval('public.feedback_category_control_lis_feedback_category_control_lis_seq', 1, false);
          public          postgres    false    303            |           0    0     feedback_comments_comment_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.feedback_comments_comment_id_seq', 1, false);
          public          postgres    false    241            }           0    0 -   feedback_event_logs_feedback_event_log_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.feedback_event_logs_feedback_event_log_id_seq', 1, false);
          public          postgres    false    305            ~           0    0    feedback_images_image_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.feedback_images_image_id_seq', 1, false);
          public          postgres    false    311                       0    0    feedback_status_status_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.feedback_status_status_id_seq', 1, false);
          public          postgres    false    313            �           0    0    feedbacks_feedback_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.feedbacks_feedback_id_seq', 1, false);
          public          postgres    false    307            �           0    0    fend_item_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.fend_item_id_seq', 1, false);
          public          postgres    false    582            �           0    0    fend_register_form_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.fend_register_form_id_seq', 108, true);
          public          postgres    false    580            �           0    0    fend_research_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.fend_research_id_seq', 1, false);
          public          postgres    false    584            �           0    0    form_input_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.form_input_id_seq', 1, false);
          public          postgres    false    552            �           0    0    fs_file_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.fs_file_id_seq', 21, true);
          public          postgres    false    415            �           0    0    image_albums_album_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.image_albums_album_id_seq', 1, false);
          public          postgres    false    175            �           0    0    images_image_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.images_image_id_seq', 1, false);
          public          postgres    false    323            �           0    0 .   inbox_schedule_send_inbox_schedule_send_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.inbox_schedule_send_inbox_schedule_send_id_seq', 1, false);
          public          postgres    false    481            �           0    0    insurance_choice_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.insurance_choice_id_seq', 1, false);
          public          postgres    false    419            �           0    0    insurance_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.insurance_id_seq', 1, false);
          public          postgres    false    417            �           0    0    insurance_join_topic_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.insurance_join_topic_id_seq', 1, false);
          public          postgres    false    421            �           0    0    insurance_topic_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.insurance_topic_id_seq', 1, false);
          public          postgres    false    423            �           0    0    insurance_type_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.insurance_type_id_seq', 1, false);
          public          postgres    false    425            �           0    0    insurance_year_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.insurance_year_id_seq', 1, false);
          public          postgres    false    427            �           0    0    iris_calendar_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.iris_calendar_id_seq', 1, false);
          public          postgres    false    429            �           0    0    iris_manage_report_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.iris_manage_report_id_seq', 1, false);
          public          postgres    false    327            �           0    0    iris_manage_report_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.iris_manage_report_role_id_seq', 1, false);
          public          postgres    false    329            �           0    0 "   iris_report_with_water_mark_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.iris_report_with_water_mark_id_seq', 1, false);
          public          postgres    false    431            �           0    0    iris_subsidiaries_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.iris_subsidiaries_id_seq', 1, false);
          public          postgres    false    331            �           0    0 	   km_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.km_id_seq', 1, false);
          public          postgres    false    433            �           0    0    leave_benefits_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.leave_benefits_id_seq', 1, false);
          public          postgres    false    538            �           0    0    leave_benefits_user_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.leave_benefits_user_id_seq', 1, false);
          public          postgres    false    546            �           0    0    message_message_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.message_message_id_seq', 1, false);
          public          postgres    false    361            �           0    0    news_categories_category_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.news_categories_category_id_seq', 1, false);
          public          postgres    false    215            �           0    0 ,   news_category_list_news_category_list_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.news_category_list_news_category_list_id_seq', 1, false);
          public          postgres    false    333            �           0    0    news_comments_comment_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.news_comments_comment_id_seq', 1, false);
          public          postgres    false    243            �           0    0 (   news_departments_news_departments_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.news_departments_news_departments_id_seq', 1, false);
          public          postgres    false    335            �           0    0 ,   news_favorite_list_news_favorite_list_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.news_favorite_list_news_favorite_list_id_seq', 1, false);
          public          postgres    false    337            �           0    0    news_files_file_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.news_files_file_id_seq', 1, false);
          public          postgres    false    315            �           0    0 8   news_groups_control_list_news_groups_control_list_id_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.news_groups_control_list_news_groups_control_list_id_seq', 1, false);
          public          postgres    false    341            �           0    0 >   news_groups_department_list_news_groups_department_list_id_seq    SEQUENCE SET     m   SELECT pg_catalog.setval('public.news_groups_department_list_news_groups_department_list_id_seq', 1, false);
          public          postgres    false    343            �           0    0    news_groups_group_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.news_groups_group_id_seq', 1, false);
          public          postgres    false    339            �           0    0 (   news_groups_list_news_groups_list_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.news_groups_list_news_groups_list_id_seq', 1, false);
          public          postgres    false    495            �           0    0 2   news_groups_user_list_news_groups_user_list_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.news_groups_user_list_news_groups_user_list_id_seq', 1, false);
          public          postgres    false    345            �           0    0    news_images_news_images_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.news_images_news_images_id_seq', 1, false);
          public          postgres    false    347            �           0    0    news_news_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.news_news_id_seq', 1, false);
          public          postgres    false    325            �           0    0    notification_history_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.notification_history_id_seq', 1, false);
          public          postgres    false    516            �           0    0 '   notification_queues_notification_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.notification_queues_notification_id_seq', 1, false);
          public          postgres    false    349            �           0    0    passenger_request_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.passenger_request_id_seq', 1, false);
          public          postgres    false    514            �           0    0    play_events_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.play_events_id_seq', 1, false);
          public          postgres    false    351            �           0    0    play_events_images_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.play_events_images_id_seq', 1, false);
          public          postgres    false    353            �           0    0    play_user_join_event_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.play_user_join_event_id_seq', 1, false);
          public          postgres    false    355            �           0    0     point_transaction_log_log_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.point_transaction_log_log_id_seq', 1, false);
          public          postgres    false    357            �           0    0    pool_car_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pool_car_id_seq', 1, false);
          public          postgres    false    435            �           0    0    pool_report_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.pool_report_id_seq', 1, false);
          public          postgres    false    285            �           0    0    pool_route_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pool_route_id_seq', 1, false);
          public          postgres    false    437            �           0    0    pool_station_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pool_station_id_seq', 1, false);
          public          postgres    false    439            �           0    0    pool_station_time_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pool_station_time_id_seq', 1, false);
          public          postgres    false    441            �           0    0    product_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.product_category_id_seq', 1, false);
          public          postgres    false    445            �           0    0    product_form_input_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.product_form_input_id_seq', 1, false);
          public          postgres    false    554            �           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
          public          postgres    false    443            �           0    0    product_image_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_image_id_seq', 1, false);
          public          postgres    false    447            �           0    0    product_serial_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_serial_id_seq', 1, false);
          public          postgres    false    449            �           0    0    readed_readed_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.readed_readed_id_seq', 1, false);
          public          postgres    false    359            �           0    0 !   relative_benefits_category_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.relative_benefits_category_id_seq', 1, false);
          public          postgres    false    544            �           0    0 #   relative_benefits_choice_tag_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.relative_benefits_choice_tag_id_seq', 1, false);
          public          postgres    false    566            �           0    0     relative_benefits_choices_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.relative_benefits_choices_id_seq', 1, false);
          public          postgres    false    550            �           0    0    relative_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.relative_id_seq', 1, false);
          public          postgres    false    560            �           0    0     relative_selected_choices_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.relative_selected_choices_id_seq', 1, false);
          public          postgres    false    570            �           0    0    relative_type_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.relative_type_id_seq', 1, false);
          public          postgres    false    558            �           0    0    request_status_status_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.request_status_status_id_seq', 1, false);
          public          postgres    false    375            �           0    0    requests_request_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.requests_request_id_seq', 1, false);
          public          postgres    false    377            �           0    0 !   reward_categories_category_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.reward_categories_category_id_seq', 1, false);
          public          postgres    false    217            �           0    0 0   reward_category_list_reward_category_list_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.reward_category_list_reward_category_list_id_seq', 1, false);
          public          postgres    false    363            �           0    0 "   reward_images_reward_images_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.reward_images_reward_images_id_seq', 1, false);
          public          postgres    false    367            �           0    0    rewards_reward_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.rewards_reward_id_seq', 1, false);
          public          postgres    false    365            �           0    0    roles_role_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_role_id_seq', 1, true);
          public          postgres    false    317            �           0    0    self_benefits_category_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.self_benefits_category_id_seq', 1, false);
          public          postgres    false    541            �           0    0    self_benefits_choice_tag_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.self_benefits_choice_tag_id_seq', 1, false);
          public          postgres    false    564            �           0    0    self_benefits_choices_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.self_benefits_choices_id_seq', 1, false);
          public          postgres    false    548            �           0    0    shop_banner_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.shop_banner_id_seq', 1, false);
          public          postgres    false    506            �           0    0 
   tag_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tag_id_seq', 1, false);
          public          postgres    false    562            �           0    0    thaddr_district_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.thaddr_district_id_seq', 1, false);
          public          postgres    false    533            �           0    0    thaddr_province_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.thaddr_province_id_seq', 1, false);
          public          postgres    false    531            �           0    0    thaddr_subdistrict_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.thaddr_subdistrict_id_seq', 1, false);
          public          postgres    false    535            �           0    0    thaioil_coins_record_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.thaioil_coins_record_id_seq', 1, false);
          public          postgres    false    518            �           0    0 "   thread_images_thread_images_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.thread_images_thread_images_id_seq', 1, false);
          public          postgres    false    321            �           0    0    top_coin_transaction_log_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.top_coin_transaction_log_id_seq', 1, false);
          public          postgres    false    369            �           0    0    top_donate_activity_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.top_donate_activity_id_seq', 1, false);
          public          postgres    false    451            �           0    0    top_donate_coin_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.top_donate_coin_id_seq', 1, false);
          public          postgres    false    235            �           0    0    top_donate_comment_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.top_donate_comment_id_seq', 1, false);
          public          postgres    false    453            �           0    0    top_donate_foundation_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.top_donate_foundation_id_seq', 1, false);
          public          postgres    false    455            �           0    0    top_donate_like_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.top_donate_like_id_seq', 1, false);
          public          postgres    false    457            �           0    0    top_donate_post_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.top_donate_post_id_seq', 1, false);
          public          postgres    false    459            �           0    0    top_donate_sub_other_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.top_donate_sub_other_id_seq', 1, false);
          public          postgres    false    461            �           0    0    topic_choice_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.topic_choice_id_seq', 1, false);
          public          postgres    false    463            �           0    0    user_address_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_address_id_seq', 1, false);
          public          postgres    false    529            �           0    0    user_app_shortcut_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.user_app_shortcut_id_seq', 1, false);
          public          postgres    false    527            �           0    0    user_choice_user_choice_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.user_choice_user_choice_id_seq', 1, false);
          public          postgres    false    371            �           0    0    user_claim_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_claim_id_seq', 1, false);
          public          postgres    false    465            �           0    0 (   user_departments_user_departments_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.user_departments_user_departments_id_seq', 1, false);
          public          postgres    false    373            �           0    0    user_family_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.user_family_id_seq', 1, false);
          public          postgres    false    467            �           0    0 )   user_family_insurance_topic_choice_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.user_family_insurance_topic_choice_id_seq', 1, false);
          public          postgres    false    469            �           0    0    user_first_join_odyssey_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.user_first_join_odyssey_id_seq', 1, false);
          public          postgres    false    471            �           0    0 "   user_insurance_topic_choice_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_insurance_topic_choice_id_seq', 1, false);
          public          postgres    false    473            �           0    0    user_leave_coin_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.user_leave_coin_id_seq', 1, false);
          public          postgres    false    475            �           0    0    user_msal_tokens_token_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.user_msal_tokens_token_id_seq', 1, false);
          public          postgres    false    504            �           0    0    user_prefix_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.user_prefix_id_seq', 1, false);
          public          postgres    false    574            �           0    0    user_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_product_id_seq', 1, false);
          public          postgres    false    500            �           0    0    user_product_info_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.user_product_info_id_seq', 1, false);
          public          postgres    false    556            �           0    0    user_roles_user_roles_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.user_roles_user_roles_id_seq', 2, true);
          public          postgres    false    379            �           0    0    user_selected_choices_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.user_selected_choices_id_seq', 1, false);
          public          postgres    false    568            �           0    0    user_tags_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_tags_id_seq', 1, false);
          public          postgres    false    578            �           0    0    user_third_party_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.user_third_party_id_seq', 1, false);
          public          postgres    false    477            �           0    0    user_tokens_token_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.user_tokens_token_id_seq', 79, true);
          public          postgres    false    381            �           0    0     users_pre_selected_claims_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.users_pre_selected_claims_id_seq', 1, false);
          public          postgres    false    572            �           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);
          public          postgres    false    319            �           0    0    visited_visited_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.visited_visited_id_seq', 1, false);
          public          postgres    false    491            �           0    0 ;   well_being_coin_transaction_log_coin_transaction_log_id_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public.well_being_coin_transaction_log_coin_transaction_log_id_seq', 1, false);
          public          postgres    false    237            �           0    0 #   well_being_donation_donation_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.well_being_donation_donation_id_seq', 1, false);
          public          postgres    false    277            �           0    0 /   well_being_donation_image_donation_image_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.well_being_donation_image_donation_image_id_seq', 1, false);
          public          postgres    false    279            �           0    0 /   well_being_donation_thank_donation_thank_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.well_being_donation_thank_donation_thank_id_seq', 1, false);
          public          postgres    false    281            �           0    0 9   well_being_event_team_register_event_team_register_id_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public.well_being_event_team_register_event_team_register_id_seq', 1, false);
          public          postgres    false    293            �           0    0 '   well_being_event_type_event_type_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.well_being_event_type_event_type_id_seq', 1, false);
          public          postgres    false    295            �           0    0 9   well_being_event_user_register_event_user_register_id_seq    SEQUENCE SET     h   SELECT pg_catalog.setval('public.well_being_event_user_register_event_user_register_id_seq', 1, false);
          public          postgres    false    297            �           0    0    well_being_events_event_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.well_being_events_event_id_seq', 1, false);
          public          postgres    false    283            �           0    0 .   well_being_exercise_types_exercise_type_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.well_being_exercise_types_exercise_type_id_seq', 1, false);
          public          postgres    false    299            �           0    0 $   well_being_feedbacks_feedback_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.well_being_feedbacks_feedback_id_seq', 1, false);
          public          postgres    false    309            �           0    0    well_being_follow_follow_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.well_being_follow_follow_id_seq', 1, false);
          public          postgres    false    389            �           0    0    well_being_goals_goal_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.well_being_goals_goal_id_seq', 1, false);
          public          postgres    false    391            �           0    0 '   well_being_health_tip_health_tip_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.well_being_health_tip_health_tip_id_seq', 1, false);
          public          postgres    false    385            �           0    0    well_being_likes_like_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.well_being_likes_like_id_seq', 1, false);
          public          postgres    false    393            �           0    0 +   well_being_notification_notification_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.well_being_notification_notification_id_seq', 1, false);
          public          postgres    false    483            �           0    0 ,   well_being_post_comments_post_comment_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.well_being_post_comments_post_comment_id_seq', 1, false);
          public          postgres    false    395            �           0    0 ?   well_being_post_news_detail_image_post_news_detail_image_id_seq    SEQUENCE SET     n   SELECT pg_catalog.setval('public.well_being_post_news_detail_image_post_news_detail_image_id_seq', 1, false);
          public          postgres    false    405            �           0    0 3   well_being_post_news_detail_post_news_detail_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.well_being_post_news_detail_post_news_detail_id_seq', 1, false);
          public          postgres    false    403            �           0    0    well_being_posts_post_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.well_being_posts_post_id_seq', 1, false);
          public          postgres    false    397                        0    0 1   well_being_product_best_seller_best_seller_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.well_being_product_best_seller_best_seller_id_seq', 1, false);
          public          postgres    false    189                       0    0 3   well_being_product_delivery_product_delivery_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.well_being_product_delivery_product_delivery_id_seq', 1, false);
          public          postgres    false    387                       0    0 -   well_being_product_image_product_image_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.well_being_product_image_product_image_id_seq', 1, false);
          public          postgres    false    409                       0    0 !   well_being_product_product_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.well_being_product_product_id_seq', 1, false);
          public          postgres    false    407                       0    0 /   well_being_product_status_product_status_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.well_being_product_status_product_status_id_seq', 1, false);
          public          postgres    false    411                       0    0 +   well_being_product_type_product_type_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.well_being_product_type_product_type_id_seq', 1, false);
          public          postgres    false    413                       0    0 *   well_being_team_members_team_member_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.well_being_team_members_team_member_id_seq', 1, false);
          public          postgres    false    489                       0    0    well_being_teams_team_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.well_being_teams_team_id_seq', 1, false);
          public          postgres    false    383                       0    0 3   well_being_workout_histories_workout_history_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.well_being_workout_histories_workout_history_id_seq', 1, false);
          public          postgres    false    209            	           0    0 ?   well_being_workout_history_be_workout_history_before_event__seq    SEQUENCE SET     n   SELECT pg_catalog.setval('public.well_being_workout_history_be_workout_history_before_event__seq', 1, false);
          public          postgres    false    399            
           0    0 >   well_being_workout_history_events_workout_history_event_id_seq    SEQUENCE SET     m   SELECT pg_catalog.setval('public.well_being_workout_history_events_workout_history_event_id_seq', 1, false);
          public          postgres    false    401                       0    0    well_being_workout_sync_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.well_being_workout_sync_id_seq', 1, false);
          public          postgres    false    479            7           2606    16496 .   access_control_items access_control_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.access_control_items
    ADD CONSTRAINT access_control_items_pkey PRIMARY KEY (access_control_item_id);
 X   ALTER TABLE ONLY public.access_control_items DROP CONSTRAINT access_control_items_pkey;
       public            postgres    false    172            9           2606    16504 ,   access_control_list access_control_list_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.access_control_list
    ADD CONSTRAINT access_control_list_pkey PRIMARY KEY (access_control_list_id);
 V   ALTER TABLE ONLY public.access_control_list DROP CONSTRAINT access_control_list_pkey;
       public            postgres    false    174            =           2606    16526    app_version app_version_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.app_version
    ADD CONSTRAINT app_version_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.app_version DROP CONSTRAINT app_version_pk;
       public            postgres    false    178            E           2606    18098 #   auth_user auth_user_unique_username 
   CONSTRAINT     h   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_unique_username UNIQUE (type, username);
 M   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_unique_username;
       public            postgres    false    186    186            �           2606    19041    benefit_year benefit_year_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.benefit_year
    ADD CONSTRAINT benefit_year_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.benefit_year DROP CONSTRAINT benefit_year_pkey;
       public            postgres    false    537            M           2606    16591    brand_api brand_api_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.brand_api
    ADD CONSTRAINT brand_api_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.brand_api DROP CONSTRAINT brand_api_pkey;
       public            postgres    false    192            �           2606    18674    brand_email brand_email_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.brand_email
    ADD CONSTRAINT brand_email_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.brand_email DROP CONSTRAINT brand_email_pkey;
       public            postgres    false    503            O           2606    16602    brand brand_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public            postgres    false    194            [           2606    16670 $   calendar_events calendar_events_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.calendar_events
    ADD CONSTRAINT calendar_events_pkey PRIMARY KEY (event_id);
 N   ALTER TABLE ONLY public.calendar_events DROP CONSTRAINT calendar_events_pkey;
       public            postgres    false    206            ^           2606    16678     calendar_type calendar_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.calendar_type
    ADD CONSTRAINT calendar_type_pkey PRIMARY KEY (type_id);
 J   ALTER TABLE ONLY public.calendar_type DROP CONSTRAINT calendar_type_pkey;
       public            postgres    false    208            j           2606    16745    choices choices_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.choices
    ADD CONSTRAINT choices_pkey PRIMARY KEY (choice_id);
 >   ALTER TABLE ONLY public.choices DROP CONSTRAINT choices_pkey;
       public            postgres    false    220            n           2606    16767    claim claim_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.claim
    ADD CONSTRAINT claim_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.claim DROP CONSTRAINT claim_pkey;
       public            postgres    false    224            p           2606    16778    claim_type claim_type_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.claim_type
    ADD CONSTRAINT claim_type_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.claim_type DROP CONSTRAINT claim_type_pkey;
       public            postgres    false    226            r           2606    16786    club_albums club_albums_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.club_albums
    ADD CONSTRAINT club_albums_pkey PRIMARY KEY (club_albums_id);
 F   ALTER TABLE ONLY public.club_albums DROP CONSTRAINT club_albums_pkey;
       public            postgres    false    228            t           2606    16797     club_comments club_comments_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.club_comments
    ADD CONSTRAINT club_comments_pkey PRIMARY KEY (comment_id);
 J   ALTER TABLE ONLY public.club_comments DROP CONSTRAINT club_comments_pkey;
       public            postgres    false    230            x           2606    16819    club_threads club_threads_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.club_threads
    ADD CONSTRAINT club_threads_pkey PRIMARY KEY (thread_id);
 H   ALTER TABLE ONLY public.club_threads DROP CONSTRAINT club_threads_pkey;
       public            postgres    false    234            v           2606    16808    clubs clubs_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT clubs_pkey PRIMARY KEY (club_id);
 :   ALTER TABLE ONLY public.clubs DROP CONSTRAINT clubs_pkey;
       public            postgres    false    232            |           2606    18165    coin coin_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.coin DROP CONSTRAINT coin_pkey;
       public            postgres    false    494            �           2606    16874    companies companies_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (company_id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    246            ~           2606    16844 &   content_comments content_comments_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.content_comments
    ADD CONSTRAINT content_comments_pkey PRIMARY KEY (comment_id);
 P   ALTER TABLE ONLY public.content_comments DROP CONSTRAINT content_comments_pkey;
       public            postgres    false    240            �           2606    16891     content_files content_files_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.content_files
    ADD CONSTRAINT content_files_pkey PRIMARY KEY (file_id);
 J   ALTER TABLE ONLY public.content_files DROP CONSTRAINT content_files_pkey;
       public            postgres    false    250            �           2606    16911 "   content_images content_images_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.content_images
    ADD CONSTRAINT content_images_pkey PRIMARY KEY (content_images_id);
 L   ALTER TABLE ONLY public.content_images DROP CONSTRAINT content_images_pkey;
       public            postgres    false    254            �           2606    16903    contents contents_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.contents
    ADD CONSTRAINT contents_pkey PRIMARY KEY (content_id);
 @   ALTER TABLE ONLY public.contents DROP CONSTRAINT contents_pkey;
       public            postgres    false    252            �           2606    16919    departments departments_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    256            �           2606    17095 (   event_departments event_departments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.event_departments
    ADD CONSTRAINT event_departments_pkey PRIMARY KEY (event_departments_id);
 R   ALTER TABLE ONLY public.event_departments DROP CONSTRAINT event_departments_pkey;
       public            postgres    false    290            �           2606    17103 $   event_registers event_registers_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.event_registers
    ADD CONSTRAINT event_registers_pkey PRIMARY KEY (event_register_id);
 N   ALTER TABLE ONLY public.event_registers DROP CONSTRAINT event_registers_pkey;
       public            postgres    false    292            �           2606    17143 &   external_systems external_systems_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.external_systems
    ADD CONSTRAINT external_systems_pkey PRIMARY KEY (system_id);
 P   ALTER TABLE ONLY public.external_systems DROP CONSTRAINT external_systems_pkey;
       public            postgres    false    302            d           2606    16714 ,   feedback_categories feedback_categories_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.feedback_categories
    ADD CONSTRAINT feedback_categories_pkey PRIMARY KEY (category_id);
 V   ALTER TABLE ONLY public.feedback_categories DROP CONSTRAINT feedback_categories_pkey;
       public            postgres    false    214            �           2606    17151 B   feedback_category_control_list feedback_category_control_list_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.feedback_category_control_list
    ADD CONSTRAINT feedback_category_control_list_pkey PRIMARY KEY (feedback_category_control_list_id);
 l   ALTER TABLE ONLY public.feedback_category_control_list DROP CONSTRAINT feedback_category_control_list_pkey;
       public            postgres    false    304            �           2606    16855 (   feedback_comments feedback_comments_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.feedback_comments
    ADD CONSTRAINT feedback_comments_pkey PRIMARY KEY (comment_id);
 R   ALTER TABLE ONLY public.feedback_comments DROP CONSTRAINT feedback_comments_pkey;
       public            postgres    false    242            �           2606    17159 ,   feedback_event_logs feedback_event_logs_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.feedback_event_logs
    ADD CONSTRAINT feedback_event_logs_pkey PRIMARY KEY (feedback_event_log_id);
 V   ALTER TABLE ONLY public.feedback_event_logs DROP CONSTRAINT feedback_event_logs_pkey;
       public            postgres    false    306            �           2606    17189 $   feedback_images feedback_images_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.feedback_images
    ADD CONSTRAINT feedback_images_pkey PRIMARY KEY (image_id);
 N   ALTER TABLE ONLY public.feedback_images DROP CONSTRAINT feedback_images_pkey;
       public            postgres    false    312            �           2606    17197 $   feedback_status feedback_status_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.feedback_status
    ADD CONSTRAINT feedback_status_pkey PRIMARY KEY (status_id);
 N   ALTER TABLE ONLY public.feedback_status DROP CONSTRAINT feedback_status_pkey;
       public            postgres    false    314            �           2606    17170    feedbacks feedbacks_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (feedback_id);
 B   ALTER TABLE ONLY public.feedbacks DROP CONSTRAINT feedbacks_pkey;
       public            postgres    false    308            �           2606    19690    fend_item fend_item_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.fend_item
    ADD CONSTRAINT fend_item_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.fend_item DROP CONSTRAINT fend_item_pkey;
       public            postgres    false    583            �           2606    19672 *   fend_register_form fend_register_form_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.fend_register_form
    ADD CONSTRAINT fend_register_form_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.fend_register_form DROP CONSTRAINT fend_register_form_pkey;
       public            postgres    false    581            �           2606    19701     fend_research fend_research_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.fend_research
    ADD CONSTRAINT fend_research_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.fend_research DROP CONSTRAINT fend_research_pkey;
       public            postgres    false    585            ,           2606    17678    fs_file fs_file_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.fs_file
    ADD CONSTRAINT fs_file_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.fs_file DROP CONSTRAINT fs_file_pkey;
       public            postgres    false    416            ;           2606    16515    image_albums image_albums_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.image_albums
    ADD CONSTRAINT image_albums_pkey PRIMARY KEY (album_id);
 H   ALTER TABLE ONLY public.image_albums DROP CONSTRAINT image_albums_pkey;
       public            postgres    false    176            �           2606    17242    images images_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (image_id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    324            l           2606    18030 ,   inbox_schedule_send inbox_schedule_send_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.inbox_schedule_send
    ADD CONSTRAINT inbox_schedule_send_pkey PRIMARY KEY (inbox_schedule_send_id);
 V   ALTER TABLE ONLY public.inbox_schedule_send DROP CONSTRAINT inbox_schedule_send_pkey;
       public            postgres    false    482            �           2606    19052 "   leave_benefits leave_benefits_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.leave_benefits
    ADD CONSTRAINT leave_benefits_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.leave_benefits DROP CONSTRAINT leave_benefits_pkey;
       public            postgres    false    539            �           2606    19150 ,   leave_benefits_user leave_benefits_user_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.leave_benefits_user
    ADD CONSTRAINT leave_benefits_user_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.leave_benefits_user DROP CONSTRAINT leave_benefits_user_pkey;
       public            postgres    false    547            �           2606    17421    message message_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (message_id);
 >   ALTER TABLE ONLY public.message DROP CONSTRAINT message_pkey;
       public            postgres    false    362            f           2606    16723 $   news_categories news_categories_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.news_categories
    ADD CONSTRAINT news_categories_pkey PRIMARY KEY (category_id);
 N   ALTER TABLE ONLY public.news_categories DROP CONSTRAINT news_categories_pkey;
       public            postgres    false    216            �           2606    17293 *   news_category_list news_category_list_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.news_category_list
    ADD CONSTRAINT news_category_list_pkey PRIMARY KEY (news_category_list_id);
 T   ALTER TABLE ONLY public.news_category_list DROP CONSTRAINT news_category_list_pkey;
       public            postgres    false    334            �           2606    16866     news_comments news_comments_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.news_comments
    ADD CONSTRAINT news_comments_pkey PRIMARY KEY (comment_id);
 J   ALTER TABLE ONLY public.news_comments DROP CONSTRAINT news_comments_pkey;
       public            postgres    false    244            �           2606    17301 &   news_departments news_departments_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.news_departments
    ADD CONSTRAINT news_departments_pkey PRIMARY KEY (news_departments_id);
 P   ALTER TABLE ONLY public.news_departments DROP CONSTRAINT news_departments_pkey;
       public            postgres    false    336            �           2606    17309 *   news_favorite_list news_favorite_list_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.news_favorite_list
    ADD CONSTRAINT news_favorite_list_pkey PRIMARY KEY (news_favorite_list_id);
 T   ALTER TABLE ONLY public.news_favorite_list DROP CONSTRAINT news_favorite_list_pkey;
       public            postgres    false    338            �           2606    17205    news_files news_files_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.news_files
    ADD CONSTRAINT news_files_pkey PRIMARY KEY (file_id);
 D   ALTER TABLE ONLY public.news_files DROP CONSTRAINT news_files_pkey;
       public            postgres    false    316            �           2606    17328 6   news_groups_control_list news_groups_control_list_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_control_list
    ADD CONSTRAINT news_groups_control_list_pkey PRIMARY KEY (news_groups_control_list_id);
 `   ALTER TABLE ONLY public.news_groups_control_list DROP CONSTRAINT news_groups_control_list_pkey;
       public            postgres    false    342            �           2606    17336 <   news_groups_department_list news_groups_department_list_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_department_list
    ADD CONSTRAINT news_groups_department_list_pkey PRIMARY KEY (news_groups_department_list_id);
 f   ALTER TABLE ONLY public.news_groups_department_list DROP CONSTRAINT news_groups_department_list_pkey;
       public            postgres    false    344            ~           2606    18318 &   news_groups_list news_groups_list_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.news_groups_list
    ADD CONSTRAINT news_groups_list_pkey PRIMARY KEY (news_groups_list_id);
 P   ALTER TABLE ONLY public.news_groups_list DROP CONSTRAINT news_groups_list_pkey;
       public            postgres    false    496            �           2606    17320    news_groups news_groups_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.news_groups
    ADD CONSTRAINT news_groups_pkey PRIMARY KEY (group_id);
 F   ALTER TABLE ONLY public.news_groups DROP CONSTRAINT news_groups_pkey;
       public            postgres    false    340            �           2606    17344 0   news_groups_user_list news_groups_user_list_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_user_list
    ADD CONSTRAINT news_groups_user_list_pkey PRIMARY KEY (news_groups_user_list_id);
 Z   ALTER TABLE ONLY public.news_groups_user_list DROP CONSTRAINT news_groups_user_list_pkey;
       public            postgres    false    346            �           2606    17352    news_images news_images_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.news_images
    ADD CONSTRAINT news_images_pkey PRIMARY KEY (news_images_id);
 F   ALTER TABLE ONLY public.news_images DROP CONSTRAINT news_images_pkey;
       public            postgres    false    348            �           2606    17254    news news_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (news_id);
 8   ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
       public            postgres    false    326            �           2606    17360 ,   notification_queues notification_queues_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.notification_queues
    ADD CONSTRAINT notification_queues_pkey PRIMARY KEY (notification_id);
 V   ALTER TABLE ONLY public.notification_queues DROP CONSTRAINT notification_queues_pkey;
       public            postgres    false    350            �           2606    18725 J   announcenment_of_passenger_requests pk_announcenment_of_passenger_requests 
   CONSTRAINT     �   ALTER TABLE ONLY public.announcenment_of_passenger_requests
    ADD CONSTRAINT pk_announcenment_of_passenger_requests PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.announcenment_of_passenger_requests DROP CONSTRAINT pk_announcenment_of_passenger_requests;
       public            postgres    false    509            �           2606    18932    app_shortcut pk_app_shortcut 
   CONSTRAINT     Z   ALTER TABLE ONLY public.app_shortcut
    ADD CONSTRAINT pk_app_shortcut PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.app_shortcut DROP CONSTRAINT pk_app_shortcut;
       public            postgres    false    526            ?           2606    16534     auth_authority pk_auth_authority 
   CONSTRAINT     ^   ALTER TABLE ONLY public.auth_authority
    ADD CONSTRAINT pk_auth_authority PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.auth_authority DROP CONSTRAINT pk_auth_authority;
       public            postgres    false    180            C           2606    16553    auth_role pk_auth_role 
   CONSTRAINT     T   ALTER TABLE ONLY public.auth_role
    ADD CONSTRAINT pk_auth_role PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.auth_role DROP CONSTRAINT pk_auth_role;
       public            postgres    false    184            A           2606    16542 *   auth_role_authority pk_auth_role_authority 
   CONSTRAINT     h   ALTER TABLE ONLY public.auth_role_authority
    ADD CONSTRAINT pk_auth_role_authority PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.auth_role_authority DROP CONSTRAINT pk_auth_role_authority;
       public            postgres    false    182            G           2606    16564    auth_user pk_auth_user 
   CONSTRAINT     T   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT pk_auth_user PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT pk_auth_user;
       public            postgres    false    186            I           2606    16572     auth_user_role pk_auth_user_role 
   CONSTRAINT     ^   ALTER TABLE ONLY public.auth_user_role
    ADD CONSTRAINT pk_auth_user_role PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.auth_user_role DROP CONSTRAINT pk_auth_user_role;
       public            postgres    false    188            Q           2606    16613 
   bus pk_bus 
   CONSTRAINT     U   ALTER TABLE ONLY public.bus
    ADD CONSTRAINT pk_bus PRIMARY KEY (id, vehichle_id);
 4   ALTER TABLE ONLY public.bus DROP CONSTRAINT pk_bus;
       public            postgres    false    196    196            S           2606    16624    bus_report pk_bus_report 
   CONSTRAINT     V   ALTER TABLE ONLY public.bus_report
    ADD CONSTRAINT pk_bus_report PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.bus_report DROP CONSTRAINT pk_bus_report;
       public            postgres    false    198            U           2606    16636    bus_route pk_bus_route 
   CONSTRAINT     T   ALTER TABLE ONLY public.bus_route
    ADD CONSTRAINT pk_bus_route PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.bus_route DROP CONSTRAINT pk_bus_route;
       public            postgres    false    200            W           2606    16648    bus_station pk_bus_station 
   CONSTRAINT     X   ALTER TABLE ONLY public.bus_station
    ADD CONSTRAINT pk_bus_station PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.bus_station DROP CONSTRAINT pk_bus_station;
       public            postgres    false    202            Y           2606    16659    bus_time pk_bus_time 
   CONSTRAINT     R   ALTER TABLE ONLY public.bus_time
    ADD CONSTRAINT pk_bus_time PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.bus_time DROP CONSTRAINT pk_bus_time;
       public            postgres    false    204            �           2606    18736 "   car_information pk_car_information 
   CONSTRAINT     `   ALTER TABLE ONLY public.car_information
    ADD CONSTRAINT pk_car_information PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.car_information DROP CONSTRAINT pk_car_information;
       public            postgres    false    511            b           2606    16703    car_lines pk_car_lines 
   CONSTRAINT     T   ALTER TABLE ONLY public.car_lines
    ADD CONSTRAINT pk_car_lines PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.car_lines DROP CONSTRAINT pk_car_lines;
       public            postgres    false    212            l           2606    16756    choice pk_choice 
   CONSTRAINT     N   ALTER TABLE ONLY public.choice
    ADD CONSTRAINT pk_choice PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.choice DROP CONSTRAINT pk_choice;
       public            postgres    false    222            p           2606    18046    ClientDetails pk_clientdetails 
   CONSTRAINT     c   ALTER TABLE ONLY public."ClientDetails"
    ADD CONSTRAINT pk_clientdetails PRIMARY KEY ("appId");
 J   ALTER TABLE ONLY public."ClientDetails" DROP CONSTRAINT pk_clientdetails;
       public            postgres    false    485            �           2606    19618    country pk_country 
   CONSTRAINT     P   ALTER TABLE ONLY public.country
    ADD CONSTRAINT pk_country PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.country DROP CONSTRAINT pk_country;
       public            postgres    false    577            �           2606    16930 ,   digital_news_comment pk_digital_news_comment 
   CONSTRAINT     j   ALTER TABLE ONLY public.digital_news_comment
    ADD CONSTRAINT pk_digital_news_comment PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.digital_news_comment DROP CONSTRAINT pk_digital_news_comment;
       public            postgres    false    258            �           2606    16941 8   digital_news_header_images pk_digital_news_header_images 
   CONSTRAINT     v   ALTER TABLE ONLY public.digital_news_header_images
    ADD CONSTRAINT pk_digital_news_header_images PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.digital_news_header_images DROP CONSTRAINT pk_digital_news_header_images;
       public            postgres    false    260            �           2606    16952 6   digital_news_notification pk_digital_news_notification 
   CONSTRAINT     t   ALTER TABLE ONLY public.digital_news_notification
    ADD CONSTRAINT pk_digital_news_notification PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.digital_news_notification DROP CONSTRAINT pk_digital_news_notification;
       public            postgres    false    262            �           2606    16963 H   digital_news_product_datail_images pk_digital_news_product_datail_images 
   CONSTRAINT     �   ALTER TABLE ONLY public.digital_news_product_datail_images
    ADD CONSTRAINT pk_digital_news_product_datail_images PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.digital_news_product_datail_images DROP CONSTRAINT pk_digital_news_product_datail_images;
       public            postgres    false    264            �           2606    16971 >   digital_news_product_delivery pk_digital_news_product_delivery 
   CONSTRAINT     �   ALTER TABLE ONLY public.digital_news_product_delivery
    ADD CONSTRAINT pk_digital_news_product_delivery PRIMARY KEY (product_delivery_id);
 h   ALTER TABLE ONLY public.digital_news_product_delivery DROP CONSTRAINT pk_digital_news_product_delivery;
       public            postgres    false    266            �           2606    16979 :   digital_news_product_status pk_digital_news_product_status 
   CONSTRAINT     �   ALTER TABLE ONLY public.digital_news_product_status
    ADD CONSTRAINT pk_digital_news_product_status PRIMARY KEY (product_status_id);
 d   ALTER TABLE ONLY public.digital_news_product_status DROP CONSTRAINT pk_digital_news_product_status;
       public            postgres    false    268            �           2606    16992 &   digital_news_quiz pk_digital_news_quiz 
   CONSTRAINT     d   ALTER TABLE ONLY public.digital_news_quiz
    ADD CONSTRAINT pk_digital_news_quiz PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.digital_news_quiz DROP CONSTRAINT pk_digital_news_quiz;
       public            postgres    false    270            �           2606    18901 &   digital_news_type pk_digital_news_type 
   CONSTRAINT     d   ALTER TABLE ONLY public.digital_news_type
    ADD CONSTRAINT pk_digital_news_type PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.digital_news_type DROP CONSTRAINT pk_digital_news_type;
       public            postgres    false    523            �           2606    17001 0   digital_news_user_quiz pk_digital_news_user_quiz 
   CONSTRAINT     n   ALTER TABLE ONLY public.digital_news_user_quiz
    ADD CONSTRAINT pk_digital_news_user_quiz PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.digital_news_user_quiz DROP CONSTRAINT pk_digital_news_user_quiz;
       public            postgres    false    272            �           2606    17009 0   digital_news_user_vote pk_digital_news_user_vote 
   CONSTRAINT     n   ALTER TABLE ONLY public.digital_news_user_vote
    ADD CONSTRAINT pk_digital_news_user_vote PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.digital_news_user_vote DROP CONSTRAINT pk_digital_news_user_vote;
       public            postgres    false    274            �           2606    17021 &   digital_news_vote pk_digital_news_vote 
   CONSTRAINT     d   ALTER TABLE ONLY public.digital_news_vote
    ADD CONSTRAINT pk_digital_news_vote PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.digital_news_vote DROP CONSTRAINT pk_digital_news_vote;
       public            postgres    false    276            �           2606    18752    drive_master pk_drive_master 
   CONSTRAINT     Z   ALTER TABLE ONLY public.drive_master
    ADD CONSTRAINT pk_drive_master PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.drive_master DROP CONSTRAINT pk_drive_master;
       public            postgres    false    513            �           2606    18866     drive_requests pk_drive_requests 
   CONSTRAINT     ^   ALTER TABLE ONLY public.drive_requests
    ADD CONSTRAINT pk_drive_requests PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.drive_requests DROP CONSTRAINT pk_drive_requests;
       public            postgres    false    521            �           2606    17087    enrollment pk_enrollment 
   CONSTRAINT     V   ALTER TABLE ONLY public.enrollment
    ADD CONSTRAINT pk_enrollment PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.enrollment DROP CONSTRAINT pk_enrollment;
       public            postgres    false    288            �           2606    19206    form_input pk_form_input 
   CONSTRAINT     V   ALTER TABLE ONLY public.form_input
    ADD CONSTRAINT pk_form_input PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.form_input DROP CONSTRAINT pk_form_input;
       public            postgres    false    553            .           2606    17689    insurance pk_insurance 
   CONSTRAINT     T   ALTER TABLE ONLY public.insurance
    ADD CONSTRAINT pk_insurance PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.insurance DROP CONSTRAINT pk_insurance;
       public            postgres    false    418            0           2606    17700 $   insurance_choice pk_insurance_choice 
   CONSTRAINT     b   ALTER TABLE ONLY public.insurance_choice
    ADD CONSTRAINT pk_insurance_choice PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.insurance_choice DROP CONSTRAINT pk_insurance_choice;
       public            postgres    false    420            2           2606    17711 ,   insurance_join_topic pk_insurance_join_topic 
   CONSTRAINT     j   ALTER TABLE ONLY public.insurance_join_topic
    ADD CONSTRAINT pk_insurance_join_topic PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.insurance_join_topic DROP CONSTRAINT pk_insurance_join_topic;
       public            postgres    false    422            4           2606    17722 "   insurance_topic pk_insurance_topic 
   CONSTRAINT     `   ALTER TABLE ONLY public.insurance_topic
    ADD CONSTRAINT pk_insurance_topic PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.insurance_topic DROP CONSTRAINT pk_insurance_topic;
       public            postgres    false    424            6           2606    17733     insurance_type pk_insurance_type 
   CONSTRAINT     ^   ALTER TABLE ONLY public.insurance_type
    ADD CONSTRAINT pk_insurance_type PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.insurance_type DROP CONSTRAINT pk_insurance_type;
       public            postgres    false    426            8           2606    17744     insurance_year pk_insurance_year 
   CONSTRAINT     ^   ALTER TABLE ONLY public.insurance_year
    ADD CONSTRAINT pk_insurance_year PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.insurance_year DROP CONSTRAINT pk_insurance_year;
       public            postgres    false    428            :           2606    17756    iris_calendar pk_iris_calendar 
   CONSTRAINT     \   ALTER TABLE ONLY public.iris_calendar
    ADD CONSTRAINT pk_iris_calendar PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.iris_calendar DROP CONSTRAINT pk_iris_calendar;
       public            postgres    false    430            �           2606    17265 (   iris_manage_report pk_iris_manage_report 
   CONSTRAINT     f   ALTER TABLE ONLY public.iris_manage_report
    ADD CONSTRAINT pk_iris_manage_report PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.iris_manage_report DROP CONSTRAINT pk_iris_manage_report;
       public            postgres    false    328            �           2606    17273 2   iris_manage_report_role pk_iris_manage_report_role 
   CONSTRAINT     p   ALTER TABLE ONLY public.iris_manage_report_role
    ADD CONSTRAINT pk_iris_manage_report_role PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.iris_manage_report_role DROP CONSTRAINT pk_iris_manage_report_role;
       public            postgres    false    330            <           2606    17767 :   iris_report_with_water_mark pk_iris_report_with_water_mark 
   CONSTRAINT     x   ALTER TABLE ONLY public.iris_report_with_water_mark
    ADD CONSTRAINT pk_iris_report_with_water_mark PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.iris_report_with_water_mark DROP CONSTRAINT pk_iris_report_with_water_mark;
       public            postgres    false    432            �           2606    17285 &   iris_subsidiaries pk_iris_subsidiaries 
   CONSTRAINT     d   ALTER TABLE ONLY public.iris_subsidiaries
    ADD CONSTRAINT pk_iris_subsidiaries PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.iris_subsidiaries DROP CONSTRAINT pk_iris_subsidiaries;
       public            postgres    false    332            >           2606    17778    km pk_km 
   CONSTRAINT     F   ALTER TABLE ONLY public.km
    ADD CONSTRAINT pk_km PRIMARY KEY (id);
 2   ALTER TABLE ONLY public.km DROP CONSTRAINT pk_km;
       public            postgres    false    434            �           2606    18803 ,   notification_history pk_notification_history 
   CONSTRAINT     j   ALTER TABLE ONLY public.notification_history
    ADD CONSTRAINT pk_notification_history PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.notification_history DROP CONSTRAINT pk_notification_history;
       public            postgres    false    517            r           2606    18054 (   oauth_access_token pk_oauth_access_token 
   CONSTRAINT     u   ALTER TABLE ONLY public.oauth_access_token
    ADD CONSTRAINT pk_oauth_access_token PRIMARY KEY (authentication_id);
 R   ALTER TABLE ONLY public.oauth_access_token DROP CONSTRAINT pk_oauth_access_token;
       public            postgres    false    486            t           2606    18062 ,   oauth_client_details pk_oauth_client_details 
   CONSTRAINT     q   ALTER TABLE ONLY public.oauth_client_details
    ADD CONSTRAINT pk_oauth_client_details PRIMARY KEY (client_id);
 V   ALTER TABLE ONLY public.oauth_client_details DROP CONSTRAINT pk_oauth_client_details;
       public            postgres    false    487            v           2606    18070 (   oauth_client_token pk_oauth_client_token 
   CONSTRAINT     u   ALTER TABLE ONLY public.oauth_client_token
    ADD CONSTRAINT pk_oauth_client_token PRIMARY KEY (authentication_id);
 R   ALTER TABLE ONLY public.oauth_client_token DROP CONSTRAINT pk_oauth_client_token;
       public            postgres    false    488            �           2606    18774 &   passenger_request pk_passenger_request 
   CONSTRAINT     d   ALTER TABLE ONLY public.passenger_request
    ADD CONSTRAINT pk_passenger_request PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.passenger_request DROP CONSTRAINT pk_passenger_request;
       public            postgres    false    515            �           2606    17372    play_events pk_play_events 
   CONSTRAINT     X   ALTER TABLE ONLY public.play_events
    ADD CONSTRAINT pk_play_events PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.play_events DROP CONSTRAINT pk_play_events;
       public            postgres    false    352            �           2606    17383 (   play_events_images pk_play_events_images 
   CONSTRAINT     f   ALTER TABLE ONLY public.play_events_images
    ADD CONSTRAINT pk_play_events_images PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.play_events_images DROP CONSTRAINT pk_play_events_images;
       public            postgres    false    354            �           2606    17394 ,   play_user_join_event pk_play_user_join_event 
   CONSTRAINT     j   ALTER TABLE ONLY public.play_user_join_event
    ADD CONSTRAINT pk_play_user_join_event PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.play_user_join_event DROP CONSTRAINT pk_play_user_join_event;
       public            postgres    false    356            @           2606    17789    pool_car pk_pool_car 
   CONSTRAINT     _   ALTER TABLE ONLY public.pool_car
    ADD CONSTRAINT pk_pool_car PRIMARY KEY (id, vehichle_id);
 >   ALTER TABLE ONLY public.pool_car DROP CONSTRAINT pk_pool_car;
       public            postgres    false    436    436            �           2606    17076    pool_report pk_pool_report 
   CONSTRAINT     X   ALTER TABLE ONLY public.pool_report
    ADD CONSTRAINT pk_pool_report PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.pool_report DROP CONSTRAINT pk_pool_report;
       public            postgres    false    286            B           2606    17800    pool_route pk_pool_route 
   CONSTRAINT     V   ALTER TABLE ONLY public.pool_route
    ADD CONSTRAINT pk_pool_route PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pool_route DROP CONSTRAINT pk_pool_route;
       public            postgres    false    438            D           2606    17811    pool_station pk_pool_station 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pool_station
    ADD CONSTRAINT pk_pool_station PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.pool_station DROP CONSTRAINT pk_pool_station;
       public            postgres    false    440            F           2606    17822 &   pool_station_time pk_pool_station_time 
   CONSTRAINT     d   ALTER TABLE ONLY public.pool_station_time
    ADD CONSTRAINT pk_pool_station_time PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pool_station_time DROP CONSTRAINT pk_pool_station_time;
       public            postgres    false    442            �           2606    19217 (   product_form_input pk_product_form_input 
   CONSTRAINT     f   ALTER TABLE ONLY public.product_form_input
    ADD CONSTRAINT pk_product_form_input PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product_form_input DROP CONSTRAINT pk_product_form_input;
       public            postgres    false    555            �           2606    19000 "   thaddr_district pk_thaddr_district 
   CONSTRAINT     `   ALTER TABLE ONLY public.thaddr_district
    ADD CONSTRAINT pk_thaddr_district PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.thaddr_district DROP CONSTRAINT pk_thaddr_district;
       public            postgres    false    534            �           2606    18989 "   thaddr_province pk_thaddr_province 
   CONSTRAINT     `   ALTER TABLE ONLY public.thaddr_province
    ADD CONSTRAINT pk_thaddr_province PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.thaddr_province DROP CONSTRAINT pk_thaddr_province;
       public            postgres    false    532            �           2606    19016 (   thaddr_subdistrict pk_thaddr_subdistrict 
   CONSTRAINT     f   ALTER TABLE ONLY public.thaddr_subdistrict
    ADD CONSTRAINT pk_thaddr_subdistrict PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.thaddr_subdistrict DROP CONSTRAINT pk_thaddr_subdistrict;
       public            postgres    false    536            �           2606    18847 ,   thaioil_coins_record pk_thaioil_coins_record 
   CONSTRAINT     j   ALTER TABLE ONLY public.thaioil_coins_record
    ADD CONSTRAINT pk_thaioil_coins_record PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.thaioil_coins_record DROP CONSTRAINT pk_thaioil_coins_record;
       public            postgres    false    519            �           2606    17459 4   top_coin_transaction_log pk_top_coin_transaction_log 
   CONSTRAINT     r   ALTER TABLE ONLY public.top_coin_transaction_log
    ADD CONSTRAINT pk_top_coin_transaction_log PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.top_coin_transaction_log DROP CONSTRAINT pk_top_coin_transaction_log;
       public            postgres    false    370            P           2606    17878 *   top_donate_activity pk_top_donate_activity 
   CONSTRAINT     h   ALTER TABLE ONLY public.top_donate_activity
    ADD CONSTRAINT pk_top_donate_activity PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.top_donate_activity DROP CONSTRAINT pk_top_donate_activity;
       public            postgres    false    452            z           2606    16828 "   top_donate_coin pk_top_donate_coin 
   CONSTRAINT     `   ALTER TABLE ONLY public.top_donate_coin
    ADD CONSTRAINT pk_top_donate_coin PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.top_donate_coin DROP CONSTRAINT pk_top_donate_coin;
       public            postgres    false    236            R           2606    17889 (   top_donate_comment pk_top_donate_comment 
   CONSTRAINT     f   ALTER TABLE ONLY public.top_donate_comment
    ADD CONSTRAINT pk_top_donate_comment PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.top_donate_comment DROP CONSTRAINT pk_top_donate_comment;
       public            postgres    false    454            T           2606    17900 .   top_donate_foundation pk_top_donate_foundation 
   CONSTRAINT     l   ALTER TABLE ONLY public.top_donate_foundation
    ADD CONSTRAINT pk_top_donate_foundation PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.top_donate_foundation DROP CONSTRAINT pk_top_donate_foundation;
       public            postgres    false    456            V           2606    17908 "   top_donate_like pk_top_donate_like 
   CONSTRAINT     `   ALTER TABLE ONLY public.top_donate_like
    ADD CONSTRAINT pk_top_donate_like PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.top_donate_like DROP CONSTRAINT pk_top_donate_like;
       public            postgres    false    458            X           2606    17919 "   top_donate_post pk_top_donate_post 
   CONSTRAINT     `   ALTER TABLE ONLY public.top_donate_post
    ADD CONSTRAINT pk_top_donate_post PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.top_donate_post DROP CONSTRAINT pk_top_donate_post;
       public            postgres    false    460            Z           2606    17930 ,   top_donate_sub_other pk_top_donate_sub_other 
   CONSTRAINT     j   ALTER TABLE ONLY public.top_donate_sub_other
    ADD CONSTRAINT pk_top_donate_sub_other PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.top_donate_sub_other DROP CONSTRAINT pk_top_donate_sub_other;
       public            postgres    false    462            \           2606    17941    topic_choice pk_topic_choice 
   CONSTRAINT     Z   ALTER TABLE ONLY public.topic_choice
    ADD CONSTRAINT pk_topic_choice PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.topic_choice DROP CONSTRAINT pk_topic_choice;
       public            postgres    false    464            �           2606    18940 &   user_app_shortcut pk_user_app_shortcut 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_app_shortcut
    ADD CONSTRAINT pk_user_app_shortcut PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.user_app_shortcut DROP CONSTRAINT pk_user_app_shortcut;
       public            postgres    false    528            ^           2606    19620    user_claim pk_user_claim 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_claim
    ADD CONSTRAINT pk_user_claim PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_claim DROP CONSTRAINT pk_user_claim;
       public            postgres    false    466            `           2606    17961    user_family pk_user_family 
   CONSTRAINT     X   ALTER TABLE ONLY public.user_family
    ADD CONSTRAINT pk_user_family PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.user_family DROP CONSTRAINT pk_user_family;
       public            postgres    false    468            d           2606    17980 2   user_first_join_odyssey pk_user_first_join_odyssey 
   CONSTRAINT     p   ALTER TABLE ONLY public.user_first_join_odyssey
    ADD CONSTRAINT pk_user_first_join_odyssey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.user_first_join_odyssey DROP CONSTRAINT pk_user_first_join_odyssey;
       public            postgres    false    472            �           2606    19607    user_prefix pk_user_prefix 
   CONSTRAINT     X   ALTER TABLE ONLY public.user_prefix
    ADD CONSTRAINT pk_user_prefix PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.user_prefix DROP CONSTRAINT pk_user_prefix;
       public            postgres    false    575            �           2606    19233 &   user_product_info pk_user_product_info 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_product_info
    ADD CONSTRAINT pk_user_product_info PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.user_product_info DROP CONSTRAINT pk_user_product_info;
       public            postgres    false    557            h           2606    18011 $   user_third_party pk_user_third_party 
   CONSTRAINT     b   ALTER TABLE ONLY public.user_third_party
    ADD CONSTRAINT pk_user_third_party PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.user_third_party DROP CONSTRAINT pk_user_third_party;
       public            postgres    false    478            |           2606    16836 B   well_being_coin_transaction_log pk_well_being_coin_transaction_log 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_coin_transaction_log
    ADD CONSTRAINT pk_well_being_coin_transaction_log PRIMARY KEY (coin_transaction_log_id);
 l   ALTER TABLE ONLY public.well_being_coin_transaction_log DROP CONSTRAINT pk_well_being_coin_transaction_log;
       public            postgres    false    238            �           2606    17033 *   well_being_donation pk_well_being_donation 
   CONSTRAINT     q   ALTER TABLE ONLY public.well_being_donation
    ADD CONSTRAINT pk_well_being_donation PRIMARY KEY (donation_id);
 T   ALTER TABLE ONLY public.well_being_donation DROP CONSTRAINT pk_well_being_donation;
       public            postgres    false    278            �           2606    17044 6   well_being_donation_image pk_well_being_donation_image 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_donation_image
    ADD CONSTRAINT pk_well_being_donation_image PRIMARY KEY (donation_image_id);
 `   ALTER TABLE ONLY public.well_being_donation_image DROP CONSTRAINT pk_well_being_donation_image;
       public            postgres    false    280            �           2606    17052 6   well_being_donation_thank pk_well_being_donation_thank 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_donation_thank
    ADD CONSTRAINT pk_well_being_donation_thank PRIMARY KEY (donation_thank_id);
 `   ALTER TABLE ONLY public.well_being_donation_thank DROP CONSTRAINT pk_well_being_donation_thank;
       public            postgres    false    282            �           2606    17111 @   well_being_event_team_register pk_well_being_event_team_register 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_event_team_register
    ADD CONSTRAINT pk_well_being_event_team_register PRIMARY KEY (event_team_register_id);
 j   ALTER TABLE ONLY public.well_being_event_team_register DROP CONSTRAINT pk_well_being_event_team_register;
       public            postgres    false    294            �           2606    17119 .   well_being_event_type pk_well_being_event_type 
   CONSTRAINT     w   ALTER TABLE ONLY public.well_being_event_type
    ADD CONSTRAINT pk_well_being_event_type PRIMARY KEY (event_type_id);
 X   ALTER TABLE ONLY public.well_being_event_type DROP CONSTRAINT pk_well_being_event_type;
       public            postgres    false    296            �           2606    17127 @   well_being_event_user_register pk_well_being_event_user_register 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_event_user_register
    ADD CONSTRAINT pk_well_being_event_user_register PRIMARY KEY (event_user_register_id);
 j   ALTER TABLE ONLY public.well_being_event_user_register DROP CONSTRAINT pk_well_being_event_user_register;
       public            postgres    false    298            �           2606    17065 &   well_being_events pk_well_being_events 
   CONSTRAINT     j   ALTER TABLE ONLY public.well_being_events
    ADD CONSTRAINT pk_well_being_events PRIMARY KEY (event_id);
 P   ALTER TABLE ONLY public.well_being_events DROP CONSTRAINT pk_well_being_events;
       public            postgres    false    284            �           2606    17135 6   well_being_exercise_types pk_well_being_exercise_types 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_exercise_types
    ADD CONSTRAINT pk_well_being_exercise_types PRIMARY KEY (exercise_type_id);
 `   ALTER TABLE ONLY public.well_being_exercise_types DROP CONSTRAINT pk_well_being_exercise_types;
       public            postgres    false    300            �           2606    17181 ,   well_being_feedbacks pk_well_being_feedbacks 
   CONSTRAINT     s   ALTER TABLE ONLY public.well_being_feedbacks
    ADD CONSTRAINT pk_well_being_feedbacks PRIMARY KEY (feedback_id);
 V   ALTER TABLE ONLY public.well_being_feedbacks DROP CONSTRAINT pk_well_being_feedbacks;
       public            postgres    false    310                       2606    17549 &   well_being_follow pk_well_being_follow 
   CONSTRAINT     k   ALTER TABLE ONLY public.well_being_follow
    ADD CONSTRAINT pk_well_being_follow PRIMARY KEY (follow_id);
 P   ALTER TABLE ONLY public.well_being_follow DROP CONSTRAINT pk_well_being_follow;
       public            postgres    false    390                       2606    17560 $   well_being_goals pk_well_being_goals 
   CONSTRAINT     g   ALTER TABLE ONLY public.well_being_goals
    ADD CONSTRAINT pk_well_being_goals PRIMARY KEY (goal_id);
 N   ALTER TABLE ONLY public.well_being_goals DROP CONSTRAINT pk_well_being_goals;
       public            postgres    false    392                       2606    17533 .   well_being_health_tip pk_well_being_health_tip 
   CONSTRAINT     w   ALTER TABLE ONLY public.well_being_health_tip
    ADD CONSTRAINT pk_well_being_health_tip PRIMARY KEY (health_tip_id);
 X   ALTER TABLE ONLY public.well_being_health_tip DROP CONSTRAINT pk_well_being_health_tip;
       public            postgres    false    386                       2606    17568 $   well_being_likes pk_well_being_likes 
   CONSTRAINT     g   ALTER TABLE ONLY public.well_being_likes
    ADD CONSTRAINT pk_well_being_likes PRIMARY KEY (like_id);
 N   ALTER TABLE ONLY public.well_being_likes DROP CONSTRAINT pk_well_being_likes;
       public            postgres    false    394            n           2606    18038 2   well_being_notification pk_well_being_notification 
   CONSTRAINT     }   ALTER TABLE ONLY public.well_being_notification
    ADD CONSTRAINT pk_well_being_notification PRIMARY KEY (notification_id);
 \   ALTER TABLE ONLY public.well_being_notification DROP CONSTRAINT pk_well_being_notification;
       public            postgres    false    484                       2606    17579 4   well_being_post_comments pk_well_being_post_comments 
   CONSTRAINT        ALTER TABLE ONLY public.well_being_post_comments
    ADD CONSTRAINT pk_well_being_post_comments PRIMARY KEY (post_comment_id);
 ^   ALTER TABLE ONLY public.well_being_post_comments DROP CONSTRAINT pk_well_being_post_comments;
       public            postgres    false    396                        2606    17617 :   well_being_post_news_detail pk_well_being_post_news_detail 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_post_news_detail
    ADD CONSTRAINT pk_well_being_post_news_detail PRIMARY KEY (post_news_detail_id);
 d   ALTER TABLE ONLY public.well_being_post_news_detail DROP CONSTRAINT pk_well_being_post_news_detail;
       public            postgres    false    404            "           2606    17628 F   well_being_post_news_detail_image pk_well_being_post_news_detail_image 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_post_news_detail_image
    ADD CONSTRAINT pk_well_being_post_news_detail_image PRIMARY KEY (post_news_detail_image_id);
 p   ALTER TABLE ONLY public.well_being_post_news_detail_image DROP CONSTRAINT pk_well_being_post_news_detail_image;
       public            postgres    false    406                       2606    17590 $   well_being_posts pk_well_being_posts 
   CONSTRAINT     g   ALTER TABLE ONLY public.well_being_posts
    ADD CONSTRAINT pk_well_being_posts PRIMARY KEY (post_id);
 N   ALTER TABLE ONLY public.well_being_posts DROP CONSTRAINT pk_well_being_posts;
       public            postgres    false    398            $           2606    17639 (   well_being_product pk_well_being_product 
   CONSTRAINT     n   ALTER TABLE ONLY public.well_being_product
    ADD CONSTRAINT pk_well_being_product PRIMARY KEY (product_id);
 R   ALTER TABLE ONLY public.well_being_product DROP CONSTRAINT pk_well_being_product;
       public            postgres    false    408            K           2606    16580 @   well_being_product_best_seller pk_well_being_product_best_seller 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_product_best_seller
    ADD CONSTRAINT pk_well_being_product_best_seller PRIMARY KEY (best_seller_id);
 j   ALTER TABLE ONLY public.well_being_product_best_seller DROP CONSTRAINT pk_well_being_product_best_seller;
       public            postgres    false    190                       2606    17541 :   well_being_product_delivery pk_well_being_product_delivery 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_product_delivery
    ADD CONSTRAINT pk_well_being_product_delivery PRIMARY KEY (product_delivery_id);
 d   ALTER TABLE ONLY public.well_being_product_delivery DROP CONSTRAINT pk_well_being_product_delivery;
       public            postgres    false    388            &           2606    17650 4   well_being_product_image pk_well_being_product_image 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_product_image
    ADD CONSTRAINT pk_well_being_product_image PRIMARY KEY (product_image_id);
 ^   ALTER TABLE ONLY public.well_being_product_image DROP CONSTRAINT pk_well_being_product_image;
       public            postgres    false    410            (           2606    17658 6   well_being_product_status pk_well_being_product_status 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_product_status
    ADD CONSTRAINT pk_well_being_product_status PRIMARY KEY (product_status_id);
 `   ALTER TABLE ONLY public.well_being_product_status DROP CONSTRAINT pk_well_being_product_status;
       public            postgres    false    412            *           2606    17667 2   well_being_product_type pk_well_being_product_type 
   CONSTRAINT     }   ALTER TABLE ONLY public.well_being_product_type
    ADD CONSTRAINT pk_well_being_product_type PRIMARY KEY (product_type_id);
 \   ALTER TABLE ONLY public.well_being_product_type DROP CONSTRAINT pk_well_being_product_type;
       public            postgres    false    414            x           2606    18078 2   well_being_team_members pk_well_being_team_members 
   CONSTRAINT     |   ALTER TABLE ONLY public.well_being_team_members
    ADD CONSTRAINT pk_well_being_team_members PRIMARY KEY (team_member_id);
 \   ALTER TABLE ONLY public.well_being_team_members DROP CONSTRAINT pk_well_being_team_members;
       public            postgres    false    490                       2606    17521 $   well_being_teams pk_well_being_teams 
   CONSTRAINT     g   ALTER TABLE ONLY public.well_being_teams
    ADD CONSTRAINT pk_well_being_teams PRIMARY KEY (team_id);
 N   ALTER TABLE ONLY public.well_being_teams DROP CONSTRAINT pk_well_being_teams;
       public            postgres    false    384            `           2606    16691 <   well_being_workout_histories pk_well_being_workout_histories 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_workout_histories
    ADD CONSTRAINT pk_well_being_workout_histories PRIMARY KEY (workout_history_id);
 f   ALTER TABLE ONLY public.well_being_workout_histories DROP CONSTRAINT pk_well_being_workout_histories;
       public            postgres    false    210                       2606    17598 T   well_being_workout_history_before_events pk_well_being_workout_history_before_events 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_workout_history_before_events
    ADD CONSTRAINT pk_well_being_workout_history_before_events PRIMARY KEY (workout_history_before_event_id);
 ~   ALTER TABLE ONLY public.well_being_workout_history_before_events DROP CONSTRAINT pk_well_being_workout_history_before_events;
       public            postgres    false    400                       2606    17606 F   well_being_workout_history_events pk_well_being_workout_history_events 
   CONSTRAINT     �   ALTER TABLE ONLY public.well_being_workout_history_events
    ADD CONSTRAINT pk_well_being_workout_history_events PRIMARY KEY (workout_history_event_id);
 p   ALTER TABLE ONLY public.well_being_workout_history_events DROP CONSTRAINT pk_well_being_workout_history_events;
       public            postgres    false    402            j           2606    18019 2   well_being_workout_sync pk_well_being_workout_sync 
   CONSTRAINT     p   ALTER TABLE ONLY public.well_being_workout_sync
    ADD CONSTRAINT pk_well_being_workout_sync PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.well_being_workout_sync DROP CONSTRAINT pk_well_being_workout_sync;
       public            postgres    false    480            5           2606    16479 2   z_databasechangeloglock pk_z_databasechangeloglock 
   CONSTRAINT     p   ALTER TABLE ONLY public.z_databasechangeloglock
    ADD CONSTRAINT pk_z_databasechangeloglock PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.z_databasechangeloglock DROP CONSTRAINT pk_z_databasechangeloglock;
       public            postgres    false    169            �           2606    17402 0   point_transaction_log point_transaction_log_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.point_transaction_log
    ADD CONSTRAINT point_transaction_log_pkey PRIMARY KEY (log_id);
 Z   ALTER TABLE ONLY public.point_transaction_log DROP CONSTRAINT point_transaction_log_pkey;
       public            postgres    false    358            J           2606    17844 &   product_category product_category_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.product_category DROP CONSTRAINT product_category_pkey;
       public            postgres    false    446            L           2606    17855     product_image product_image_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_image
    ADD CONSTRAINT product_image_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_image_pkey;
       public            postgres    false    448            H           2606    17833    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    444            N           2606    17866 "   product_serial product_serial_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_serial
    ADD CONSTRAINT product_serial_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_serial DROP CONSTRAINT product_serial_pkey;
       public            postgres    false    450            �           2606    17410    readed readed_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.readed
    ADD CONSTRAINT readed_pkey PRIMARY KEY (readed_id);
 <   ALTER TABLE ONLY public.readed DROP CONSTRAINT readed_pkey;
       public            postgres    false    360            �           2606    19105 :   relative_benefits_category relative_benefits_category_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.relative_benefits_category
    ADD CONSTRAINT relative_benefits_category_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.relative_benefits_category DROP CONSTRAINT relative_benefits_category_pkey;
       public            postgres    false    545            �           2606    19381 >   relative_benefits_choice_tag relative_benefits_choice_tag_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.relative_benefits_choice_tag
    ADD CONSTRAINT relative_benefits_choice_tag_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.relative_benefits_choice_tag DROP CONSTRAINT relative_benefits_choice_tag_pkey;
       public            postgres    false    567            �           2606    19190 8   relative_benefits_choices relative_benefits_choices_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.relative_benefits_choices
    ADD CONSTRAINT relative_benefits_choices_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.relative_benefits_choices DROP CONSTRAINT relative_benefits_choices_pkey;
       public            postgres    false    551            �           2606    19094 (   relative_benefits relative_benefits_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.relative_benefits
    ADD CONSTRAINT relative_benefits_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.relative_benefits DROP CONSTRAINT relative_benefits_pkey;
       public            postgres    false    543            �           2606    19262    relative relative_id 
   CONSTRAINT     R   ALTER TABLE ONLY public.relative
    ADD CONSTRAINT relative_id PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.relative DROP CONSTRAINT relative_id;
       public            postgres    false    561            �           2606    19425 8   relative_selected_choices relative_selected_choices_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.relative_selected_choices
    ADD CONSTRAINT relative_selected_choices_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.relative_selected_choices DROP CONSTRAINT relative_selected_choices_pkey;
       public            postgres    false    571            �           2606    19251    relative_type relative_type_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.relative_type
    ADD CONSTRAINT relative_type_id PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.relative_type DROP CONSTRAINT relative_type_id;
       public            postgres    false    559                       2606    17483 "   request_status request_status_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.request_status
    ADD CONSTRAINT request_status_pkey PRIMARY KEY (status_id);
 L   ALTER TABLE ONLY public.request_status DROP CONSTRAINT request_status_pkey;
       public            postgres    false    376                       2606    17491    requests requests_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_pkey PRIMARY KEY (request_id);
 @   ALTER TABLE ONLY public.requests DROP CONSTRAINT requests_pkey;
       public            postgres    false    378            h           2606    16734 (   reward_categories reward_categories_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.reward_categories
    ADD CONSTRAINT reward_categories_pkey PRIMARY KEY (category_id);
 R   ALTER TABLE ONLY public.reward_categories DROP CONSTRAINT reward_categories_pkey;
       public            postgres    false    218            �           2606    17429 .   reward_category_list reward_category_list_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.reward_category_list
    ADD CONSTRAINT reward_category_list_pkey PRIMARY KEY (reward_category_list_id);
 X   ALTER TABLE ONLY public.reward_category_list DROP CONSTRAINT reward_category_list_pkey;
       public            postgres    false    364            �           2606    17448     reward_images reward_images_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.reward_images
    ADD CONSTRAINT reward_images_pkey PRIMARY KEY (reward_images_id);
 J   ALTER TABLE ONLY public.reward_images DROP CONSTRAINT reward_images_pkey;
       public            postgres    false    368            �           2606    17440    rewards rewards_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.rewards
    ADD CONSTRAINT rewards_pkey PRIMARY KEY (reward_id);
 >   ALTER TABLE ONLY public.rewards DROP CONSTRAINT rewards_pkey;
       public            postgres    false    366            �           2606    17213    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    318            �           2606    19081 2   self_benefits_category self_benefits_category_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.self_benefits_category
    ADD CONSTRAINT self_benefits_category_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.self_benefits_category DROP CONSTRAINT self_benefits_category_pkey;
       public            postgres    false    542            �           2606    19360 6   self_benefits_choice_tag self_benefits_choice_tag_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.self_benefits_choice_tag
    ADD CONSTRAINT self_benefits_choice_tag_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.self_benefits_choice_tag DROP CONSTRAINT self_benefits_choice_tag_pkey;
       public            postgres    false    565            �           2606    19174 0   self_benefits_choices self_benefits_choices_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.self_benefits_choices
    ADD CONSTRAINT self_benefits_choices_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.self_benefits_choices DROP CONSTRAINT self_benefits_choices_pkey;
       public            postgres    false    549            �           2606    19070     self_benefits self_benefits_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.self_benefits
    ADD CONSTRAINT self_benefits_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.self_benefits DROP CONSTRAINT self_benefits_pkey;
       public            postgres    false    540            �           2606    18714    shop_banner shop_banner_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.shop_banner
    ADD CONSTRAINT shop_banner_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.shop_banner DROP CONSTRAINT shop_banner_pkey;
       public            postgres    false    507            �           2606    19286    tag tag_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_pkey;
       public            postgres    false    563            �           2606    17234     thread_images thread_images_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.thread_images
    ADD CONSTRAINT thread_images_pkey PRIMARY KEY (thread_images_id);
 J   ALTER TABLE ONLY public.thread_images DROP CONSTRAINT thread_images_pkey;
       public            postgres    false    322            �           2606    18954    user_address user_address_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_address
    ADD CONSTRAINT user_address_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_address DROP CONSTRAINT user_address_pkey;
       public            postgres    false    530                        2606    17467    user_choice user_choice_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_choice
    ADD CONSTRAINT user_choice_pkey PRIMARY KEY (user_choice_id);
 F   ALTER TABLE ONLY public.user_choice DROP CONSTRAINT user_choice_pkey;
       public            postgres    false    372                       2606    17475 &   user_departments user_departments_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.user_departments
    ADD CONSTRAINT user_departments_pkey PRIMARY KEY (user_departments_id);
 P   ALTER TABLE ONLY public.user_departments DROP CONSTRAINT user_departments_pkey;
       public            postgres    false    374            b           2606    17972 J   user_family_insurance_topic_choice user_family_insurance_topic_choice_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.user_family_insurance_topic_choice
    ADD CONSTRAINT user_family_insurance_topic_choice_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.user_family_insurance_topic_choice DROP CONSTRAINT user_family_insurance_topic_choice_pkey;
       public            postgres    false    470            f           2606    17991 <   user_insurance_topic_choice user_insurance_topic_choice_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.user_insurance_topic_choice
    ADD CONSTRAINT user_insurance_topic_choice_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.user_insurance_topic_choice DROP CONSTRAINT user_insurance_topic_choice_pkey;
       public            postgres    false    474            �           2606    18682 &   user_msal_tokens user_msal_tokens_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.user_msal_tokens
    ADD CONSTRAINT user_msal_tokens_pkey PRIMARY KEY (token_id);
 P   ALTER TABLE ONLY public.user_msal_tokens DROP CONSTRAINT user_msal_tokens_pkey;
       public            postgres    false    505            �           2606    18663    user_product user_product_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_product
    ADD CONSTRAINT user_product_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_product DROP CONSTRAINT user_product_pkey;
       public            postgres    false    501                       2606    17499    user_roles user_roles_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_roles_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    380            �           2606    19403 0   user_selected_choices user_selected_choices_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_selected_choices
    ADD CONSTRAINT user_selected_choices_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.user_selected_choices DROP CONSTRAINT user_selected_choices_pkey;
       public            postgres    false    569            �           2606    19631    user_tags user_tags_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_tags
    ADD CONSTRAINT user_tags_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_tags DROP CONSTRAINT user_tags_pkey;
       public            postgres    false    579            
           2606    17510    user_tokens user_tokens_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.user_tokens
    ADD CONSTRAINT user_tokens_pkey PRIMARY KEY (token_id);
 F   ALTER TABLE ONLY public.user_tokens DROP CONSTRAINT user_tokens_pkey;
       public            postgres    false    382            �           2606    17226    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    320            �           2606    19565 <   users_pre_selected_claims users_pre_selected_claims_tag_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.users_pre_selected_claims
    ADD CONSTRAINT users_pre_selected_claims_tag_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.users_pre_selected_claims DROP CONSTRAINT users_pre_selected_claims_tag_pkey;
       public            postgres    false    573            z           2606    18086    visited visited_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.visited
    ADD CONSTRAINT visited_pkey PRIMARY KEY (visited_id);
 >   ALTER TABLE ONLY public.visited DROP CONSTRAINT visited_pkey;
       public            postgres    false    492            \           1259    18114    fki_type_id    INDEX     J   CREATE INDEX fki_type_id ON public.calendar_events USING btree (type_id);
    DROP INDEX public.fki_type_id;
       public            postgres    false    206            �           2606    18087 A   access_control_list fk_access_control_list_access_control_items_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.access_control_list
    ADD CONSTRAINT fk_access_control_list_access_control_items_1 FOREIGN KEY (access_control_item_id) REFERENCES public.access_control_items(access_control_item_id);
 k   ALTER TABLE ONLY public.access_control_list DROP CONSTRAINT fk_access_control_list_access_control_items_1;
       public          postgres    false    4407    174    172            �           2606    18484 2   access_control_list fk_access_control_list_roles_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.access_control_list
    ADD CONSTRAINT fk_access_control_list_roles_1 FOREIGN KEY (role_id) REFERENCES public.roles(role_id);
 \   ALTER TABLE ONLY public.access_control_list DROP CONSTRAINT fk_access_control_list_roles_1;
       public          postgres    false    4554    174    318            �           2606    18092 7   auth_role_authority fk_auth_role_authority_authority_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_role_authority
    ADD CONSTRAINT fk_auth_role_authority_authority_id FOREIGN KEY (authority_id) REFERENCES public.auth_authority(id);
 a   ALTER TABLE ONLY public.auth_role_authority DROP CONSTRAINT fk_auth_role_authority_authority_id;
       public          postgres    false    4415    182    180            �           2606    18499 2   auth_role_authority fk_auth_role_authority_role_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_role_authority
    ADD CONSTRAINT fk_auth_role_authority_role_id FOREIGN KEY (role_id) REFERENCES public.auth_role(id);
 \   ALTER TABLE ONLY public.auth_role_authority DROP CONSTRAINT fk_auth_role_authority_role_id;
       public          postgres    false    184    4419    182            �           2606    18099 (   auth_user_role fk_auth_user_role_role_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_role
    ADD CONSTRAINT fk_auth_user_role_role_id FOREIGN KEY (role_id) REFERENCES public.auth_role(id);
 R   ALTER TABLE ONLY public.auth_user_role DROP CONSTRAINT fk_auth_user_role_role_id;
       public          postgres    false    4419    184    188            �           2606    18104 (   auth_user_role fk_auth_user_role_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_role
    ADD CONSTRAINT fk_auth_user_role_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id);
 R   ALTER TABLE ONLY public.auth_user_role DROP CONSTRAINT fk_auth_user_role_user_id;
       public          postgres    false    186    188    4423            @           2606    18737 *   car_information fk_car_information_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_information
    ADD CONSTRAINT fk_car_information_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id);
 T   ALTER TABLE ONLY public.car_information DROP CONSTRAINT fk_car_information_user_id;
       public          postgres    false    511    4423    186            �           2606    18504 *   calendar_events fk_carlendar_event_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.calendar_events
    ADD CONSTRAINT fk_carlendar_event_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 T   ALTER TABLE ONLY public.calendar_events DROP CONSTRAINT fk_carlendar_event_users_1;
       public          postgres    false    320    4556    206            �           2606    18135 "   club_albums fk_club_albums_clubs_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_albums
    ADD CONSTRAINT fk_club_albums_clubs_1 FOREIGN KEY (club_id) REFERENCES public.clubs(club_id);
 L   ALTER TABLE ONLY public.club_albums DROP CONSTRAINT fk_club_albums_clubs_1;
       public          postgres    false    228    4470    232            �           2606    18130 )   club_albums fk_club_albums_image_albums_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_albums
    ADD CONSTRAINT fk_club_albums_image_albums_1 FOREIGN KEY (album_id) REFERENCES public.image_albums(album_id);
 S   ALTER TABLE ONLY public.club_albums DROP CONSTRAINT fk_club_albums_image_albums_1;
       public          postgres    false    176    4411    228            �           2606    18145 -   club_comments fk_club_comments_club_threads_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_comments
    ADD CONSTRAINT fk_club_comments_club_threads_1 FOREIGN KEY (thread_id) REFERENCES public.club_threads(thread_id);
 W   ALTER TABLE ONLY public.club_comments DROP CONSTRAINT fk_club_comments_club_threads_1;
       public          postgres    false    230    4472    234            �           2606    18509 &   club_comments fk_club_comments_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_comments
    ADD CONSTRAINT fk_club_comments_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 P   ALTER TABLE ONLY public.club_comments DROP CONSTRAINT fk_club_comments_users_1;
       public          postgres    false    320    4556    230                       2606    18150 +   thread_images fk_club_images_club_threads_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.thread_images
    ADD CONSTRAINT fk_club_images_club_threads_1 FOREIGN KEY (thread_id) REFERENCES public.club_threads(thread_id);
 U   ALTER TABLE ONLY public.thread_images DROP CONSTRAINT fk_club_images_club_threads_1;
       public          postgres    false    4472    322    234                       2606    18614 %   thread_images fk_club_images_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.thread_images
    ADD CONSTRAINT fk_club_images_images_1 FOREIGN KEY (image_id) REFERENCES public.images(image_id);
 O   ALTER TABLE ONLY public.thread_images DROP CONSTRAINT fk_club_images_images_1;
       public          postgres    false    4560    322    324            �           2606    18140 $   club_threads fk_club_threads_clubs_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_threads
    ADD CONSTRAINT fk_club_threads_clubs_1 FOREIGN KEY (club_id) REFERENCES public.clubs(club_id);
 N   ALTER TABLE ONLY public.club_threads DROP CONSTRAINT fk_club_threads_clubs_1;
       public          postgres    false    234    4470    232            �           2606    18519 %   club_threads fk_club_threads_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_threads
    ADD CONSTRAINT fk_club_threads_images_1 FOREIGN KEY (thumbnail_image_id) REFERENCES public.images(image_id) ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.club_threads DROP CONSTRAINT fk_club_threads_images_1;
       public          postgres    false    234    4560    324            �           2606    18524 $   club_threads fk_club_threads_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_threads
    ADD CONSTRAINT fk_club_threads_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 N   ALTER TABLE ONLY public.club_threads DROP CONSTRAINT fk_club_threads_users_1;
       public          postgres    false    234    320    4556            �           2606    18514    clubs fk_clubs_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.clubs
    ADD CONSTRAINT fk_clubs_images_1 FOREIGN KEY (thumbnail_image_id) REFERENCES public.images(image_id) ON DELETE SET NULL;
 A   ALTER TABLE ONLY public.clubs DROP CONSTRAINT fk_clubs_images_1;
       public          postgres    false    4560    232    324            �           2606    18171 .   content_comments fk_content_comment_contents_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_comments
    ADD CONSTRAINT fk_content_comment_contents_1 FOREIGN KEY (content_id) REFERENCES public.contents(content_id);
 X   ALTER TABLE ONLY public.content_comments DROP CONSTRAINT fk_content_comment_contents_1;
       public          postgres    false    252    240    4488            �           2606    18529 +   content_comments fk_content_comment_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_comments
    ADD CONSTRAINT fk_content_comment_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 U   ALTER TABLE ONLY public.content_comments DROP CONSTRAINT fk_content_comment_users_1;
       public          postgres    false    240    320    4556            �           2606    18176 )   content_files fk_content_files_contents_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_files
    ADD CONSTRAINT fk_content_files_contents_1 FOREIGN KEY (content_id) REFERENCES public.contents(content_id);
 S   ALTER TABLE ONLY public.content_files DROP CONSTRAINT fk_content_files_contents_1;
       public          postgres    false    252    250    4488            �           2606    18181 +   content_images fk_content_images_contents_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_images
    ADD CONSTRAINT fk_content_images_contents_1 FOREIGN KEY (content_id) REFERENCES public.contents(content_id);
 U   ALTER TABLE ONLY public.content_images DROP CONSTRAINT fk_content_images_contents_1;
       public          postgres    false    4488    252    254            �           2606    18559 )   content_images fk_content_images_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.content_images
    ADD CONSTRAINT fk_content_images_images_1 FOREIGN KEY (image_id) REFERENCES public.images(image_id);
 S   ALTER TABLE ONLY public.content_images DROP CONSTRAINT fk_content_images_images_1;
       public          postgres    false    324    4560    254            �           2606    18549    contents fk_contents_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.contents
    ADD CONSTRAINT fk_contents_images_1 FOREIGN KEY (thumbnail_image_id) REFERENCES public.images(image_id) ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.contents DROP CONSTRAINT fk_contents_images_1;
       public          postgres    false    252    324    4560            �           2606    18554    contents fk_contents_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.contents
    ADD CONSTRAINT fk_contents_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 F   ALTER TABLE ONLY public.contents DROP CONSTRAINT fk_contents_users_1;
       public          postgres    false    4556    252    320            �           2606    18166 &   departments fk_departments_companies_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT fk_departments_companies_1 FOREIGN KEY (company_id) REFERENCES public.companies(company_id);
 P   ALTER TABLE ONLY public.departments DROP CONSTRAINT fk_departments_companies_1;
       public          postgres    false    4484    256    246            �           2606    18186 (   departments fk_departments_departments_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT fk_departments_departments_1 FOREIGN KEY (parent_department) REFERENCES public.departments(department_id);
 R   ALTER TABLE ONLY public.departments DROP CONSTRAINT fk_departments_departments_1;
       public          postgres    false    256    256    4492            �           2606    18564 N   digital_news_product_delivery fk_digital_news_product_status_product_status_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.digital_news_product_delivery
    ADD CONSTRAINT fk_digital_news_product_status_product_status_id FOREIGN KEY (product_status_id) REFERENCES public.digital_news_product_status(product_status_id);
 x   ALTER TABLE ONLY public.digital_news_product_delivery DROP CONSTRAINT fk_digital_news_product_status_product_status_id;
       public          postgres    false    268    4504    266            A           2606    18753 #   drive_master fk_drive_master_car_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.drive_master
    ADD CONSTRAINT fk_drive_master_car_id FOREIGN KEY (car_id) REFERENCES public.car_information(id);
 M   ALTER TABLE ONLY public.drive_master DROP CONSTRAINT fk_drive_master_car_id;
       public          postgres    false    4746    513    511            B           2606    18758 $   drive_master fk_drive_master_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.drive_master
    ADD CONSTRAINT fk_drive_master_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id);
 N   ALTER TABLE ONLY public.drive_master DROP CONSTRAINT fk_drive_master_user_id;
       public          postgres    false    4423    513    186            �           2606    18109 8   event_departments fk_event_departments_carlendar_event_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_departments
    ADD CONSTRAINT fk_event_departments_carlendar_event_1 FOREIGN KEY (event_id) REFERENCES public.calendar_events(event_id);
 b   ALTER TABLE ONLY public.event_departments DROP CONSTRAINT fk_event_departments_carlendar_event_1;
       public          postgres    false    206    4443    290            �           2606    18191 4   event_departments fk_event_departments_departments_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_departments
    ADD CONSTRAINT fk_event_departments_departments_1 FOREIGN KEY (department_id) REFERENCES public.departments(department_id);
 ^   ALTER TABLE ONLY public.event_departments DROP CONSTRAINT fk_event_departments_departments_1;
       public          postgres    false    290    256    4492            �           2606    18579 )   event_registers fk_event_registers_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_registers
    ADD CONSTRAINT fk_event_registers_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 S   ALTER TABLE ONLY public.event_registers DROP CONSTRAINT fk_event_registers_news_1;
       public          postgres    false    4562    292    326            �           2606    18584 *   event_registers fk_event_registers_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_registers
    ADD CONSTRAINT fk_event_registers_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 T   ALTER TABLE ONLY public.event_registers DROP CONSTRAINT fk_event_registers_users_1;
       public          postgres    false    320    4556    292            �           2606    18115 V   feedback_category_control_list fk_feedback_category_control_list_feedback_categories_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback_category_control_list
    ADD CONSTRAINT fk_feedback_category_control_list_feedback_categories_1 FOREIGN KEY (category_id) REFERENCES public.feedback_categories(category_id);
 �   ALTER TABLE ONLY public.feedback_category_control_list DROP CONSTRAINT fk_feedback_category_control_list_feedback_categories_1;
       public          postgres    false    4452    214    304                        2606    18594 H   feedback_category_control_list fk_feedback_category_control_list_roles_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback_category_control_list
    ADD CONSTRAINT fk_feedback_category_control_list_roles_1 FOREIGN KEY (role_id) REFERENCES public.roles(role_id);
 r   ALTER TABLE ONLY public.feedback_category_control_list DROP CONSTRAINT fk_feedback_category_control_list_roles_1;
       public          postgres    false    304    4554    318            �           2606    18221 2   feedback_comments fk_feedback_comments_feedbacks_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback_comments
    ADD CONSTRAINT fk_feedback_comments_feedbacks_1 FOREIGN KEY (feedback_id) REFERENCES public.feedbacks(feedback_id);
 \   ALTER TABLE ONLY public.feedback_comments DROP CONSTRAINT fk_feedback_comments_feedbacks_1;
       public          postgres    false    4544    308    242            �           2606    18534 .   feedback_comments fk_feedback_comments_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback_comments
    ADD CONSTRAINT fk_feedback_comments_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 X   ALTER TABLE ONLY public.feedback_comments DROP CONSTRAINT fk_feedback_comments_users_1;
       public          postgres    false    242    320    4556                       2606    18236 <   feedback_event_logs fk_feedback_event_logs_feedback_status_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback_event_logs
    ADD CONSTRAINT fk_feedback_event_logs_feedback_status_1 FOREIGN KEY (status_id) REFERENCES public.feedback_status(status_id);
 f   ALTER TABLE ONLY public.feedback_event_logs DROP CONSTRAINT fk_feedback_event_logs_feedback_status_1;
       public          postgres    false    314    306    4550                       2606    18226 6   feedback_event_logs fk_feedback_event_logs_feedbacks_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback_event_logs
    ADD CONSTRAINT fk_feedback_event_logs_feedbacks_1 FOREIGN KEY (feedback_id) REFERENCES public.feedbacks(feedback_id);
 `   ALTER TABLE ONLY public.feedback_event_logs DROP CONSTRAINT fk_feedback_event_logs_feedbacks_1;
       public          postgres    false    308    306    4544                       2606    18211 4   feedback_event_logs fk_feedback_event_logs_systems_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback_event_logs
    ADD CONSTRAINT fk_feedback_event_logs_systems_1 FOREIGN KEY (system_id) REFERENCES public.external_systems(system_id);
 ^   ALTER TABLE ONLY public.feedback_event_logs DROP CONSTRAINT fk_feedback_event_logs_systems_1;
       public          postgres    false    306    4538    302                       2606    18599 2   feedback_event_logs fk_feedback_event_logs_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback_event_logs
    ADD CONSTRAINT fk_feedback_event_logs_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 \   ALTER TABLE ONLY public.feedback_event_logs DROP CONSTRAINT fk_feedback_event_logs_users_1;
       public          postgres    false    4556    306    320            	           2606    18231 .   feedback_images fk_feedback_images_feedbacks_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback_images
    ADD CONSTRAINT fk_feedback_images_feedbacks_1 FOREIGN KEY (feedback_id) REFERENCES public.feedbacks(feedback_id);
 X   ALTER TABLE ONLY public.feedback_images DROP CONSTRAINT fk_feedback_images_feedbacks_1;
       public          postgres    false    308    4544    312                       2606    18120 ,   feedbacks fk_feedbacks_feedback_categories_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT fk_feedbacks_feedback_categories_1 FOREIGN KEY (category_id) REFERENCES public.feedback_categories(category_id);
 V   ALTER TABLE ONLY public.feedbacks DROP CONSTRAINT fk_feedbacks_feedback_categories_1;
       public          postgres    false    214    308    4452                       2606    18241 (   feedbacks fk_feedbacks_feedback_status_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT fk_feedbacks_feedback_status_1 FOREIGN KEY (status_id) REFERENCES public.feedback_status(status_id);
 R   ALTER TABLE ONLY public.feedbacks DROP CONSTRAINT fk_feedbacks_feedback_status_1;
       public          postgres    false    314    4550    308                       2606    18216     feedbacks fk_feedbacks_systems_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT fk_feedbacks_systems_1 FOREIGN KEY (system_id) REFERENCES public.external_systems(system_id);
 J   ALTER TABLE ONLY public.feedbacks DROP CONSTRAINT fk_feedbacks_systems_1;
       public          postgres    false    4538    302    308                       2606    18604    feedbacks fk_feedbacks_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT fk_feedbacks_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 H   ALTER TABLE ONLY public.feedbacks DROP CONSTRAINT fk_feedbacks_users_1;
       public          postgres    false    4556    320    308            �           2606    18489 %   image_albums fk_image_albums_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image_albums
    ADD CONSTRAINT fk_image_albums_images_1 FOREIGN KEY (cover_id) REFERENCES public.images(image_id) ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.image_albums DROP CONSTRAINT fk_image_albums_images_1;
       public          postgres    false    4560    324    176            �           2606    18494 $   image_albums fk_image_albums_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image_albums
    ADD CONSTRAINT fk_image_albums_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 N   ALTER TABLE ONLY public.image_albums DROP CONSTRAINT fk_image_albums_users_1;
       public          postgres    false    4556    176    320                       2606    18246    images fk_images_image_albums_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT fk_images_image_albums_1 FOREIGN KEY (album_id) REFERENCES public.image_albums(album_id);
 I   ALTER TABLE ONLY public.images DROP CONSTRAINT fk_images_image_albums_1;
       public          postgres    false    4411    324    176                       2606    18261 8   iris_subsidiaries fk_iris_manage_report_manage_report_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.iris_subsidiaries
    ADD CONSTRAINT fk_iris_manage_report_manage_report_id FOREIGN KEY (manage_report_id) REFERENCES public.iris_manage_report(id);
 b   ALTER TABLE ONLY public.iris_subsidiaries DROP CONSTRAINT fk_iris_manage_report_manage_report_id;
       public          postgres    false    4564    328    332            H           2606    19058 3   leave_benefits fk_leave_benefits_to_benefit_year_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.leave_benefits
    ADD CONSTRAINT fk_leave_benefits_to_benefit_year_id FOREIGN KEY (benefit_year_id) REFERENCES public.benefit_year(id);
 ]   ALTER TABLE ONLY public.leave_benefits DROP CONSTRAINT fk_leave_benefits_to_benefit_year_id;
       public          postgres    false    539    4772    537            M           2606    19156 ?   leave_benefits_user fk_leave_benefits_user_to_leave_benefits_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.leave_benefits_user
    ADD CONSTRAINT fk_leave_benefits_user_to_leave_benefits_id FOREIGN KEY (leave_benefits_id) REFERENCES public.leave_benefits(id);
 i   ALTER TABLE ONLY public.leave_benefits_user DROP CONSTRAINT fk_leave_benefits_user_to_leave_benefits_id;
       public          postgres    false    539    547    4774            L           2606    19151 6   leave_benefits_user fk_leave_benefits_user_to_users_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.leave_benefits_user
    ADD CONSTRAINT fk_leave_benefits_user_to_users_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 `   ALTER TABLE ONLY public.leave_benefits_user DROP CONSTRAINT fk_leave_benefits_user_to_users_id;
       public          postgres    false    320    4556    547                       2606    18271 /   news_category_list fk_news_category_list_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_category_list
    ADD CONSTRAINT fk_news_category_list_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 Y   ALTER TABLE ONLY public.news_category_list DROP CONSTRAINT fk_news_category_list_news_1;
       public          postgres    false    4562    326    334                       2606    18276 :   news_category_list fk_news_category_list_news_categories_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_category_list
    ADD CONSTRAINT fk_news_category_list_news_categories_1 FOREIGN KEY (category_id) REFERENCES public.news_categories(category_id);
 d   ALTER TABLE ONLY public.news_category_list DROP CONSTRAINT fk_news_category_list_news_categories_1;
       public          postgres    false    334    216    4454            �           2606    18539 %   news_comments fk_news_comments_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_comments
    ADD CONSTRAINT fk_news_comments_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 O   ALTER TABLE ONLY public.news_comments DROP CONSTRAINT fk_news_comments_news_1;
       public          postgres    false    244    326    4562            �           2606    18544 &   news_comments fk_news_comments_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_comments
    ADD CONSTRAINT fk_news_comments_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 P   ALTER TABLE ONLY public.news_comments DROP CONSTRAINT fk_news_comments_users_1;
       public          postgres    false    244    320    4556                       2606    18196 2   news_departments fk_news_departments_departments_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_departments
    ADD CONSTRAINT fk_news_departments_departments_1 FOREIGN KEY (department_id) REFERENCES public.departments(department_id);
 \   ALTER TABLE ONLY public.news_departments DROP CONSTRAINT fk_news_departments_departments_1;
       public          postgres    false    336    4492    256                       2606    18281 +   news_departments fk_news_departments_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_departments
    ADD CONSTRAINT fk_news_departments_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 U   ALTER TABLE ONLY public.news_departments DROP CONSTRAINT fk_news_departments_news_1;
       public          postgres    false    336    326    4562                       2606    18286 /   news_favorite_list fk_news_favorite_list_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_favorite_list
    ADD CONSTRAINT fk_news_favorite_list_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 Y   ALTER TABLE ONLY public.news_favorite_list DROP CONSTRAINT fk_news_favorite_list_news_1;
       public          postgres    false    326    4562    338                       2606    18291 0   news_favorite_list fk_news_favorite_list_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_favorite_list
    ADD CONSTRAINT fk_news_favorite_list_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 Z   ALTER TABLE ONLY public.news_favorite_list DROP CONSTRAINT fk_news_favorite_list_users_1;
       public          postgres    false    338    4556    320            
           2606    18609    news_files fk_news_files_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_files
    ADD CONSTRAINT fk_news_files_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 I   ALTER TABLE ONLY public.news_files DROP CONSTRAINT fk_news_files_news_1;
       public          postgres    false    326    316    4562                       2606    18296 B   news_groups_control_list fk_news_groups_control_list_news_groups_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_control_list
    ADD CONSTRAINT fk_news_groups_control_list_news_groups_1 FOREIGN KEY (group_id) REFERENCES public.news_groups(group_id);
 l   ALTER TABLE ONLY public.news_groups_control_list DROP CONSTRAINT fk_news_groups_control_list_news_groups_1;
       public          postgres    false    342    4576    340                       2606    18301 <   news_groups_control_list fk_news_groups_control_list_roles_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_control_list
    ADD CONSTRAINT fk_news_groups_control_list_roles_1 FOREIGN KEY (role_id) REFERENCES public.roles(role_id);
 f   ALTER TABLE ONLY public.news_groups_control_list DROP CONSTRAINT fk_news_groups_control_list_roles_1;
       public          postgres    false    318    342    4554                       2606    18201 G   news_groups_department_list fk_news_groups_department_list_department_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_department_list
    ADD CONSTRAINT fk_news_groups_department_list_department_1 FOREIGN KEY (department_id) REFERENCES public.departments(department_id);
 q   ALTER TABLE ONLY public.news_groups_department_list DROP CONSTRAINT fk_news_groups_department_list_department_1;
       public          postgres    false    4492    256    344                       2606    18306 H   news_groups_department_list fk_news_groups_department_list_news_groups_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_department_list
    ADD CONSTRAINT fk_news_groups_department_list_news_groups_1 FOREIGN KEY (group_id) REFERENCES public.news_groups(group_id);
 r   ALTER TABLE ONLY public.news_groups_department_list DROP CONSTRAINT fk_news_groups_department_list_news_groups_1;
       public          postgres    false    4576    340    344            >           2606    18319 +   news_groups_list fk_news_groups_list_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_list
    ADD CONSTRAINT fk_news_groups_list_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 U   ALTER TABLE ONLY public.news_groups_list DROP CONSTRAINT fk_news_groups_list_news_1;
       public          postgres    false    4562    496    326            ?           2606    18324 1   news_groups_list fk_news_groups_list_news_groups1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_list
    ADD CONSTRAINT fk_news_groups_list_news_groups1 FOREIGN KEY (group_id) REFERENCES public.news_groups(group_id);
 [   ALTER TABLE ONLY public.news_groups_list DROP CONSTRAINT fk_news_groups_list_news_groups1;
       public          postgres    false    496    340    4576                       2606    18329 <   news_groups_user_list fk_news_groups_user_list_news_groups_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_user_list
    ADD CONSTRAINT fk_news_groups_user_list_news_groups_1 FOREIGN KEY (group_id) REFERENCES public.news_groups(group_id);
 f   ALTER TABLE ONLY public.news_groups_user_list DROP CONSTRAINT fk_news_groups_user_list_news_groups_1;
       public          postgres    false    340    346    4576                       2606    18334 5   news_groups_user_list fk_news_groups_user_list_user_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_groups_user_list
    ADD CONSTRAINT fk_news_groups_user_list_user_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 _   ALTER TABLE ONLY public.news_groups_user_list DROP CONSTRAINT fk_news_groups_user_list_user_1;
       public          postgres    false    4556    346    320                       2606    18251    news fk_news_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT fk_news_images_1 FOREIGN KEY (thumbnail_image_id) REFERENCES public.images(image_id) ON DELETE SET NULL;
 ?   ALTER TABLE ONLY public.news DROP CONSTRAINT fk_news_images_1;
       public          postgres    false    326    324    4560                       2606    18339 #   news_images fk_news_images_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_images
    ADD CONSTRAINT fk_news_images_images_1 FOREIGN KEY (image_id) REFERENCES public.images(image_id);
 M   ALTER TABLE ONLY public.news_images DROP CONSTRAINT fk_news_images_images_1;
       public          postgres    false    4560    324    348                       2606    18344 !   news_images fk_news_images_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.news_images
    ADD CONSTRAINT fk_news_images_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 K   ALTER TABLE ONLY public.news_images DROP CONSTRAINT fk_news_images_news_1;
       public          postgres    false    348    326    4562                       2606    18256    news fk_news_users_1    FK CONSTRAINT     {   ALTER TABLE ONLY public.news
    ADD CONSTRAINT fk_news_users_1 FOREIGN KEY (creator_id) REFERENCES public.users(user_id);
 >   ALTER TABLE ONLY public.news DROP CONSTRAINT fk_news_users_1;
       public          postgres    false    320    326    4556                        2606    18349 1   notification_queues fk_notification_queues_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_queues
    ADD CONSTRAINT fk_notification_queues_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 [   ALTER TABLE ONLY public.notification_queues DROP CONSTRAINT fk_notification_queues_news_1;
       public          postgres    false    326    350    4562            !           2606    18354 2   notification_queues fk_notification_queues_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification_queues
    ADD CONSTRAINT fk_notification_queues_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 \   ALTER TABLE ONLY public.notification_queues DROP CONSTRAINT fk_notification_queues_users_1;
       public          postgres    false    4556    320    350            D           2606    18780 /   passenger_request fk_passenger_request_drive_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.passenger_request
    ADD CONSTRAINT fk_passenger_request_drive_id FOREIGN KEY (drive_id) REFERENCES public.drive_master(id);
 Y   ALTER TABLE ONLY public.passenger_request DROP CONSTRAINT fk_passenger_request_drive_id;
       public          postgres    false    515    4748    513            C           2606    18775 .   passenger_request fk_passenger_request_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.passenger_request
    ADD CONSTRAINT fk_passenger_request_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id);
 X   ALTER TABLE ONLY public.passenger_request DROP CONSTRAINT fk_passenger_request_user_id;
       public          postgres    false    186    515    4423            #           2606    18364 8   play_user_join_event fk_play_events_images_play_event_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.play_user_join_event
    ADD CONSTRAINT fk_play_events_images_play_event_id FOREIGN KEY (play_event_id) REFERENCES public.play_events(id);
 b   ALTER TABLE ONLY public.play_user_join_event DROP CONSTRAINT fk_play_events_images_play_event_id;
       public          postgres    false    356    4588    352            $           2606    18369 6   point_transaction_log fk_point_transaction_log_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.point_transaction_log
    ADD CONSTRAINT fk_point_transaction_log_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 `   ALTER TABLE ONLY public.point_transaction_log DROP CONSTRAINT fk_point_transaction_log_users_1;
       public          postgres    false    4556    358    320            P           2606    19218 6   product_form_input fk_product_form_input_form_input_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_form_input
    ADD CONSTRAINT fk_product_form_input_form_input_id FOREIGN KEY (form_input_id) REFERENCES public.form_input(id);
 `   ALTER TABLE ONLY public.product_form_input DROP CONSTRAINT fk_product_form_input_form_input_id;
       public          postgres    false    555    4790    553            %           2606    18374    readed fk_readed_news_1    FK CONSTRAINT     z   ALTER TABLE ONLY public.readed
    ADD CONSTRAINT fk_readed_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 A   ALTER TABLE ONLY public.readed DROP CONSTRAINT fk_readed_news_1;
       public          postgres    false    4562    326    360            &           2606    18379    message fk_readed_users_1    FK CONSTRAINT     }   ALTER TABLE ONLY public.message
    ADD CONSTRAINT fk_readed_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 C   ALTER TABLE ONLY public.message DROP CONSTRAINT fk_readed_users_1;
       public          postgres    false    362    4556    320            K           2606    19106 P   relative_benefits_category fk_relative_benefits_category_to_relative_benefits_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative_benefits_category
    ADD CONSTRAINT fk_relative_benefits_category_to_relative_benefits_id FOREIGN KEY (relative_benefits_id) REFERENCES public.relative_benefits(id);
 z   ALTER TABLE ONLY public.relative_benefits_category DROP CONSTRAINT fk_relative_benefits_category_to_relative_benefits_id;
       public          postgres    false    545    4780    543            X           2606    19387 K   relative_benefits_choice_tag fk_relative_benefits_choices_tag_to_choices_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative_benefits_choice_tag
    ADD CONSTRAINT fk_relative_benefits_choices_tag_to_choices_id FOREIGN KEY (relative_benefits_choices_id) REFERENCES public.relative_benefits_choices(id);
 u   ALTER TABLE ONLY public.relative_benefits_choice_tag DROP CONSTRAINT fk_relative_benefits_choices_tag_to_choices_id;
       public          postgres    false    551    567    4788            W           2606    19382 G   relative_benefits_choice_tag fk_relative_benefits_choices_tag_to_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative_benefits_choice_tag
    ADD CONSTRAINT fk_relative_benefits_choices_tag_to_tag_id FOREIGN KEY (tag_id) REFERENCES public.tag(id);
 q   ALTER TABLE ONLY public.relative_benefits_choice_tag DROP CONSTRAINT fk_relative_benefits_choices_tag_to_tag_id;
       public          postgres    false    4800    563    567            O           2606    19191 W   relative_benefits_choices fk_relative_benefits_choices_to_relative_benefits_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative_benefits_choices
    ADD CONSTRAINT fk_relative_benefits_choices_to_relative_benefits_category_id FOREIGN KEY (relative_benefits_category_id) REFERENCES public.relative_benefits_category(id);
 �   ALTER TABLE ONLY public.relative_benefits_choices DROP CONSTRAINT fk_relative_benefits_choices_to_relative_benefits_category_id;
       public          postgres    false    551    4782    545            J           2606    19642 :   relative_benefits fk_relative_benefits_to_relative_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative_benefits
    ADD CONSTRAINT fk_relative_benefits_to_relative_type_id FOREIGN KEY (relative_type_id) REFERENCES public.relative_type(id);
 d   ALTER TABLE ONLY public.relative_benefits DROP CONSTRAINT fk_relative_benefits_to_relative_type_id;
       public          postgres    false    543    559    4796            S           2606    19263 %   relative fk_relative_relative_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative
    ADD CONSTRAINT fk_relative_relative_type_id FOREIGN KEY (relative_type_id) REFERENCES public.relative_type(id);
 O   ALTER TABLE ONLY public.relative DROP CONSTRAINT fk_relative_relative_type_id;
       public          postgres    false    4796    561    559            \           2606    19426 D   relative_selected_choices fk_relative_selected_choices_to_choices_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative_selected_choices
    ADD CONSTRAINT fk_relative_selected_choices_to_choices_id FOREIGN KEY (relative_benefits_choices_id) REFERENCES public.relative_benefits_choices(id);
 n   ALTER TABLE ONLY public.relative_selected_choices DROP CONSTRAINT fk_relative_selected_choices_to_choices_id;
       public          postgres    false    551    4788    571            ^           2606    19441 W   relative_selected_choices fk_relative_selected_choices_to_relative_benefits_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative_selected_choices
    ADD CONSTRAINT fk_relative_selected_choices_to_relative_benefits_category_id FOREIGN KEY (relative_benefits_category_id) REFERENCES public.relative_benefits_category(id);
 �   ALTER TABLE ONLY public.relative_selected_choices DROP CONSTRAINT fk_relative_selected_choices_to_relative_benefits_category_id;
       public          postgres    false    545    4782    571            _           2606    19478 E   relative_selected_choices fk_relative_selected_choices_to_relative_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative_selected_choices
    ADD CONSTRAINT fk_relative_selected_choices_to_relative_id FOREIGN KEY (relative_id) REFERENCES public.relative(id);
 o   ALTER TABLE ONLY public.relative_selected_choices DROP CONSTRAINT fk_relative_selected_choices_to_relative_id;
       public          postgres    false    571    4798    561            ]           2606    19431 A   relative_selected_choices fk_relative_selected_choices_to_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative_selected_choices
    ADD CONSTRAINT fk_relative_selected_choices_to_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 k   ALTER TABLE ONLY public.relative_selected_choices DROP CONSTRAINT fk_relative_selected_choices_to_user_id;
       public          postgres    false    571    4556    320            T           2606    19268    relative fk_relative_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.relative
    ADD CONSTRAINT fk_relative_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 F   ALTER TABLE ONLY public.relative DROP CONSTRAINT fk_relative_user_id;
       public          postgres    false    4556    320    561            '           2606    18384 @   reward_category_list fk_reward_category_list_reward_categories_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.reward_category_list
    ADD CONSTRAINT fk_reward_category_list_reward_categories_1 FOREIGN KEY (category_id) REFERENCES public.reward_categories(category_id);
 j   ALTER TABLE ONLY public.reward_category_list DROP CONSTRAINT fk_reward_category_list_reward_categories_1;
       public          postgres    false    218    364    4456            (           2606    18619 6   reward_category_list fk_reward_category_list_rewards_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.reward_category_list
    ADD CONSTRAINT fk_reward_category_list_rewards_1 FOREIGN KEY (reward_id) REFERENCES public.rewards(reward_id);
 `   ALTER TABLE ONLY public.reward_category_list DROP CONSTRAINT fk_reward_category_list_rewards_1;
       public          postgres    false    366    364    4602            *           2606    18394 '   reward_images fk_reward_images_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.reward_images
    ADD CONSTRAINT fk_reward_images_images_1 FOREIGN KEY (image_id) REFERENCES public.images(image_id);
 Q   ALTER TABLE ONLY public.reward_images DROP CONSTRAINT fk_reward_images_images_1;
       public          postgres    false    4560    324    368            +           2606    18399 (   reward_images fk_reward_images_rewards_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.reward_images
    ADD CONSTRAINT fk_reward_images_rewards_1 FOREIGN KEY (reward_id) REFERENCES public.rewards(reward_id);
 R   ALTER TABLE ONLY public.reward_images DROP CONSTRAINT fk_reward_images_rewards_1;
       public          postgres    false    368    4602    366            )           2606    18389    rewards fk_rewards_images_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.rewards
    ADD CONSTRAINT fk_rewards_images_1 FOREIGN KEY (thumbnail_image_id) REFERENCES public.images(image_id) ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.rewards DROP CONSTRAINT fk_rewards_images_1;
       public          postgres    false    324    366    4560                       2606    18266 (   iris_manage_report_role fk_roles_role_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.iris_manage_report_role
    ADD CONSTRAINT fk_roles_role_id FOREIGN KEY (role_id) REFERENCES public.roles(role_id);
 R   ALTER TABLE ONLY public.iris_manage_report_role DROP CONSTRAINT fk_roles_role_id;
       public          postgres    false    4554    318    330            I           2606    19082 D   self_benefits_category fk_self_benefits_category_to_self_benefits_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.self_benefits_category
    ADD CONSTRAINT fk_self_benefits_category_to_self_benefits_id FOREIGN KEY (self_benefits_id) REFERENCES public.self_benefits(id);
 n   ALTER TABLE ONLY public.self_benefits_category DROP CONSTRAINT fk_self_benefits_category_to_self_benefits_id;
       public          postgres    false    4776    542    540            U           2606    19361 C   self_benefits_choice_tag fk_self_benefits_choices_tag_to_choices_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.self_benefits_choice_tag
    ADD CONSTRAINT fk_self_benefits_choices_tag_to_choices_id FOREIGN KEY (self_benefits_choices_id) REFERENCES public.self_benefits_choices(id);
 m   ALTER TABLE ONLY public.self_benefits_choice_tag DROP CONSTRAINT fk_self_benefits_choices_tag_to_choices_id;
       public          postgres    false    4786    549    565            V           2606    19366 ?   self_benefits_choice_tag fk_self_benefits_choices_tag_to_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.self_benefits_choice_tag
    ADD CONSTRAINT fk_self_benefits_choices_tag_to_tag_id FOREIGN KEY (tag_id) REFERENCES public.tag(id);
 i   ALTER TABLE ONLY public.self_benefits_choice_tag DROP CONSTRAINT fk_self_benefits_choices_tag_to_tag_id;
       public          postgres    false    4800    563    565            N           2606    19175 K   self_benefits_choices fk_self_benefits_choices_to_self_benefits_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.self_benefits_choices
    ADD CONSTRAINT fk_self_benefits_choices_to_self_benefits_category_id FOREIGN KEY (self_benefits_category_id) REFERENCES public.self_benefits_category(id);
 u   ALTER TABLE ONLY public.self_benefits_choices DROP CONSTRAINT fk_self_benefits_choices_to_self_benefits_category_id;
       public          postgres    false    549    4778    542            E           2606    19001 .   thaddr_district fk_thaddr_district_province_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.thaddr_district
    ADD CONSTRAINT fk_thaddr_district_province_id FOREIGN KEY (province_id) REFERENCES public.thaddr_province(id);
 X   ALTER TABLE ONLY public.thaddr_district DROP CONSTRAINT fk_thaddr_district_province_id;
       public          postgres    false    532    4766    534            G           2606    19022 4   thaddr_subdistrict fk_thaddr_subdistrict_district_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.thaddr_subdistrict
    ADD CONSTRAINT fk_thaddr_subdistrict_district_id FOREIGN KEY (district_id) REFERENCES public.thaddr_district(id);
 ^   ALTER TABLE ONLY public.thaddr_subdistrict DROP CONSTRAINT fk_thaddr_subdistrict_district_id;
       public          postgres    false    534    536    4768            F           2606    19017 4   thaddr_subdistrict fk_thaddr_subdistrict_province_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.thaddr_subdistrict
    ADD CONSTRAINT fk_thaddr_subdistrict_province_id FOREIGN KEY (province_id) REFERENCES public.thaddr_province(id);
 ^   ALTER TABLE ONLY public.thaddr_subdistrict DROP CONSTRAINT fk_thaddr_subdistrict_province_id;
       public          postgres    false    536    4766    532            �           2606    18569 Q   digital_news_product_delivery fk_top_coin_transaction_log_coin_transaction_log_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.digital_news_product_delivery
    ADD CONSTRAINT fk_top_coin_transaction_log_coin_transaction_log_id FOREIGN KEY (coin_transaction_log_id) REFERENCES public.top_coin_transaction_log(id);
 {   ALTER TABLE ONLY public.digital_news_product_delivery DROP CONSTRAINT fk_top_coin_transaction_log_coin_transaction_log_id;
       public          postgres    false    4606    266    370            ,           2606    18125 $   user_choice fk_user_choice_choices_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_choice
    ADD CONSTRAINT fk_user_choice_choices_1 FOREIGN KEY (choice_id) REFERENCES public.choices(choice_id);
 N   ALTER TABLE ONLY public.user_choice DROP CONSTRAINT fk_user_choice_choices_1;
       public          postgres    false    372    220    4458            -           2606    18404 !   user_choice fk_user_choice_news_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_choice
    ADD CONSTRAINT fk_user_choice_news_1 FOREIGN KEY (news_id) REFERENCES public.news(news_id);
 K   ALTER TABLE ONLY public.user_choice DROP CONSTRAINT fk_user_choice_news_1;
       public          postgres    false    326    372    4562            .           2606    18409 "   user_choice fk_user_choice_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_choice
    ADD CONSTRAINT fk_user_choice_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 L   ALTER TABLE ONLY public.user_choice DROP CONSTRAINT fk_user_choice_users_1;
       public          postgres    false    320    4556    372            /           2606    18206 2   user_departments fk_user_departments_departments_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_departments
    ADD CONSTRAINT fk_user_departments_departments_1 FOREIGN KEY (department_id) REFERENCES public.departments(department_id);
 \   ALTER TABLE ONLY public.user_departments DROP CONSTRAINT fk_user_departments_departments_1;
       public          postgres    false    4492    374    256            0           2606    18414 ,   user_departments fk_user_departments_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_departments
    ADD CONSTRAINT fk_user_departments_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 V   ALTER TABLE ONLY public.user_departments DROP CONSTRAINT fk_user_departments_users_1;
       public          postgres    false    320    4556    374            Q           2606    19234 <   user_product_info fk_user_product_info_product_form_input_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_product_info
    ADD CONSTRAINT fk_user_product_info_product_form_input_id FOREIGN KEY (product_form_input_id) REFERENCES public.product_form_input(id);
 f   ALTER TABLE ONLY public.user_product_info DROP CONSTRAINT fk_user_product_info_product_form_input_id;
       public          postgres    false    557    555    4792            R           2606    19239 6   user_product_info fk_user_product_info_user_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_product_info
    ADD CONSTRAINT fk_user_product_info_user_product_id FOREIGN KEY (user_product_id) REFERENCES public.user_product(id);
 `   ALTER TABLE ONLY public.user_product_info DROP CONSTRAINT fk_user_product_info_user_product_id;
       public          postgres    false    501    557    4736            1           2606    18419 )   requests fk_user_rewards_request_status_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_user_rewards_request_status_1 FOREIGN KEY (status_id) REFERENCES public.request_status(status_id);
 S   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_user_rewards_request_status_1;
       public          postgres    false    4612    378    376            2           2606    18424 "   requests fk_user_rewards_rewards_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_user_rewards_rewards_1 FOREIGN KEY (reward_id) REFERENCES public.rewards(reward_id);
 L   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_user_rewards_rewards_1;
       public          postgres    false    4602    378    366            3           2606    18429     requests fk_user_rewards_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_user_rewards_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 J   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_user_rewards_users_1;
       public          postgres    false    4556    378    320            4           2606    18434     user_roles fk_user_roles_roles_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fk_user_roles_roles_1 FOREIGN KEY (role_id) REFERENCES public.roles(role_id);
 J   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fk_user_roles_roles_1;
       public          postgres    false    318    380    4554            5           2606    18439     user_roles fk_user_roles_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fk_user_roles_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 J   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fk_user_roles_users_1;
       public          postgres    false    4556    380    320            [           2606    19436 K   user_selected_choices fk_user_selected_choices_to_self_benefits_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_selected_choices
    ADD CONSTRAINT fk_user_selected_choices_to_self_benefits_category_id FOREIGN KEY (self_benefits_category_id) REFERENCES public.self_benefits_category(id);
 u   ALTER TABLE ONLY public.user_selected_choices DROP CONSTRAINT fk_user_selected_choices_to_self_benefits_category_id;
       public          postgres    false    569    542    4778            d           2606    19637     user_tags fk_user_tags_to_tag_id    FK CONSTRAINT     |   ALTER TABLE ONLY public.user_tags
    ADD CONSTRAINT fk_user_tags_to_tag_id FOREIGN KEY (tag_id) REFERENCES public.tag(id);
 J   ALTER TABLE ONLY public.user_tags DROP CONSTRAINT fk_user_tags_to_tag_id;
       public          postgres    false    579    4800    563            c           2606    19632 !   user_tags fk_user_tags_to_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_tags
    ADD CONSTRAINT fk_user_tags_to_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 K   ALTER TABLE ONLY public.user_tags DROP CONSTRAINT fk_user_tags_to_user_id;
       public          postgres    false    579    4556    320            6           2606    18444 "   user_tokens fk_user_tokens_users_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_tokens
    ADD CONSTRAINT fk_user_tokens_users_1 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 L   ALTER TABLE ONLY public.user_tokens DROP CONSTRAINT fk_user_tokens_users_1;
       public          postgres    false    382    320    4556            �           2606    18449 )   well_being_events fk_users_create_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_events
    ADD CONSTRAINT fk_users_create_user_id FOREIGN KEY (create_by) REFERENCES public.users(user_id);
 S   ALTER TABLE ONLY public.well_being_events DROP CONSTRAINT fk_users_create_user_id;
       public          postgres    false    4556    320    284            b           2606    19592 I   users_pre_selected_claims fk_users_pre_selected_claims_to_benefit_year_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_pre_selected_claims
    ADD CONSTRAINT fk_users_pre_selected_claims_to_benefit_year_id FOREIGN KEY (benefits_year_id) REFERENCES public.benefit_year(id);
 s   ALTER TABLE ONLY public.users_pre_selected_claims DROP CONSTRAINT fk_users_pre_selected_claims_to_benefit_year_id;
       public          postgres    false    537    4772    573            a           2606    19571 B   users_pre_selected_claims fk_users_pre_selected_claims_to_claim_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_pre_selected_claims
    ADD CONSTRAINT fk_users_pre_selected_claims_to_claim_id FOREIGN KEY (claim_id) REFERENCES public.claim(id);
 l   ALTER TABLE ONLY public.users_pre_selected_claims DROP CONSTRAINT fk_users_pre_selected_claims_to_claim_id;
       public          postgres    false    573    224    4462            `           2606    19566 B   users_pre_selected_claims fk_users_pre_selected_claims_to_users_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_pre_selected_claims
    ADD CONSTRAINT fk_users_pre_selected_claims_to_users_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 l   ALTER TABLE ONLY public.users_pre_selected_claims DROP CONSTRAINT fk_users_pre_selected_claims_to_users_id;
       public          postgres    false    573    320    4556            Y           2606    19404 =   user_selected_choices fk_users_selected_choices_to_choices_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_selected_choices
    ADD CONSTRAINT fk_users_selected_choices_to_choices_id FOREIGN KEY (self_benefits_choices_id) REFERENCES public.self_benefits_choices(id);
 g   ALTER TABLE ONLY public.user_selected_choices DROP CONSTRAINT fk_users_selected_choices_to_choices_id;
       public          postgres    false    549    569    4786            Z           2606    19409 :   user_selected_choices fk_users_selected_choices_to_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_selected_choices
    ADD CONSTRAINT fk_users_selected_choices_to_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 d   ALTER TABLE ONLY public.user_selected_choices DROP CONSTRAINT fk_users_selected_choices_to_user_id;
       public          postgres    false    569    320    4556            �           2606    18454 )   well_being_events fk_users_update_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_events
    ADD CONSTRAINT fk_users_update_user_id FOREIGN KEY (update_by) REFERENCES public.users(user_id);
 S   ALTER TABLE ONLY public.well_being_events DROP CONSTRAINT fk_users_update_user_id;
       public          postgres    false    4556    320    284            "           2606    18359    play_events fk_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.play_events
    ADD CONSTRAINT fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 F   ALTER TABLE ONLY public.play_events DROP CONSTRAINT fk_users_user_id;
       public          postgres    false    320    4556    352            7           2606    18459 V   well_being_product_delivery fk_well_being_coin_transaction_log_coin_transaction_log_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_product_delivery
    ADD CONSTRAINT fk_well_being_coin_transaction_log_coin_transaction_log_id FOREIGN KEY (coin_transaction_log_id) REFERENCES public.well_being_coin_transaction_log(coin_transaction_log_id);
 �   ALTER TABLE ONLY public.well_being_product_delivery DROP CONSTRAINT fk_well_being_coin_transaction_log_coin_transaction_log_id;
       public          postgres    false    4476    238    388            �           2606    18574 .   well_being_events fk_well_being_event_event_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_events
    ADD CONSTRAINT fk_well_being_event_event_id FOREIGN KEY (event_type_id) REFERENCES public.well_being_event_type(event_type_id);
 X   ALTER TABLE ONLY public.well_being_events DROP CONSTRAINT fk_well_being_event_event_id;
       public          postgres    false    284    4532    296            9           2606    18464 >   well_being_goals fk_well_being_exercise_types_exercise_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_goals
    ADD CONSTRAINT fk_well_being_exercise_types_exercise_type_id FOREIGN KEY (exercise_type_id) REFERENCES public.well_being_exercise_types(exercise_type_id);
 h   ALTER TABLE ONLY public.well_being_goals DROP CONSTRAINT fk_well_being_exercise_types_exercise_type_id;
       public          postgres    false    4536    300    392            :           2606    18469 ?   well_being_post_news_detail fk_well_being_post_comments_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_post_news_detail
    ADD CONSTRAINT fk_well_being_post_comments_post_id FOREIGN KEY (post_id) REFERENCES public.well_being_posts(post_id);
 i   ALTER TABLE ONLY public.well_being_post_news_detail DROP CONSTRAINT fk_well_being_post_comments_post_id;
       public          postgres    false    4634    398    404            ;           2606    18474 T   well_being_post_news_detail_image fk_well_being_post_news_detail_post_news_detail_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_post_news_detail_image
    ADD CONSTRAINT fk_well_being_post_news_detail_post_news_detail_id FOREIGN KEY (post_news_detail_id) REFERENCES public.well_being_post_news_detail(post_news_detail_id);
 ~   ALTER TABLE ONLY public.well_being_post_news_detail_image DROP CONSTRAINT fk_well_being_post_news_detail_post_news_detail_id;
       public          postgres    false    404    406    4640            =           2606    18479 9   well_being_product_image fk_well_being_product_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_product_image
    ADD CONSTRAINT fk_well_being_product_product_id FOREIGN KEY (product_id) REFERENCES public.well_being_product(product_id);
 c   ALTER TABLE ONLY public.well_being_product_image DROP CONSTRAINT fk_well_being_product_product_id;
       public          postgres    false    408    4644    410            8           2606    18624 J   well_being_product_delivery fk_well_being_product_status_product_status_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_product_delivery
    ADD CONSTRAINT fk_well_being_product_status_product_status_id FOREIGN KEY (product_status_id) REFERENCES public.well_being_product_status(product_status_id);
 t   ALTER TABLE ONLY public.well_being_product_delivery DROP CONSTRAINT fk_well_being_product_status_product_status_id;
       public          postgres    false    4648    412    388            <           2606    18629 =   well_being_product fk_well_being_product_type_product_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_product
    ADD CONSTRAINT fk_well_being_product_type_product_type_id FOREIGN KEY (product_type_id) REFERENCES public.well_being_product_type(product_type_id);
 g   ALTER TABLE ONLY public.well_being_product DROP CONSTRAINT fk_well_being_product_type_product_type_id;
       public          postgres    false    414    408    4650            �           2606    18589 :   well_being_event_team_register fk_well_being_teams_team_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.well_being_event_team_register
    ADD CONSTRAINT fk_well_being_teams_team_id FOREIGN KEY (team_id) REFERENCES public.well_being_teams(team_id);
 d   ALTER TABLE ONLY public.well_being_event_team_register DROP CONSTRAINT fk_well_being_teams_team_id;
       public          postgres    false    384    294    4620                  x������ � �      �     x�}�ю�0E���lh�]]��T�I��/��tʓ���;C�J�8n�3�{Ɓ�ߎ��JL0�<R	���Ѹ�;PES>�竝3Ck.s���	סf����[1���nAb�1�sdI�#��5I)�9�a2��u3���a/<Ū���̬��xC�hO`=�||��q��pf(I:��"B�����C�y����a��˶hk(��{T���_}��%��-���g�$�6M���uh@tڄS���i���[�i�;����)��D�N�      �      x������ � �      #      x������ � �      4      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      ?      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      %      x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      
      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �             x������ � �      $      x������ � �      "      x������ � �      g   v  x��Xɒ�H={}���Ô	�:�	�DR�������B�
AV+�~Y5m��mcV�/��<�I��L�n�~����iH��!�<WE�X-Ш�Ac�B��� J�E&@\ �<����OɊs�e}���U�8^�;�fd�mKU˓aiq0��Ңf��X�å��!eאYYL�]������/i-����d�	'�s#��Ї��=�cی��^kQ0�M����k/YoR����5!�ɖ�Y5�.4*�3#�w��'y�t�9Д�8��\��&.Z�C�@Y����=4�_Z՛�"C��-}�tGdo�XU�Wf�pLvj��ś*��Hmj���Y:RС�R�.2#Ǌ���F��Yy�}W�ۏ����!9Ut� Ĕ��V�ލTޚC��F����,�F&9����J?���ɉR�w���>���)�H�C*v�1@XW���(M�E���f<���$;\w��N��\�6�ka��Ȏ_�]�����69���A����U�?s�k���r7�0� 5�7y���qwň\oK>L��.4&7��E-�_����.auU�g���&�>���USwCh<%7�ȭ��䤌g��krey�k���g����V��r_PR����a2 �ْwl�]s'&y�����֍�ɐ<<��U�%;nD^�Pv��=�ɻ�U�tO��W��U�86�e�R��ܙ�h	6��S`Yh�n���D�/�(���,�lh)t%?��|�&_X�LM����b�������|o�x����2���ȿ���1��S��Zt_a:�ߨ�q=��&@P����u���ȏ����E/}�s�c������.��|!�[#�
ASX0O�C���Q<Q��"��8Ci�����3p�G�O��
��g�i����&�Z��B	3���Ni�-xj4�,���݇�f6�U�J(�����1���,t�$��1�*�87)� 90� I�H�m}�X���( a�n�̇�=c��|�߿�߿u�O	C�Q�`>��-d�5����(��z�"zB��k1��MJO�>1�&=%16�80�5D�Z�vֈ֫��_gp1�u��Ziu�ZÆ%����k1��sN��;���(�6
��s
�ߡBY}X, ��C�К��}�=8bR�X�՟��9��)\��E���#
�-N�/MO��1��_)l��`��gO(�Y��
�L)�R��ݏǊa3���R��9E�O��,�GV����pqR�LT�Pȑ�+E�Oŏ�>���"��Qm�8
���9qA E���/v�n�/�fLQ�Na �l@$G��om)��H�����AK��r��V7��[�^2L������%܄`��b��p��s71Ʀ�
h���B�)�-�U_��q� ��	�#�(��wh�Vq��cBV���g�b���(�x��+/��^`�և}݄���w����[���!`�%�	ߍ)zuτ��<Ǵ����:�֔��\��5��K���e��	�5��W��&3�:��6M$�K�M(A &�I�5���kBc'��I��#3J�uKχ�΄�N�	� �����uބ��b��Ep�bBa��`iu�G?4v��O�{/�!�3kK�hN�}��-S�~�5�}����D&K�sZ:�!B!��0tFYh��h���@Vg!�6%�F(��ق��+�L�=�lBVg $!�b]�%�{�O�$���-*�&&�v�i4�R��6�v��GQyum�H�*���@�;ۢ��� ~9wkʊ�U|�	w�;({�
�=�s�<�2��34��9�_���_������{/���	��a�W� �skE��pEfBu����M�&4w͝_��g
tw��(o��+\�@�\���71�E 1dJy���:��ϫ���>�J1opxϛ9���r���;�� ���(�U*�;7�;ǐ��򭟄�[���$phD�5f���/2,@���([���4�6Ñ���,6!�wN��;Ĥ,k��c�B(�y�D~C
p���m���	��S���&g!�wqD;%kDz�.�msډ����9\�3t����eS7l�0�П�����&�<�j�(�\�ĵ��G��"��+O(�k�S�Z�k.�MH��.W^��FS=v�iՉ�ˋPZv��o�?}���)      &      x������ � �      (      x������ � �      *      x������ � �      ,      x������ � �      .      x������ � �      0      x������ � �      2      x������ � �      4      x������ � �      1      x������ � �      6      x������ � �      8      x������ � �      :      x������ � �      '      x������ � �      /      x������ � �      F      x������ � �      H      x������ � �      J      x������ � �      T      x������ � �      �      x������ � �      V      x������ � �            x������ � �      X      x������ � �      ^      x������ � �      `      x������ � �      Z      x������ � �      m      x������ � �      k      x��}�r�u�s�+����*3+��/�	kW^����h��E�$zHt#1�Ol�a`0�52�M�b�h3@�K�W@�� ���9�'+��h\8�X�HdVe�s���I᝟>=?}~�=8?=:?���m��n����OO�?�0�Y̢(�<�l��K��ä��zL�Y�,�d�Ȼm��w?W�O<��ހ��������o�O��o�O��O�5j��+�v�����j|���78z~���֦��C�[�y����~���O���������D�����M��Fk��P�$Ȳ�K�I�4�ao5��]�!��c.$�yș��?��U��=D0�oyt~�-�9��6�Ox�s��?�=������o�������/8�X���F?�����˃U�A�V�f k�:"�,H�hGp������'�ߊ��Nn���׮���m�a����e
IO���H�s���兙��4�R�l&�7/	V"=!C��1���ބPq��~���-��2����l�m�E����+��D����	�������o���5���ã �q�8R�)n���[��O��,�m��:��	�� ��ꗚ<0��!�`�@�X�A�O8��B�#KKxda$ �,c������2gN������o�li$��mi��C:|���x��x��9�}��yN�g��?��-|?��f��7ƿ5-�" ��#�V�7D�>�����3@��M��ۈ��{Jԕ�,�@dQ�8��aZ��D��A���:����o�:����c\8�gS?{��H�P*�ea�q)�%Ɩ8/QYfi(�$T,�kTp}"ޏ�x���5}�B�L!���i��ch�9R��X�š��	dW�S�!-�ǙC�3���!��\��I�fX�op�c:�oj/���n��z�7u~x�ӷ��ގ\�b�g
��#�@p�:�>F�j2>�IZ�m��C��R�G]�UVUٜ�C����˯5K�=:���`s\(BI.J�4
�E,��gP=�;���tGޜj��:�Vx&��c�w(��2���^�!��"����G��ch��V���v�V�[x����e�tՙc��w�h���roy%����lTfX��'!����k)|�?�1��>e|�y^Ӽ��Q2\r��)i�3H���g��8��/T�QŉbN�\R���"�eY(�4�H�i̓XV���H��ˎ�f�����ґo ���Z�R�bN���ߣ��r�xھč|C����0���!B{B5Տ�}�������`�G+�Q�Z,|"�� sSjq�!P�����كӂ��3�Y�g���]A���k{���K ��R���V!4y~C��.fe���L9W�IF���%^Q����T)�J����/��ۤ�<7��2��.~e	=��#��6�yNQ�~��Ρ�����TH�9&?#�?0V�!�W8B��e|O�i�I�6���}��j^Ƅ��,sŤB��B.;"���}G��VڿB���	��u�Y^۬��+�ǐ]��o�i��O	7��G(iR%�1���Ɣ	���w�I����EU2����U���^��F��9���(�,��I..����2��X}��X����^���Y�<�`��zJ*����Z
X�gƱA斗���(X����F�/��;�Q֣"�H���Y���\$�Ċ���;(��&I!	���5J�3���G��ԑ˯��P3e^�$RʿR�b4C���PQ�k���֭��m}�HQ#G�A�I?@�[jW�#�C�Gf�!�?8v�)i2ZgC�Spf�sO���S|�3:p<g��Qn����xL�Sϱ�^�*��gZ{��f�l�:�W/ڞ嗹������+���6�G�"F�<��4��|N����R��w�m,�E��Y��D��O�w%0��1�Ow?� g��O9$>����Gd1jz1db7������ �-����o��].�T;0�2+�q�����w@����6p��.b;e�V� bk̲5B�׈�W�G���8[�i��4	S�4�%��y�r�H��ϥ!K؅g��m.�}2sq|g/�� U�d�����m6�љ�4�������ȿ��w��Jw��m������>�G�k�[��G�z�ګ����X�3щ�N���uo Au�������-5(S%���j�ôCv��u;�g;�	�U�La��jU�K�5{���XT�&�c��I�~�WN����/�h��1�0�b&A&Z���H�4�)��Y�]��Z�����`����������[�{�+����wy�w��!��'�H��4�.�#:�;ڱ�MH��^ik�f{m���'�h�AN�3�1�As���ӿwx͎����r�?�Fl�9_UKg~`�vU�2�I	 ����P9.�F��=$��~���3ζMP(�ɃqbT�%/�y��Vޢuk�y pZ��B�����HQ��`��ָh���gQ�g������MB�O	���e������sb&'����E�T�҂X�J!~�[U��q�4;ъ�Y�M�
-7�c!�k<+Q]��"�RDQ�c1���Zǈ� bwW��t��AR_���,3rߦBa+��D�9d�b���&��0j7"�D�O���Ͱ������9!OVX�q.�	�	�7Ļv	R_�ۿ�|��5����X�/@E�b&�q%B�U�N����(<vp�z5+��2+qJ���"����2��	��n�n"$c)H���{#?���a�����H�A��S��r/������h��߭o�)3�6�{����W���k)'ꈬ�@��u�ֳOu�Ӂ�e~�Y��Hb�0��b���tQr})�b"QjHb��t��(�L�(��G��"�`��Z�=D���t	�>�|oi\�EA���N$��#��=�:���)>��p��u)5��i|L1�?�Ou5�&wQ��g���˥�'��AB�Xh�6y��uw���Z�\1ǵL��uF{��n���:n��8�Q�������N5�3/{d���|;�ݿ|������w�ۯX�A��s⳴#R�Ipm�5�9jޮ����H����芖�]��كN<I�M���Z:S}R�I����&��*��  �\��J��ҏS~	�f��\�9ڤ$��&~����.���K��R���'���+OB�b�����o���:�Gy  jFAf͛����i��C�`���CskX��e"М_�9��I�Cu�k�1�h-ɜpzY��0U���F����@,]�T��*�j��ݔ����$�ŏm��ڰ	��Gpw�ѽ�+cc��Oh07�}�!u"���q��	��kב ��O:�JPy��x�K�ʦ��<#��2<�I�o(����	�f�J#�Bf\]��UC5V� x�UC՘�r�����-Ucڦ}�p���Kc���tD�����z���9�s�+�l��̱��qJ�u�ײ!?u=ϋ|���z�y+%��O��������R:Ӣ�������������#�|���Ea�ZǍ�w�|�:�V Ř1�ݺ7�ȻpQ�7Zڡ�����S�k�&pT<>ڼ?�3���$'8�Y�0��\��N�(-�\Ѫ#�W�|J6ѩc���]Ҫ_�:�SPN�Hr�EK�m���[�_�u���I�(v���cm���V7����p�K��%J���ƕ����^���_��|�n�mT>9�@2։���)�Z�)P=��L>~���iF��u&z-����h�DPtT3�{im���o).a��,�Q��q�>��8�=�%�)>�.ߐR��aqo�P'���Vk���d:\��^;EZ�R�3�O�f��c��$k��ݘ 1�������q���g����G�+y-��$%S*=3������p�yδ����L��Fy�,�*)�:�Ҋ���mə����3����NW&F��8�J'�E����^��H&�������a�M�90J����!��'^�Qr�(��yo-_��]���G�����.� 5�a��`�Lf��x_��o���M�?���    SJ��ޜ�B�d�<�����M�)/����1a1&����G�ZXNc��[���M4`���L�P�NZ�uʇ��z��7�w���l���2Tx�$jw ���X��o��G[ׂ�J��"���|������-�q���ra��DDe�$� �1�E]�� y1;�&{I;@���[.q��
�%RW5�;��==3�TUa���)�����j&(A��,=�#�y�1~G��}�9��Y(%�j3��F��{��0�	��G����p:��a�V�V�~7l?�IG��DEQ�x9$kbA~3x�=��UG#�0HUA;��������M��J?&"U'��I	��(�8���n_��+S��scfM�ﹱf��fru�ȟ���7'Ŏ���T�+L)Z���zr��j�+�).;��#��Ef��U�3?�����x�<�x�)��bi�H4�\�ک���0��B�Cqs�|RAd�8�c�q�H������7���)G�$h5@cSk�����b<q( $�-�%o}cm�%>y���ԑ�c:��i�p#��*����b�2Rׯ�O��3k�P6�[qyB��+b.SƔ�U�J��d�',TD1�0-�
�7#���W7`IZ���*���eܾ���[�W�y��]���Z�:"W�6���lw�m|�%�qӫ/C	�dɂ�-��N+�3��ЙS�~D8;*�na*3��)���X�)�jV���Ta��sm�nB�M�l�@�E��R��M�!�qL���T����Ƹ��mZU�z��cVRZ�������X�����b^M��	�t�3�d�V�i�W+���n~?���6Ì��G�c�'�vr�0A߲@x��a��ʮ<ћ3��^[�5�/�6�`_�J|���^�S<�8�{�����W%��T�Fac�Z��I�H�Uͪik5�I�h�'b��՗�ɵc��إ�I�v��"��g�ӹ8@�V��%����F޿��q+_������fZ��O�m��4�U�Q^��1�}Oqs/����zs���n m1�rߞ8Y�c��E'��9���(�"c�0-�t��b�	���W��##��b�#v|�����y���N�^v[$�m�?k��P��h�w������_7N"%���8kǇ#�O��7��s[�W�7�DN^��d��5��Fj�Lh�D��r�I%�uNV�U
�����[���(�|p���w��ݵ���`-�l��{����{~����z��f�ou���V?�����*��:�j�YA3��Z�A�g�!]�nq�V3��
����|����}�����ek�[�1��#ce&��8^f(�Ng����/@��������DH�=/�L���)�L��xH�����$���8�m0��D�J~AC
�F�HD-Y�L��i�o�ݔT�9��<��}N�d�����))~�gД����j�h�:�O���TVG������CѤ�E��%�YGd�b븓q��|�&l|Ҁ����O�Ѡ��A�c-���*�aa�����Y{t@��̳�ř�>���JyZFi�$�޵�����ZJ�2�+dJώ[ǑZ���EƬH�-�4\q�7gbM p	_�>M��� �����4 +�I�TW���?� ������r]�6��]/<�>l���[<�ouB����h#B�gZ��aP��8�<��û<�.��V�t�k�WiX�;F��;憢��v�0ԇh�`��Y�ď�I�d�Ó@Zk�>� ͍�C&�3��估�����k[]�/KD_�u��r��?���L+\Jp1GEl��!&8�)��*�&�%��
r�1� 02���e��}�Q[�ڻ�D��h���,_��5L�Y*�s�:^�/���S��V�>F��fysUE��.QE�gN�B��o����ڡ�r��0�	�U��f�J\�(�����j�6ɴJ+�f�Æl���Jr�O-�J�WL�U�Ν{�ѯV6�w�}���g���;j�Л~w���=`a�3'K-D�����r���_y��oӌ���~ma��	#YM�Աy�F!�W���٧?�>ݨ9���]2VԐk{�bDfn���i���'��c���7vu��`~H�줨Ź�"Yak��@5�	Ѝ$�p�$k����87��"��.�8��0���,1�A]�㔒 �yBv���L�*4�:�uI!���Y��t��Q~�_�Ԯ�:5鷞W�/�M�L�h񑛼�-��}�t���1u7"��O:� o7��i#m���VY���ao|>��'���Vű_,[��a��4��/��GX� �����j�Ψ�6l��[O���JQ�B�D��b�{e��&��semɬ�8vy�Y/>u�s�-��K'�>���:���a~w�|є<li@B�p*E�x��ŀ�Ң�D��3�����W�gͅ�:����U��UFqS뻴��Ԡ�)�2�����+I!w�����мiK3��|�8� p�6#��v�Z����1��)}��a�f�kԋS�W:�l����h�4��u�B�(E8v��|Lq����t�x�)�"��5zD�EX��0��D��J�H�qʛrI�o��>с���늓}a8���`�C�m��%�j}4vy�¸��J�v�� �LD�x���%���P����i��_��E=��Y�-����1�&ډڱ��<��l[k)�-L)$�Ȋ�SP�$I}�7��.-$���(6ӖZ>�G�5P��21x�^���A�������?�q%��.%��,��,�`� a[z�<u'��e�4(�تWP3�o7����k^�*�w�SujBGC���`4��r�U�� ���/���G�9��m��`�Za�;?�áC���yIv�))��hŭJ�Q��.}��ڷ<�{��C�CÏO'�31��w���Y
]�}W�q�`4G��^���#�-Ь�h��a`�Zʺ�<���.�5�	����~��yl����Q���}�Tz�@��CFv�$�m]m}|)���|�EM�Y�֩h줏�ɝ�(�"Ǽv"���)M#ut���_�5JnrQ��E)��W�65{$|��ڢ�M�	�mѧ�����:g���K;Q�I�����d�o�!Fܼ�:ط�[cB<�Ћ}p��(n��C�z>���G��i�Z(u�������G�Ḏ0	��E����q�������\�S��X������b�\�D�t:�q����ק_�^��)v0q�-��h�e�RV��4X5&�vl��XR��լN-�'R@%���|���844�<���y����3�*����6j	vxÍ�*`���	v��:2��!k�z�-��+J����s[N���E��EV��"���=���t���{{g�����D NrT����P�M�$��5��%����6�Ғ��ZS��d�G�� ���q�s�|۶.{nZ�M��.\169��W&�g�c�o;�R�ᘌ�1J�<�� ����p�\
�.���6rõ�|�p��Ңq�*>��ؐ�H�u���k�D��w9��+L��T��tZh�sD��F�)����چ>uY9�ǘ������ILE�H`�*���;q�O�م�~��s�1/°��@�����17�J�Sj#&�H�,n�.!p]�j�d��GC�Mb�s(MX�:�o���Mi�4W�5H��'Lp�����W[6D	ܦ%��6�k�7��|���
U�c{}e꭯�V6V�{��FmY0Њ�c�6\�E&NǑ���Me:^io�M-�Z���a�������7��j�T�E,����$�(��֍���һ1�����6���ٺ�+��Z_�k< t��.tkU��˝���"_�-~c��7����0l*0N�F�Z{)n�¸u�}�>iY�q;���W��͟XR�Nҡ&"��$S�¡crP|�]������F�ըة�a�̊>�x��e1��:���ǭ�4<ϥ�R�O�_��}���9�?{l����?��7��u&���������i��Ss#h^%D�:N�c�0��.��O֜�¬�[���EQ��>�*��&5�|����k��62�����*�"�d��������/��/��    �W�Ǖq�z���zh�y��m{��8nO�����n�����/cA�Lz��B"�؆�
��ڈDG����@�	"3H�.r7Y��΀#(Q�A�jwf�}��}/D+�DZ��F��#��:=&�fE�@(��q��֭�"�)�ŉ�l�������PBP�ٴ�zN 2�£���S,��I���);�j71$Kc�u�S5����G���r}�k�Yy�(�%(�N��˲P/!���!����qҜ_����-�1�����������X����u�P+���lSQьr��8�ߔZI���,���MD
���I�:�='�;��gc�������N����m()b��I�M-�.\Tun[����O���ȉg\]��v(�{B"�]]��j�\$��dZ�B��L�!y�ޞ*}��3�����ʜ=����n=���1��8�'X����`5�����=�HP�ay������N>���+������5)>��MP�9���o��xsP����>���^LY	^k�(K��H~$�*�H�MY�L��" _~���3�4?;u��zN�e5!2�3��1�էw�K 4�]�M�p�q�(��	�Ju6l��I/zKT���LC���g�aiټ��x��Np���ן��'V�,!���&���#��<��x!��������8��F���n��6�׺ˣ�-��޻7�-��n�����ƽ|���\ksM�uV�U(�V����\�Rh��7몑�m�fz���1���a3ց�e���@��f`l�� D':a�"i���g\&��tB�#���4\m�7gb��I�A�%��6��Ȟ�R����k���$��p
�JVl��<�qȳRG����_����Fw�/_�z��v�_Tnbl��u�Q{�0�KK���p!��S_��UU��:!��4����9�5$� O�W��ל�5Nl��D�G�3��@�ۃL�x�X07�����s<#es0��X�00����-b�,f�\��!��b.��ˎ}e�+��s�71�	[uρ��^ZUN���(5%or/����Qƣ8֍KY��7Bi2�[���O�)���{9ȡ���'�{CJ���wEI��e���=Z��n�<���V9��4�y���Xi�}J	�2?X��0��
o��aQG[�Þ��w�O�!��!�&����������B�*�H�p_���I�ЭW���}�:�㴶~���m�s6>�6�مMo�r*�˘$��G�{k�K{��J>R8��緺� ���p#ȗ�ъ%��n]{"� �!��x)�����M������M��毨2$����-����zo�̔�5�L�>�91��`*zK��Ι౸d���rK��Y�`�.�z�_�Љmw�OH���]��>&��$	�:�]V�*�;x��~���D�ސJ�OΕXZbL]��C8��Am�_����G�G�7��f�)������S��D���Φ�7⅑�q�&�����U�U���Z)��I���'�q_LH����ot�@���Б�)�ߑY�Eq�x��i%+q2ߑ�&C�ץԹ��YނϪ��P�!O=������=	�(�Ջ�����:�*��L�g0}c�:�E���|M�?��n�K�)�i���� �쭳����S����И�P\�\���t|�]�C^�ГM�r�ڼ/pB���?x����kscĥh��� 		�,	�Yx���S
�Ě��,Vˎ�0�k��`Y�"��<
rj�ߩ�������*Y�����z�4S�0�7���U�!Egg:�g�CG����}b^�X�ڨ��)F��iȨ��bܾ����.���S�ΞM��t�������aIX�T�����Z,�m�$Kbc�FpGT��`qM̠�ղ(��n!��vvA�-9�R��bE��W:����o��j��5�ep:B/~�g�[:3E+i�|�V���4��S�hT���M�%���2�/�sfΪE+ �{�;�
�{ub�H�,n'�fV�2w�[�I�`��v��~��ޅKL7K�t L]�{����>SzѠM�Ri�%6h��Jc��Թ��k�h�oIi-�E�����ma��h��b��~8��2p{�S}�i��{N�3��V;h\m��>�u��	U\�(�~��t��#�윆0��QL?�&� #>�"J3�)�Ϊ�%�p{f�3��]]N6Y����F�G����{G��t>;��"�;2���SG�t�_b�7h�j�u���� b���'hS��κ�����yo}�ۨ�@�S*z(��6�o3�yOݽ�iu�_����Ի`iIw��hPxO;�ޣC�_!��C$y��,1ԥTV��Q|B�Rq��$7�ƚ¦��f0짩,Iه!��l�׼)�\�{�����)�����rq'J��:56�;��;�<�ӫ�j�Oݣb�Ex6���8*���n.��P��$M��T��c�b�ܼ��v{wV�M������?�������9��(���7,�Լ^~���w����'���Zw��޲nlS�L���ʜ�4����/��*��<��U�P��i��ډr��O��[:#'�^hM�15�1a;��U�;N�O����ǧ����m�({�0X�F+��ް�,cI�3uX�8~��� v�ϣ�kO�K㕾Y�������uMo#�t�8��S�K0�m�t���с�W��HFI�i.j_��;#S�3(�h$���r&��HIL�̀h��]��RfA���h�#� ��[d�p��`�*^�T�noYG�tly�oZ�`��Ԓ�P{hޙ�}��|Zo�S���� 񎋧��u����9��
�r� �e��k�?�\���&*E����K1N�����V[b���Y&R7�����:��:�I�3j�ʞ���]47ϔ]�hU�&��§=b|M��pyZYb]�G����)���m".��rc�@A�u�H	���)�U��+L񚦸�?B$QB��ucR��i�����%Uzo�e�oYɂ�|8��8I�Ś�[o�N�.4�I�8A�M+����4�9��"16l��NWÛ:�Q�x�:N�VsZk0���`���Xh�2}�v��҂^���sX"��T��@E-�~vW��-����%� k'�s��d��>�#���Rz�Ԡ%5V��9Na�n���>߭Gi��>d�a� �4r�#H.�2�$�
����"׼�k�a�u*�lw*�w��|K�b�ëN�*S�柅!���y�C�#����cpT�,���7��W�xXq�`S�~j��_g℮
�5%�!A�!�~�D�	��T��q"�)�M���o�����\��`&$���[n�5������H3�6\�*������_Hċ�Yh� {	-q�%��Nr��@�I]#)EYLW��5�r�X���ܹI ��d�� ,P�ʪ�(��WW�U�W�����ߢ}ˮ�"F)_��a�W.C�N
��
w�R�&����rw�Жͫ׭���f���N:t�yU�^jJ +�MB��R\�	5V�;I��&ſ��"�Qa�TzL`��\�|��pAM&�	�H�Y�D���GL�/l�$��M��v��(�H�(����L�oL��P��nHb��J���F�dđ,�r���֯_�Q��5����o9"�(=�<�*��:�*���P'M�Y����aP�q��S2"���|sT`,Q�m��/�0d�Ӌ^[��x@(��8eǔ�(��d�ޑ<`k�/�:����`B��{���s�����aQF�6�c2�Mq�̔9�����X$l!%RY��f}�t��5g�Q9ir��j�+2洞g|uG%����I�a�GSɱ��+|}��r�T܀oL�@)��6���X�D'v8�uw0�/7:���ʎ�I�c�:N]a�>��KNiA^=��"�H!kK����!j�fM��O��tj��
(�
�D�q�r��گB0t�	�V�9l��|�ӟ|�o�����u�F��us��p��-�?��ߡЗa��J����y�|f&��xz>PǞ��o䵀pv�	]���6�l=��U�x� #  �ڽ��7��t���ўh�z�6��k��f�{ex�Y��4ʑ��a�8�E
�嘞�>?~+⿯��^��-�g�5'����w��w$��(q�p���ʹ���P�r�����=���g��G~>u���!��������=����{����+Y^��G�Us�����ۊ����ݼ��߹:�c�'<��l��k���0�bE.�_����އ�;+���~������ګ�>��<��ǭ8�C��&.���������_�7X�v�9�W��v*w[{��a>��MY�W��]�Jl��q����$|D��Y�7�Λ��J��|����`A��+32����A2Σ8K��02��b��-&�Ǭ����[�Hͳ*�E��۱$�5{<��� PS�u��#Sh�eQ븓����9�mn��Q(a7��k[Q�VZ�~����,�G-�H���6�W�(V	�����K00������6P_�m��g���4���uܾ��Ǯ&����c�����͙^W��	Y�����'t*!�G��g,<t��8Ӕ�E��|a�V$".o�s�)�0���yU:�.�;�1��ڠ��WN�@0�:�/<���V�w�e�_���zlU<MuDtY�C�ּ�F@}K��"埊|��G�c��Hp)Kٔh���Rq��2�z�i�cJ,m&��{��3����xB$�#v+��wlJ��*p�!����f��+�EVT�5A��	��c}�<����[_�CR�f�߃�|S�f��>6^WK�%��tЈ�r�c@Sɡ��Gx�v���p$ ��j_piL\t�k�7m�0����uV\ �VZ�M���1���qw�'�������LR�b��n2�/��d���hS�$!SM1�Z�J_�Ԟ.S6�әu�Nt��U|��5�C�(�[=��r�颍"��Ml�5t�z�]�"8�q����#M�O������_�J��6��k:mN*�c;�>S&fk��B�?�,�xm�d�[<��c��v��UOky�c3��rZ�����In����'�o{��n��r���
���t�^�f��c�t��JO���J��v��#y�@B��Jf�##H��u�ɷ`�ژh�EX�^�� 5�	�R�%`��_(+��W	�k�2N+�BqGFB�ԔC��J�Y�[$TR�e5es�Y�>����o]���dm��t�����dv:��̱ZI5��s��j�^h�U/_�%u�}W��������&k)��AR��0����r�<N���is|�p"1����5�k��D�,v-�D�Efu��ôh}Wu�A�cPM"��\�QOe��%4���e�\�a�柳����s��2�:��K�?�\^��RVp#��7C�$�DX�6� \p/;�!��0l��ߓG�X�?��Ѿ�+iP���	�����r���]p��E��r���%W+^2]��W�V�O�#���ŧ�-q6��w��؄��x������#eS6��آ�v,�JHȹ�s��;���������Y�D����.4MÍ8�/�ٕ5Ms��s�*-lO0��T����/��OX��V5g�ˋ��k��1<GIK�
��yh��~Ox�����H�&m���6'*jJ`��$�"�d�MW�g����(���B��ڳ ���q��3RNQ�D���܊v����-�$գqnB�/L%��F�G|䁁Y��I	���`؟�rK��ǥ��R;�����~��f�w��i����[����0����Q��bY���^�@8¡:^�Su�7=�/�䍮[ su�bҒD��Iba��m�����?���%�-�      o      x������ � �      O      x������ � �      �   h  x����j�@E��W�,�j���B���
%�7	m���WvMa��`sFף#cu{��޷������0�l�O7����~�r֐4�(_^_�����MSR�P�5֤V���h����(m�4 �������s��R	^	�_wO��{��tȒ�L����Q���?7�����0��*�E�ظT�xL�1^1�aN��?��C��,�r���T,UV�3`5�\k���7h@��n�<��$�`�-�K ��Q�-�4�%h���й�+�y�n�H(�	}9��'=yۣOK#���)�f�z��/�M���� ��5������?���.�<E�|�Cm�=Eqx��-�����h!і�k&�#�2}��_      �      x������ � �      j      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      n      x������ � �      p      x������ � �      �      x������ � �      r      x������ � �      �      x������ � �      A      x������ � �      I      x������ � �      2      x������ � �      �      x������ � �      l      x������ � �      �      x������ � �      t      x������ � �            x������ � �      v      x������ � �      x      x������ � �      b      x������ � �      z      x������ � �      |      x������ � �      ~      x������ � �            x������ � �      �      x������ � �      �      x������ � �      +      x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      )      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      D      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      Q      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      W      x������ � �      E      x������ � �      G      x������ � �      ]      x������ � �      M      x������ � �      a      x������ � �      U      x������ � �      �      x������ � �      �      x������ � �             x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      d      x�3�tL����,.)J,�/�L����� Z��      B      x������ � �      D      x������ � �      [      x������ � �      K      x������ � �      !      x������ � �      Y      x������ � �      <      x���oR#K��?ӫx��l�)�gn�`S�bEݚ��.%�K`2�C[AUM�ݰ�'�=2R:.4cm�(r�C�q<���ó8*f���������ms���}�ܿm��mo����Q�_�eV�/����?�*��2����f�Y�m~��GK��
��>�?���9}ۜ��
�����o��������O���>ݰO�o��}�ŧ[�����݄���: �>q���m���}��z �)��c|j���_(|��#�2����z/�)�g������XO�YP�µ�������x���SŌp��Hs��E|Ȣ��xs�M
��"-&"���E��K|�/J�R-��b��u����X�#�K��y���4���-�g���5�ە~����l��l��GJe[@���[X���/�?�(�
����nj��C|���Tǡ�".��b��8�2	�e��@uZ@��D���Q�r��RA�ZB��l�c	Y�K����-q�,(�8��"^���p��XɧWH��H�k�����gq��\�Y9T�%\z���<�r�*��-'���o�����x����	��4*�2.��[X�!�PUr	%�����#>�y�Y�WR��Po�m}����D����-!ݲߚ^���YRŖPl9�{����g��OJ�r� �j"׳��M��Y�G!TT��U\�'P��c}�g}V��2&�ć8���. dYU��㗗��**�
���Qx�ږ����PQ)V�b�l=LYE���ǩ+���ᓙ��C�+���v���抇4�WT��X�t��7�.�t
�ʬ��j�LqD��,��Y�����
-��gk����bkvZ���q��Ũ�:��ú�5ƻ��>&�T�5tXo��9���WswR����->q6�qzT%�T�5�X7�Cp��hg\[k��ʬ��k�2w~j*�⬷�J�+FU�T�5dYOd�b�Ҫ�,kȲ� [�O��l�@��@�_߯�Z���g��#���{�|������#]�I�*~����Hg��6R["���.�ʸ� ��@dm��*��ޅ�ma��m��e5�5{hӇ�.ͅzG��8Ux�����߈ο�ߓ��	"/b��&�vx�7�=���U62��Gv g���N�p��3p��������}B�����n�����|f���t	�5�&>��S�����؆k��o������(h�r���56���������6@����牺��G���f�ۋ	��Ň���i�"������e��L>�=�dXW�'���ӣr���t�[��8A�G t%��k"��hW������)���8.p �¸Վ<�|"�+��7�:¡��Jp�6���4&���g����*����!�ȧ���J!T�훥a���o�}S��@%l�u�/(���~�Wu;�oө@�g����������S��®"s�.��ۃ�#f=D^�'2���C��C�Ů�u2Y$[��.��!�l?b_�j�����'s�GpD���H_�>K!T�=�T�zs��d�(*�>�9`yz��������w���:�[�c<%�8�'�ucs�q�zs��� �,|�6N�?b�hz;tԆPį���^����Q
@Ȩ=�o�!��Xx�.���0�0��%��DXBg�!��=@���2O r�`��$��m�Ɋ��ב�Ҩ��]=�:��{��=�RPTC1��دm��눠�*p�-F��bd7�$�+qa���7�1а������W��m��0�lY��Y��:��7l����AZ���(���=������p��[g��nkL[(Ngųe)O�-�#����	Z*����?t��ȴ�Q��1#�T}�~M|�3u0��sFAb�EfՓ��{�˳GAo��n�E�;�˳I3\�kS�f�
�y��� "F�^�m��P�����&�ᮎ�7��EJ�g�+S�"~��F�9Ş�xZ[TPd{6�b��qd��C(|(�U��P&������&��=�G����_��25Nm^��%�%8>A"�ؓ	?,Lbǲ
+�ώ�8��)���A��+�`��f9�*��$�-d#����݉a����������1[&0�.$"�����)#qm!9��>�K)ɁI�0��M�#
�K�ȁ����G��H\[�Il;�b��q�bS��!��<�@`݉��6��b��ʁ���� �*����S@�dw8�2��\INY.��"~��Y|��H9Ź%��c���nUqT�[EVS[�=[�JP��0jX��Fr�@�;��d̹��}��UT����7�_5�������O��{�C��62�͉�m�¸�W`��S��Ҧ�(	�}Ճ��I�|�ģ:�6��Wx���V|�a׆��^��E�ok�g��;�^�"1��ݝ�Z���!��� �Cr`2��ٷħ<+�+ ߱"s>�ĭ��A"�D�W���j �k��#n=-�q�[�h�t����O`܄�0�Y���Vq!q��{�v�?��|�1}17�z ����5o���M�	�?$��D>a5yi��)�&R;��Ʃ� 2O���/�`��Z��N����D	�~���z�)�A��o�g����cWgY-���Fy\mM��=�9�ª*�u�t���:w��Z�e�t��If��C����9�	vP:.�<���̂i���׷��U�3���b�:���x�ˢ-�۟��x�Ж�q�M�WR�?�Q	��B[�D�Y�^c�k�B\�-.:���Sɩ�m@"���2��s��-H|�M�,��0nm� ��ܖ�G����H�$�����K^m���/�����u ����܆K7��7w�l�������������K�+@ڿ>O����J�\/wi��Ȝ"<����L�ɿ]��!��0�OWƃ���0�Z�!���"�1��+9�j��g�.
́������Z�����\�fw���8ێ���~�`���R��;�n���݀�@,p~U������@�.	�M�/ x'Z��
LO�ǅݗ�a[Q���]f�"H�A$�w�Z�7�hCry�5��?Ȑ�=JF�`\�}�!��T�����Q�������H�ʦR��b��"���!�]0�Rz`x�>UiJA�q>���`fyR)�U$ዸ	�a��U\�S	�?�� �<�����l+�b$���}��|ɼ�!��!��* ������~��P�s;�V����_ŲA�i`h�ܷ�h�������9`h�#{�<c-�ׂq�u��O#��욝s����?�	@&��W���ĕ4.:���.��'�f3`�[�6}k���O
���h�$�(?n��A��/�`n}Z��F�G��]U49��* ��#C�*}����ݩe~n(�^�B�a5V�g1�-]�'
7V�У&4V闾�s��6�0�	Ew��Q�X��Bz(B'l1̄�g�f���V7ٺ
�k���YaZ�>�, '.�gui7��/yj�`\�$�J�n-��!.�gjىL<��,*0.�2/��vnӷ���y�|��j.��n��^@������l�YIp�x\��^�-�̸1Z��D�x=���(=�_�6?٣ryƋ%x�+�y��)bnH��J/��x��������9ZB�%�].�G/�%_B��l9<Ƕ�K������<xsei�-Tx�J�A�}�|徛>9n%��$�p��<�S�n0n%�$!UYWY�=��e	��h�I+�W���+-K�DElBL�btf�yҲ�ŊW�������qH"k��L5V��Ze���&�N0�M����/Z�D���`��I�p��*`�b��J��o�m����_ "#a%q;�����o��Z��%4�<n�Uޞ��n2SP7ժ��j�NǶ.�M���%!�������-�
�.�R̛d��B��<�Q�q�9j�hE��%F\�5���2	��iL\�5μ��V�f4:�!��q���|�5o�q��P��ə�k��e[R�VC���gi�$.�b'���K�D��%�b<.�bg^�yT�3p��8s��ۘ�#	��۸�Zd���_C��]oy���    ���E���=��ƍ���-��ٗK_��A;`���d�ӿ���	�qHj}mk�$�|��K��M6���´�Jy��h�ۓi���bϯ�[`Ȕ��;��4�ӧ��L)үM?�'���L ����Ѭ���� �̐-س���� s3C�s�oqщ���~�}�ͫ��ƭ�F�����D������9[�d���� ��rn!g��M��X���`\�-����ȅ��a��[h�-o)�xa�\�z�0���f�[�m����d4~gak�k�����,��ֳ��Y�Z(}�R��N��i0V�\�]��!u�Q�����#�[���+�&¹3?;M��!LEr�t��� ��>rvlA�\J]$��r5�'+����$�����m$q5uHDM'6[[M�b��N-0��%i[k9�a���<2K� ��T�.�2]�>Z?���spJ�se,�bs哕�o�N�k�S#ؙ@{��@So����GәI{�Is����+=��Hn=.�z�4%�]6�^�p#�al>�ˈ�b��`\�=����<�%E�����̪=�mR|�Q㦊�v��X W��i%���Vg� �K؞7w�d����A��~����3>9�f�⺷��!�Sgs0���`�s�Blm��mb�M�H��q0dK�����Ma�	�)�:RSj1�x���WV���4������*���5�ܐ�-9pf{����9`$*�aZ�#�oa0n�C)&�Ҟ��Mx����820��q�C�Vo-���[v���`N��0Z���wq4�Cr�+�E[�����7W_q��U�V�҂�s�on�7;�:VF�]	�Ff�+��#�qj��96nw�WxbmG1w�ڪ��zmH�{)eڟ�����.�����#Dz�f�d������q@c;��`3�M\2���$�,`ޝdS��9c�`S�G�2���Y���x�0�������"�\��("�����P"�\��֤�]ޭh:��\�@�����;�xõ��s�2FҼ�v�u!��I�?�i��:I{X����t&E��&�$� 2�Wy0��ۤ���^���+��i��F���})rч���_�j�s�*I�U��tL�D�k!9�9����[������I�&�vV�Ť�O��Ұ�g}bRߚ�����բe��Oй�����a�i��m�,w'��5^tN)��}�l�Q��]��fE�Vd>��Q�~��)jM��fq��E���
�hZԺU�KrAy\��H�����֙�./�9b���fܥ���
�Ō�4mo�U"qô	���h���̶��ꮍ���\4mtsm����U��[Ds�#;M߰���Ѣ�Վ|5����Ab/yK���ԑ��=p�ZF?�P���"SM��l5���C`�P��nY�����$� 4�ӇV�չ��(n�Q��C�j��;R=����i�x��!5�X����88�1R�-�|�0T^I�$n�]R��diԸU۞a��J�
9mZ�~n���e�F⃋�6�Tϛ��؀�@x�Bu�7��I��igXq��f���SˡZs E:���6�yГDֿ�`�����	oe�;Y��I�CZ�o ��:�b��2��Ǧ������Ԅ��$6kf��S������.��f݌��'m�� � O�J]���值4�adO9Ś4zrj<��iC���Ƃ'qJ�RӬ��DO�NAv�Ra|�C���~Ft=��(ֱ#�I^o�
�k��H�?��+��� ̾�}�hW�ִ�Q	��ť���N�\v�f�G�^K2���t^QI$���S~�\vmuTr~�x�y�a��ƴ�~����lX�ć�m@"�K~��r����n�:�sF������a�1���� ×��jgq�M)Xpk��5�0d�x�F�-o�[x|��
�H(��.�^B0�;��p��X�|�m�RE��wP�Ӵ�Ɣ~7͞����YX�N�(WtE�<�\����($.��&q"����h*�g��8�+�T�x�4�<ⴹy��M"9���E�m\��3k���j����zw*���� \�=�S����<Lf:'��C�,��/�x-ǉ���;�C�';m���g凩��nH�|���!R�8���F����� [����#ztB���H`}t�,����{�����z���۾Rx�.��C�<Y��~����Խ�� {_.K�9׆�c:��3��~��<>�C	/$��W3�����`�Fvm�������5`|��GU�҆$��yt���a�L6���(n*�~�~��\0��|����H\�C�?=J�0�	.�F��sV��'���=5���"���������f�;[>RY��S��ᯞ�A��"r㝟��v�M3,�f߆/(r�i��V�����
��խ��'^3i��f��V��.V�LO�)��Hm��%C��&"%�͠t���j7�_+[AnlyKC�_��>���\�� ]z��(��i-��k�¹S���)p�9�>.oGY�F�kZH�s�C��J״�>?�Da��o��������C���W�����󵍦b�<|皖Ч�
+=�>τ9����������sN��jZK��^�$ڿ�jZ����$5-��jQ��D���^B�l7&N�8�6d|[�������'a������K���c?F��۲:��!%�9��d��WO�r��֓'a��<��ZI�~�U7��lOtk���̭�� �Q��-��M���U��I�/��F0ހ�����t�J}	�ğ�ZƛW�.���t�b����K��0��q���T��ӽ�
���F�x�m��i��ױ� �@�<��HW�����><X��ɕR�@r��ˬE?戥��+����E�p4҃A#�ZEun�;7�#�$ޮ�.>� ��5`�n��x�ک5��I��ծ�A�QS�����;�\�`�\:��Ϊ����"�Ը���^����P�Xf��j��	�y7q��!uf��𝮪����-����n��=򒘇�@��u��)k�F/�Bx�����Ӡ��ֶ�ٹ˰+��� <�o��?r>}c���L�� ��KԎC�OM��`,�7�
��M	ﬖ�;��a�v�T��Ͻ�[���č��E���|jR�c�,�郰���Er�h`����[ߛ�,<n��9�t��]/� 8�@;pި(�	R�G��ߌ缭�w�����.F�;�R�3O)?f�����"3�q���>#�e�^Frܤ�w�=���Y�g�q�#�۰��\��Ȟ�>2�)eaI���
�W�9�%dq���ڔ�X��g���H �K�:�T�F��.-��O��/_G#7�ui����$6õ��.-ؔ��=��#�J妀4/��T�R\�H��j���\��̔�- �]�<sl,"�R�?��$C�h���V�$xiaf�+�N�(�Y ��U�i�}��	����̑�eU��m�6��Cr�#�Kk3w�D�p�#�Kk3��EDHޠ�0�}${YU�|$@0\����z̔\|5 W:r�-����K�*��yݖ%�=��w�kI�K���bA8^-h�4/�%��ZP���K
	^Z��&�F�R�{�D)N�ˤ�Sy\UH�Үŷ�l['/�8���ǧӡ��;'<Gdx|[�^t��y�l�)H.8$uY�b��o)x��a<.;dwi�b�
/�2=))T�W����)�̮�̮H�vlv}�����xUbw��րo�h�Nv���?�Q�M ���iv�
�5J�f�|o�j~>ĭj:y���)7�|;�^���[��G�307d�;�o�X5<I��9ř���� ��k���GM�A*�cs���Uq+���!��k��[�#D��k�:jZx�z����)*8�7j�
��w<E��Ct���Cl����}G�����ƨi��X]���èY6~���5[��D��0FMk�GI�S��wD���2��#�<�R���4�Й�����v��p���d�0F���V���x_|jE�" ���Ӻ�*�K��C�җQLs�WӦ<    ��W���E�բ��X��Tb!3�P�o܀J�19�v�Y1������AY4�m�`Z�.�un�P?�y`Z>�3�Y1��"L_��U���� ��rv�PՎz��!<���D#��_�}
���,��e�K�C9����H\ew	�HR�/��Qր�j
��gm�4~/<.�����/��e���:�� F݊��it��Tpjk�#�6|�.{`�mG��|b.q�M��^�,�1�|\A�l>�͊�l��)���oW"%�i�L���\A�N8�٪��g΂���+��ɹou�K������������m��+���!�a�����_?�p���F�� a�����I��� a.N���q	r�Ț�~�V:ϥ?��x���!gַ%��{s[ʅǥ]C�N�ܴ�̌��!65��� �St�õ\C�~���%ɓ���kh�UJ��ʼ���?{E����� �C���\߭F"0l^yyS�@���YB� t`��\�Hr�`�0�a�z�i���4y�y�v:���S���7�����S�)��0M�;����t���KS��R�MO����*e�9�	FpH���t^�:ܘW��45�{���ZT�YӀ���d��/��
kZ`�3�N^J�͸T\�Fw���~�V�Os��,��Q�K�8��!²m~#r�UD
��jg�qy���4p���ti�ɭ;�������W+瓓����Z(���_g+ֵa��[���f*.�G�H�7r!;�����h�Ka\�m��!�1���-�Ā��z�ԫCm�xr�B�������Ҹ�a�����1����f4����C������27ܮ f�{Q-Jk$n�.2۽�T"*��lW�AN{_fen�]�6��Dz�d�r�����Pc���XM�+*m�<���,G��T�d�F4��ER>ͥ���4����t��C�Jr�8���g.��>���� �H��z~G\�}�O�Y@���$SI\�}	�;�����;g���ه���/.Ƴ�p½�Ŧ�Ž^o�PWR߀���s���¸��0�]M�Qq�pU�0���s�I�ӎ�z|�v�ԇ�D��8O
�� ���ą5�@�mF�>w���4��c}y<.�l�<>�A��q�,S���we��w%�������e>�"s�l�s^�_(0��JwGi*?��+4���sW�c�%q���S|������_�0S8�&����e�إ{up�0 �Cӛ��4�v6ç:���HtpW���0'��:}3:���V�I�dn�>�1����w��ƅ7Q�Q:���V�6�6A��2�T��hh�[����a��Z�����X��lF��Os@U���Y�1���ٰڢ�:y!s�9 ��>��)�h�OV^��4� ��0�6^=���i.�0o6��Ȃ>Z`ra.�0c6�U繫�}��0c6���'kN���8äٰr��;����,pq��<U���z(�kX�жӣ��vsuP��賑�zu�`�:�и�y�
�[#.�q�#�ʅ���X�Y1\��y�Z�47�(wG�- �OZ%��+���- �OZ���vg��֢*�[ҡ�Ph���/7$B(o�Yi�xAa����ҡ9RZ:��Z�L,�%�)-�1˧���4�I��V�����#��}�[��`�Ǖ��)m޸���-3���h���u�0���#�"�ʣ��6|��l�p����EU��8�q�y�c�ĥQ� ���]�������׶��FՂD�k{<�q��U���H^X6�#���\J��.2�\Z%:`�p42���ĥ��xn$>�3�x��[i�;�B|}��p��J�"i��Z�	�Y�k��~E9i��Y�p��;[�S����$Õ^C�N����,������؝&})Cuc�!q��;�bH���Gt��0�����6�YW�:��K���۴���n��)�\d���K6��ba�g���ǣ������<B��� ��41���K�ب|l��w���"BI|�i*�x��+ ���T�y���Ǵ`嗆��N�����@(^��
�?��y��i�'�܉�	Y�U1\sM�U������H��z���-�� p��� �����*�U&����Q�\��Ω�{K�쓎���-@ݧ�����BlK�x�6����V勂�4�
`NI�\�=��T$_�`4�KRjÞ�I���qĝ���ml�[�lɟc�"�Ѵ�h��Z��x^.�m;�����E�F�� ����%��a��v f�VDķ�Ԯ¸�u3�h�ZCj�kU���&��⾺X奯�m�+��	��ѫW����k���[Z'�tSܐ��=���3������b?��P�Th�}�S���z�޶k~G�y�4Y=��R�\�]<_?~ږW����z�$�SH2�s[<r����}��^['��������g���Y��[zM�¸��0��ͮ�is�qI����HN����W�𲅼�:5�{�W�*�k�VrH�Y6���0�x�R^����q��\��2�[`�F�Ų��o�4$�s�I��"�`ߍ���� �M����K�4���H�z����x�Ky\��<���"�浾&*�X��<���*O.�`�����^X?	�Z��27$W�.���S��#�)�,f;�"�p~���BdEr=�n���h�&��:<K��_��Z�"��{�ƾ�
�
:��)|i�o�P	��{��#�Ʊ��%"�2���>E�hU�.�K#QIw�Hܕ��^Q�d$�j$.[��G���7R[�='�gd*[��#y�y�S�ב�li돋�J�PR5�)[���AK���_���4�d-�3����~� 6�^�i��{����c8_��w��r���P5L�5[�G"#�֋_a�0��li��!� �$��t//Tj��r�4�w>�{C�)Ζ���x��R���3h��$vw���S7Ңoߛ�ʹ��-����#�����Jr̳�E'+|�qy���^�G�!���
�\��gEE�c�:��T��xAT�xomy���@�G��O���u�~��)TnQ�T��Mj�Ә
�RY ������`cp+*K0���}ɜ@!q+*+�����Wz�K1�x�wS}a��*{<�x�&\|��J<�"�r�p��l>G�.�����]���"�	��Å_�����3��W��~9���pk���~�)H��j�h�2����%_ �+�͚�(��*A�/$yJ����Hy\�U޾�۲��Ƥ�M���$�`�K�]c9�b�T��+J��1k�($�*������q��L�c�sS�p�o�g����AT0Vb��ql���6�*X�!9���A���K�t��^Xn�-�k��H]�M�r������E]�/���,- *<>C�x�"v[oYh�b��٢�A%��u"�q�P/v��9�n��;´���gM�K�ɧ���O2/J�{n>U�0d�x�׼�A���E�dn���sּ��"�9�FsH�%U����st6�A�P����_�O�N�q�h
��e��tn5�eRy�8�<����^�{�6�T��	����A�w�x]���������Π�/R8�E�6��+��u`�ci�{��1��x��9M|�`i��5n_��Lz �9��'-��h$<�C�⻷?m���z��߀���,}b�E~��{����)��⸠a�]��2�����V�wo�����>M�Jrn����e���ui�W����ܐQ}7 ���}��%d�g��f�M�k�$>+�=H�;1hO�UT���������T��;�|�"���#8��l�`<XP6%1����57 ���n�ٻ���ąؕ ���7��b<#q�u���_[�{�q	v5`����i +UV0e� ��*�[�����Z�x|PZ�XrB1\�]�>-{���-F��"���T ����ޢ���0[�nX��������jV���� �'�S�]��+�k�/�!Z�8�8W �__��"��b�)2ep����9j��������"S[���.����7`�+zN���s��-H g  �3�R����p�?�{-?+���{�����
v��!�!g!H1F	�<���h��ҋ���&/�4*�� i;=ܤ�� \��͊����X��z��Y�6��,�h.���cu������hv��7˄�Q��Q��TQ7@׬�����/��Y�Na\�����a���IRI��[7@��]�+K�J�����n�"�1*39F�0*�`���u=ѭ�������5��3���ǉ���Óo���~�;��VY��97[�G,;/@���#}9j�8���x�S�b�]s#Qsǹ��馦2���|��&�{���"����45z�jc����=zC���]��R+�I�gE��ދ�&u�%q�����Qչ���+�f=��^ZJ��2�iH.����4����C���"ZOè'�O�
�
�[Oc�iOs#/�0Y������v��v!�3Ar���?$R�՚kHG�ˣt�փ�w��zEe8"� "�-[�EV����b�Y������:9
���u���{Q�<9za����� ������Q�L���8O��7@H��mw�Vր�n)	�ࡊ�$<n`eٌ�f�/�FU� P��EJ���U�C�*����;���?�W�(��U��l3�{RB�n��m}����49��|?�����*K�)�+��ҝv@�vR"�+�˼���~d��K�4$�|�;�N91Oo!=X���^A�Nw���S������ v�CI����V�|ɳʭ�����`��+H��PR�'_؄�e^�"ۛ�b9��2��QI\�U�a/�������&�z$��������Һ ��v���D�j$.κ����u(���YW ���m��e���`\�uP�!%��r|yl�������=/���?�l�<�ާ�5�y0���;0��P���R�H�C�A"}e�4�� �, ��/�^ϳ��g��c4?������~�^�h@a����h8$��Ί�^��"|ʓNS��W�]��CoJ��ij��z�lI .���m�xe�[\4M_F�$]` .������eKe��S���<��{s���p44�A44�.g��W�*�����J�{k��u�KS_LZ\d�RjLs1>w�gj!m�3�%.&\%qE�P4s���)��$���fӉV��7���¸�[���m�3VR>��H\�-4���%��4����[���Iy�IOi�P�(�K>8�!A������0�n�.��m~���X@(��f�YZ�j�W=j���h��X]�����c��.pxB����U �J�����f
��Հ��ji��s�T�D��F��I&��=�1�����ST5�8#�CF>u�w�1 �<g�{�����|���W���`�
�<k���1��4#3�Z�XI\}Ҿ���\��o�?��З��uK6��6m
��R=.���D�����S��Ƶe�}��P�A㇄�$T|5����!���+]�8f���e�w`�|ıEh��c�q��=`^�c'a��pu�0���L��m�/�5>�@�i������k�2
���SĤݙ��̇0z*E��b+�+}���1�񨍽�UI\�.2��/��8A��}�ޙc�}�ߜ�+ݛ+��}z?$Z|c����*ㆇ�`ޚ/vx�P6����*�3}5���9Hޒ1F�d�%$jQ�e�X��rqO���}��D�5�e��orS$5'��s�:M�lG��Dm	��Xx��D���>�J���z4$|���*V�Y!Qs=R�d"�[^�9А�\�r0RT�x�����;];CE=��;����uXv·��~Cx�}9Ç8��M�
�_(<��y'�zy�,pt�}!jkCx����I��1����K�I_�[Y�6��Ž��Ŝ�2�Y���@{^�mUy�.7��Oh����N�S���U	].�6��+�8���0��Iہ_P�GI=\I2�����0��`������i4Vap�30��R��4�\Ce��?����wĕT� ��w�CJ�z*+�x��zV �PY��Kl�7���	#�y�Ҧ�%��Չ�#S����~�L�%����#ڛ��b&<.�Y$��4�GΙ�KH�i_�b���)+�������ӟ�?�-�<      :     x��Wmn7�=>L!~s/��0�c@��lW��É��l�mx�g��F�@ ,�7��yofhb1Lcx�!�0��_bXİ�a�K�V1\! >�<�w!A��2P&�L�{ʹoD)(�B�)C�HB%\OYf>؀�@�1���9�/�<�o1<P�%}�O3X�8�Sft.F�N��E�7�߃p\�7������w <�c���X��P0�q^��xF�GN8��Y����|�[�2)7'~�'�!�zw��L���M����;��]�lNҮ�2q -�u�[N+���=N�����v�&ì�皂d֊=j�R�߹����*@��̇�r�[h	*��8~�+���Z�(M~O���!��}���� ҽ����`@١����H�|���c�Y�9����b(�u��:�G��΃J��B����(=�u_�XցN�^R�*� ��N�h-Jo��x�P|�r�����K���{��*�I�2��<ls��
Рuxr3��D�ݬњ���P�g؊.�C�u�8S����@��v͚�k�ty�L���|�:kfy��q8F>R��;@y���5����5��>�N�@�*�awK���?�B�*�<E��AN�1T�~���ˎ����P@㪢�-^
�3�im���M��F�b<�F����a����nY��pf�O�J��k.�5ݪr�j���o�w���<O���,4*�k��(��nr�S+�kz�P�3`{Q��D:��M�d����`2��9TۉҴ����ň�������ݜ�������4��t�8�1՚hg��|Tk��=��:���\y>|�=S�U^�2Ův� ����˶]�n�\U�/�s��n��@/y�v�Qf��������[>�
������Ͽ�#�\���)����cx����F_7�Ecv�rrUB3v�w�OBA'ˣr�b��S�r:(�p:�N�Q���*��:~�*4�;��&�wI��7�)��O�kg8      >      x���r7����y�9 ��&�
�b|8��,�o�7&[&�Q7�a�M'$Zr���R�A~3Q@VeR}c�U��:U	 ��va������������Oߞ������o�O������|�����#��]8������?�O���+����d�������/��I�H:�⊄��j���H?|{�CП������������N�ݷ��=����#��o/o�=?��x��?�6$�4��Z��/�n�B���@���{z�ˌfI�����&pӑ��O�oy�����h4���.I�!O�]h�{��A�]�?�����'��ɷ�g�pK*h�иk=�K����~Ɂ4-� 8��>�׹8�ω������;�u���ȯ���x�j���|�;��;z�'��f�j�r�[��zI�>���r���i.���/���nH����BZ���=��/0��kљ��U}�xj�x~�����iT=*�A�wJ�
>ٕEP�6ExĤ��G�����$��'�&���������_�`�j�96�t����b����}���T���#}��>�8?����Z�������?�� �Ǟ��k�x���`^<�b�$�=�=}��1Ao�3خ�7n�~$����YM� �OO?ꑾڳL2���.KY��]��x�"��O�?��]�,�Th�Q+�Ѣ�vZ�8ad}���H_�	/g�"��v�|����PQ<g"�[p X��/��w|ycQ#������	�5����2����բHU&�i�e,\�}��y��ݧ�� ��%��wt��e����{bST�(=qm�؛xީ��L ��'���^�����`��H3�e��Y�h���"=d���U�,%}�%x�b����!c��+��`��PY�l��4���'�q�"��3/y��pۖ5C�ƚ�T�٧�j���!�+3�{�i�H��M2��i�ɿ�J���`�u"c�ݲn2Y����l�z�� ��pk0������*~ ��L���Yoe�������qh״~ ̋�g�6>�c��V�m#D$eS_���$Iհ��J�N��&ʬX�v��I�z"�m{�?�����<�oW�a�M�/�>b�B/�	���7bq�@"�v��#x���46N�ߙLӫ�����bb�<V�S�.�>o�=�Q��l��b��fH����<��8��_�]_�X�Qk@�&����4�>�	���M�,ٮ}�2֟�@��=F�&6�u[J�o�`¤:�h<��C���E����v#�m��O=�X�(0�տ�����?3Et���8��;���<�׼2����|�0߮�� >�������4�d��?�п�a��d&0�E�'�6�Lc"����<��ir�W����<����m)YՎ��n��c�):�刭kk;LX�̩�E%��АGSJ��a�u!k"���|~����6��w��#��U�-%kXÁ����k̎S��X�k���0�	�����1�^��
dM�v՟f`��u.ॅ�{`͇Y�m&�i��@���fR㻙���r���Խ�wqS~��?�ϦDR�H>8�8�⡲�N����I�V���
NX����< Kʍs*:tV/��"FlIy��xg+��/<Q��5���<AD�'�i:��j�$�[������5���\s�G�6 5K�-I1�m4m&g1�������k���"��s�(��8(�4j\�^���ۉ+!�
�槽$�^OH: �z'��ФK0=�/򬲸`�]�mF���	�w��e�R��'���%uc�߳+��M�C�s��?��P֠	_iV\ �v%ocx�W�Ag�J�v�lg��^A	P�U6��&��\�h4�V�Ҭ�t�ۉ����@� .h�\��67¸m��)�����[&Ҙ@7�~c���O`Ș!��+��|���6G��ٵr<DZ��r哃<ŕ3�������NFց~����цH}��W�C^�>�vI���jp����\.?�|��&O臞��Nٸ#R�O�n[��Nq�;jI��݇�0�3C����3���rZ��5��5���y�S���d@�,C��?�/�&�JB�#�5�\��4e����Ԯ���)˸Z>����]Y��ZF���k.��D��B�o�@[�[�5d�������� �ϵ�h���L��Ab<�G�}�
Dn��L����j��(O����u��G�Z��I�fk���1ƀ�n1	o��y�?-�l�Vr�w�f��q�m=4��i��a�߆@�N�'(��4��e]X���(��exvj�!?z*4��џ��t% +]+���b	������㐅q���P ���<Hm.kSW��ϕEx�FT�Vr�wX�ne�zl,a�%lӤMe��T�S<Ц謘��Z��[�՞�2���4^�N���1�z��ս]t��sA������Aa>ª7DN����ٕ����H�����;��Q��=/8j1j-!?zW<G�㒼�-)@R�B/�<���]���xd��h�! A@�� �F\�t3$�J��is�J�IF�G�a�ʆ�����((\{�ZT���a=����_ŝqM��=�_l1��jc%VF������a�'�ӲG7��n}�`T&4��^������O�J`'���^͚��8�q�z����!�YhV�6��By@��~T섷���4/*a��{�����αe|��P��������#8�Qz��4�h�v�4�4���O��Φ�	z�]���TRb�k��d��B�������&�U7>��	 �z��҉h������ |��6݃n��JT|�0@����� DԷ�t�̒sq�м�o��a�
�������P
98g?��ݗ��u-��E1jI�hi���U4�ghHߑ �6!@���4�K���l@PH�,�Hܙ���b��' �O6: ��+�}q7PR%��1����|�2�	�G�)�,��7�k�d]ق(�6�t�jA݆�&��A^�1����Aiqm��! A��#P���\2�h��ݸ7�A�5qޛ%Z�M��t��]�3�%(y�ϒqh����%�
���MC���5x�
�
���P�%c�P���cЩЯ>g~�e_dФM�X]ʐ'��L\��N/Q�Ӷ!�������ߞ�&�~Òa�!��AG=/�綼���o���
#�ZoK)����m�N@y���?He��]ͷ���^��X)a١ٸrÅ�qbL�~T\ ��*'�w��F#Pm��cA	Pg�{�6�.��zp�����,h �dLp��j�b�!cZ��%Zf����,�?�uШ����vR.Vy����DJۄ��iG(OTGhRP ��b�L��\�,��򗸀�&���H����u�z�!���]{��������p�
 `�U����;��N���]5�ݔ���	ܬ��2d��SI�4��3��z(�Y7�g���]�� ZO-w�u���۩�\rR4���=�7��m���P�&2�9K�R�43!C�^A�f�]I�E5l��tښ���0A�6�_D̹��@������=M�߃v�LI�����;�Ӹ&���Y\7mN�Z��%�ԇl�e�n���;r�����-^�T�H˖��C�ʉZ|�9O�C��U��a���/�N%��	�v$�yl:����JC��ds���HhTh ڌ�z�kq\rg�m4�ٱ/��:@�z�O�Q/�j̢{����L�G��笋�2�k�!��cC#�i'�I����q&��L-�V�K�B��X�"��ܘ��
��ϴo�8hSPag����N��Jz/Et�,�h�u�A�Yf?zb��E�*5n,��B�_�p:cZ6	/(Ju����?I���N@�ܽ,p:m֑:���7=q5|m�W	ym��2QX�h��/dY4h�o�D����>�)A� �YpnlP��3>z�>��U:)V��t�y�i])<�6
�lng���n�d�+��67��iw�G�%Z\ ��z~����L�J���4A8��q����ϒ��,&�嵙;�a�S<��;��h4�Ĳ;�Z/�<�6��R"�    [��C�@G�}��\a��:j��UU�͒A
��2�g�eb$Bd�� �"�Q�� (��A�����h���[��%��B�^-�l��<L�t0��p�X\n�U������6Gz�K��'��vD���"�*�ǥ��AY2&�����Z�z����(���hӆ�d���t�{S2�,.�E+8jS�-���t>x�_,ɤ.�py�e���U,�?6�\3TNI�K��+`��e2����d�ds#�f&��βL�l�K!�E� F�[�lgrqn����4!�*�͑ʌ+o��ρ�YA�^�O�o��&�l�Ф#�Zl���߆k@=��)�*�_�(\��X�H��Po��R|��c�!fT���U�F'��Bi`��l�����7�CL"�[c�n���-H.+Y+՞�F���-iW��_���d��%�ߍ{�&�q'����nс`��c�Jq�%��A���Y
�mb ��d��x�7��0B��+1.?�~�h��9|'��X�.k���q"q�G�ٟ��6������.Q��@(i��&��8Aoc.�CrZUwX2�Am�2(���P���\V�6�	�aΝ��;�OP{��3a�P��]����P�OP���㠌� =
:I顚N��`�Ma^��n_��=*�&xK�!�NŠ�[��Y�Q��Zn,U��H�b:r��b߁�J4�y�/�qy����`����5݊+��FG�u�E�7����ed�U��4w[+9�[:�N���N�0,( �)^'�;�(i
���/^2�$��� �I�Â-V�9�k��E�u�b�oK�����R�}�?64 Һ��t�h_��k��M�e�!���fp�{���z_Lz܃�vU$I�@ld.K������s�AL߃�BkB���<}�U����2����k7ew�r&�J
 �LF^�h�[�RY��7�S�������:-n�!6�i�������FP��>�jT,"��
q�^�p9�Ɩ�)��#7�C�� cq�� �H��%��(4�tr��ڭ��B_���m��e	]mH��?5!�� �FRIpU�S6e�P��<��kр�,Ao%K���Ae��G�V��B}�͵dJ��S��8dmU��0[(�'Y����is�������]K4(���l���_�=Q烔s2��jY:π�=���-��;�/�̗�� �sp�Z�%�d�h���{Ur$0����� `�P��f9O6с�:~*q�3�N��������2�'LƔ����l��Go��m��l��b^l��[�p�К��i�H��).c	��4�O��=�'4�o���js��?mz�X()�$(7��o`����}��K�6��SW�~e�{��h,��67�k^o���Զ�t8�M�lsqN�κU����ƄgDSl�Bd׸M�*�@z��[IA��N�*�1��_���2�t!A��b�Р�5�5\�Q�Q����dS��P�QXz�Z(4h5R�^�����Gd�T	�%�Ǡ����L���m�n�m��j\%}*~�<�DB�&�w����uy��uBn��b�=�UZ�M �zA�3�,n7����lW��	�X�<�Uz�5)?��~�,��4<��Ȋ�$	��6A�2�B����ۂ�#�-��k�	� \�*}�h苞����AYh�:Ȗ�EYP�
>��Ꝭ��υ��$p!n��'g@К�.���Q2�Hb	����	��pu��$�H�鬄���7��S��؏�T�����y�}mH�Wo����Db��}��݃�AZ>U���&4 �v2bO�dݾ|��������~$ҋ�����1n��޼m��)���4.��w�f�OAe�/_���nˀʄFe�.����BM��P�P��AYVq��9�4�9�. ��]��$�c��s,ߡ.}����}*� ���s>MϠ�z T��K��! ��Y�`�`��pc�Rc��ކ"�zk�d4Y\֗��G�җv��`�:/���8��I%]��׃k>V��6: ��m|9���TA3d���U��È?�;���5�=����fp:8����Q^���1�]=�37ȝJ�:��2E��8�F#��D���u�K�J�U�&:K�@e��9|es=�a'�y�@۾|��uZ�����q:���-a��r�yWu�&7�xK���oel_{��ǁB�U��|y���(��bk]�\�vM��`���>���Em��x5.K������ݒ���K-t �ťOR����3m�#P�Top��@/~�3U�n��,qu�_YL��βMt�V���e�wos�#�� ��ռ~
�B�>��<!ԧ5���;A}B��/J�Y�1Z?�6
�	�zl<��4l��G��T���ʀ����!�1��i�N[v����G�E��pW�!�Qr!�$})J�A�s@��Wג5zgs\�'��J-������9%\���� "�q�V�?Z��6�m�/ߞ�?)����� �����Fp*��%�D����;I~��t��b�K����*�s�2Ϗ��oB�@�k�Tˑ~��?�(��ֿҽ_�k�/4Vk6��20�QҚ���ᅧ��H���:4�<�|��ac�ކ@iW�]�����+�ep8�;�b�U�z���&Gn`���dI��lȃ���#��Y�m��
4�՘s"�~C�Zu����:0/��6�Q�6��@IS�a��W��Y�z��@ݻ��'A�h�о��0��A�b�6����?8�����������O��w9�s�M�B#P�Ý�%pܹH\|����:pX~����v��N>PA���^Jk�s�6�ZΫ$����*�Roq3�ys�5���9�|I�mO��P�L�z�ɾj��"�߂�#A���Kj��AG�Z�)�)�J,��$�ɍu;��j�8ӣ��qWL��ۮ��:���J2<�/���:Y��+6�}�Z��/������*'{�x�����Yn��.�Ӭ���M�p��n\�p9��5�e���� җ���֍����I�=�XMG�u �΂@��|S��,h�YV��M��0�+��谓��:�ܸǆ�cE�� h���M��7�Ǎ�#��<V����=�GtVhʁ����W]��E[@�x��`q=8�/��8l�fmC� <z��G-�mlng��[�n]q���_�7�!`�UE���@�=й�HD��C-�
۞��o+���A���
 n�gCЦ�]؋2 uւ�A�7�L����A�&�e��l�,Р�u�8���܆H}С� �N$<aq�潂&@���rə�����:�v���;���؊����B#P8_�uSb�����{�N�;��C�(����=���6�@�
�]Y^���-i��T?Ĺ�xj��%`���-~_Z���-`���x�]��ܰ�&����m�N�헺�⦖Yw
��V%��,Kw\��2fe�5XJ�E��'�w^M�DQ��7m���Z�������+	ph�RU0z/�����B�t�el�P�*���z�o��Ac{R�	n�]x�Zwl�����̶� i'����J�}y���P�'�O��Z�-,A翟�.�G�\J�D�y-IG��0�O�[E�r�G�N�>���ݜ݃nJ�J{N �����а�.q9���$�V��n�������%�]"�}~/�z��b�H��x��c�rXl����r��}��c�{X��t����c��pAK�x�=�P"�,�Ņ##�ƾ�'���[�F���U�I\�g6�	]�m��fНЬI����;��[|:�J"�>?��l	�*}\�g	�\��aH�&]&մ6�P��I���=/-zD�RŽ�)�6=���R |-?���V$(T��5��	%k�咒�z����P
-�]��Vf��A�bֵr�c��fq�k�s5+O�zy��,�)zͅ�o�Zҙ�T=���t{��'��=O�d�}�.��:�V�P��"������o�)�v�K�u�[\�4�Z�����zp�X,�qK��d���.n�rnߕ�(�z;�}��z�N@�*�m/���٣�)V����A/Fڅ,A    K@{�I;�)���}�*���_`�h�'��;�/zes8no���!��Ph������BI�Pu�$�[i�dqP��d��Ș9)%QM4�יf���A��::���R��J,��b�7R��g��@��k�/	��1�/�<��?7�E'Н�+K��:p}�O�.��褏�h�=�ؤ�]c 5M�%5��6:��2qwr�LO;�΃�'I��̢�nOj�xF���[��
A��\E�V�[�
w�VAM��k�9hSc�����B�¨,�}L�P�0�c�J>9[q۟k�r��P�ū��gz�S�Z���:�1��("�#��>EY�J'�>{�ܨ�	�:�Ҧmh�����]E7L{h
�K��@MN�	-"�6�s�K�F�����q*�Q}.#ޠ;�S�Z&�7�λ����w�R�UrK~�+��P���kz5�E�0r�QR�֡�Z���Iq38Y�O52�yt�3�,(6@w�P��_���oy$O�Pĩ��He����r6���ߋ�ւz@M!f}����t����e�ݖAZ3��J~�.��(�F/8UR��Bq²�3���q�i(�,n���}�u��&��O�N�򢔭W]:eqP�0�R�`Wk��(QwU���-�s��T`�����
��Avi|u��\z��l>��g�&��c�6���P�h�Q�㝥5����\ U�u��8;aV\ ��|�5��n	��j���,hq	�.���
8ܗ��!���^y��n�^r�-=��d��)�$��RNx�)?�&���{Ŏ`c���k�'�|Df9�|3Fg
�!D�p�U�`�G	�eu�o)d1AR��q�p�8�~�l6(6�ͯ���G�E%P�~��[��4n��&޽��Ճ�=bֿ.�<�J��R�!C�����i�T�Gރ��Q�l/	$�wu���A͠�w���z��[�X'W8�'#	��
��`N�;L�`�".wl��^�F�I�	lS�X-�ՁJŔ[�Λl���i�H�QC}y�4�Ԡ��$Y��mf�GE�AH*�hȾ��u�N�3�f�w-G�ZT�y��@�Z҈�*�ꔷ�#'��9�d#ؾZ+�T�J���L�Ut�d;���R� ����`�G�6��M|�x�e�NS�@�H��H����lR�T��/�w��3�%��^oI���~�_7^5� D��#��ĆRu�P	�T��4)R�z�P[E��A��A5����4��2�A~��w�`�_+�k� r��c�77����i
�,!�M�_"�u��@-�p?�|�,K�S���� ��wo%�yC['��l�^K_���n�z��a&ۃm���ː1��h%g� )��mWO��(�u&P���}��%�֔0C�7�RU�o�Ŏ{�ܒ��Tw��a��Z'l/Y�8��U� 	j;3FH@�=��ߥ>Τ(ޏ���oj ��37�SL�Ȟ��U$��qx� �ieT�Y�A��Ϸ+�&5��v˙>K�*��A�*��v�{���4Ɉ*A���L��9���\�'�l��`rF��A���&��7�	��5�T�[��9T��h���tr����w�x�RL|�U���{�j!Lv;�r�J�����i�3�Ybl���gQ�s=-�3��ͱ*G<�W��9 ��/]�L*����s�C�`�XdW�a!���mK���rJ[�1os�$����Z��һN55�숹��X�2�dI�PR%oX��c^3������N�m1z&����&>�nG����N�=X��+y;& jk�D��K��`�jϾ��)U�Z'�]�g�v�T]���B�V{PIQ=(N�,����O*�Z|�&8��ē8%���&>�-��(`J�!�)����� �z�}��Y�λ�<���+ӫ��R�IB:锐!��3�0�(�d�	xRk�A�/�`p�^�V1�H~>�H�I���*�c�4}Q�f"����ac�4�U7�K	[�y/��v/<�=�q@m�.	z���)~~�Z��6�U3X֜���pTo���M�U����~�_K����{��c��1ٶ1�%��Sb����vR��G����[��\��yP�<�S�f)a��(�N7X��,6��6N�7�liP�r��^��=��2	��.�_�$�R��xο��\1�M�4��
sS�Q	��\�'y�U���|�l�	��{��d�IZ��V� b�f��fӔx<H���x�zeA�6�7�'0��񞹾��mUw,a&[D�=��:�ygb��k���O�^v�O���?���6%��r��:�!Ŋb����S~�DΊ@���q���L�(�Mr�?�I�B�[��}�	����?�<x��̜V=�M�߃�u��Ob�_zd �[o���9�ۆ#`]S\�6�@��O-�R6Fj�F�o�0l����ؚL6��Sh�{z<��na�G���W���VLa���t��xҞ��].Ӛ�����z�a���M��s�� �;Ӽ��mݰeʡ�M8�6k�l,���맜���u����r2����ƺn)ex/f 6m&�ٿm�=�'\K�uW�Ӓ�h���@�C{V9t�R�V�G0�M
f�MB�V����3�c�P��}�o�}g���=��I8_ž3Tj�bWZ�|� �}s�W�R���6%���+$�Y�2�9��I�Р�	��"߱bX�L��jν5�i�[i�����}����iE(�O�g��I���	�'��Ȥ�NMH5��˻��Q���!B��qB�P�� ^,$1���n�#`���mc0�Ӗ]��bNX�Ro	>���܁�=`d�6�%��Ɔ๎V��6��H�V=�IC��'�Ȧ�����فL��\ZE������=�n�Tg4e �>ܖο3���-��MN �U����Mr���ҩ)�oq܄����"��uۜfy$�1)�e�����"�X�Ώ���ރ`]�P�xm��T=\TI�mI��՜xe�/if�W� r3���6<N�^,2��郃O�$��'}��̓�_���wYDd�ki{��㣞��'�-�&����R)-�EF��8e*7��$0�aQ��f�A-�٤���l1=�n-���}�I e*�|��E�A��Nn
�����r����i
씈��f`Z�o��4���),�<<�@�ďװ�2kB���ĥ���'�u���ac��¶�>��dsH��`E���,��xI#���Tn%(|���B��$�%�C�t��d�P���*�R��('�]�ʘH��.����L���I�0G��HO�"��##Hm��TV̒s�	J�ճ$�_�p�K��Lk�9�m�dzz���7�ب(�q�h�	��g(�N�Jת��9��;�����66k����m�4,�,טī�a���v�:��<�U ����<8 ���/�(���2��dM�Y� P�4�u��+���e�[��u�~�:{��J�$�͏�	�I��2@�:��0a�8�~��l�y��+*}Y�Xǿ�a����t�,Of���t"�ˆr-, �9$�m��`�Q%�S��OJ���6[�:������;��#�8�(�xPP��(Y�QtH(V���'���6����X��g>6���z�Ъ�s��S���#�XA����8O;@��PL��o8�a�X�eK��W��а��hQ���+_�Ҫ��=\q1��oF&�";������/�������\
q�{�����d �ĮZG��u%m�a`�� BOo_��R;y����B�8�m܃�~����'s�����C�C��f��b���gG���L ��Ύ�mtGPAK\�Iܑ/��=�&��'�fC:׵+�4D��+�8������ہ'��m�
�;"f�������[��P��f�X�� B�|n�˂#`>�]'��lGP��r1�;�^}��W/����?t�Ɣg��O}!ݫ�|��7Sb��,r�gŃXp�<x��Ï�o��q�p��D>Ow鈘��r����e>d����sE�#"B�\��e�0R�^��'�]��M��Q`w0R�A�����Qs�#�1�    |M� 8�F���H!e��'"9�R�N���,#���H斚6��C/��b3W�D�Q�#|��W�B},M��F�!l�^�ʟ���>%=�g���PҴA,~l�'��A��ɪ�N������zg�P�U �D\p���ώh�$R:lT�����>l9���na��E_^y��j.�D&�{բ�8 >�4T,��$�cu0Q���2�k��F��A#Y<Jꆈ�V��M+��F��D������x�	!@we�Z�x�d	� ����o_>�r�ڞ,C�zԸڄF��ޅ��4�����"8VM$@��6k$���vFˉ\��}!;�I� ���4�3)�G>���M�͚��-�ȝ<������%c���+��=����#�Si8���{�wXՃƻe�/�B��vr��K����\]�ǃ�^�[~qH���,��{��}-���	h���i��E1C������=�PP�f���G�	��e�ќ����̥���L�-a2�� �L�>U�KϠ��ܨ��#�?�>8�I-�� �?����ռymĵ��S��%�!YP��:�e���ŉ��]�=�2E;�@(Yz�5�H�R&}a3�CP״�9w��L��u+�k��vUM�lp�ȷ���jo��VRc<���w�l�5��A��NK��������  �I�ɽ���:���J�����`.K^��>贀�z���S���@9��IN�9��Ni��s����@�]���gr�m��P=�LS6 �r���@Z���!�V��+/sH�fe�V9��r{R�$�LM�G��L�+z���J��񖣅B�+��*����>4?�@�vW�)�\��e�/�$1���Z<w6:�ZuUm�����赀 �8�Yڅ>��6����gFQS�N��21�UM [��#���_��N��w�ֻ���ݦw�;��
 @�ڣ�<#p6�S9ȅ&@M�6L���t��G����X�_W�����k���;��)��@[��-����jVU=�@�/���Qv0���n��A��==���Pz�~x��h�:�=�����Q��z��kV���NШ���,{��h˘!c�7�XB54�uFKN%����.G$�9=G�{�9B@�?ԉ��.�K��Ժ���vd��rZ�G6}Ԭ�����ꥳ 51�h��TG)z�T�~)��O����	b:�-���=��F}�e�s�lHԴ����.�2�~^6�(z"薙؈r�tn��\�#Bg�,��B�B(K/�y�8(��#'ˁ]1�H�D���j��^>��[o�H�#`�������l(�5�Ԓ{\ 7�!V���].�˪�S�
t�b��+j*�B��ܩ���-Y�� �T9á�ȶ1�\�x�*�t�]��~�Y(�,�#��7QR��:|�َl��F��@�>�7�7���=8.c���m� ��}��ǙPԗ���s��C'к���	���5��\��]�=4��bڗ��̕1@�ڍ�?��#-�S�O�V�a_��IN�^1%
������Q�^צm"7�:U>&�N�ڐj�e��N�Yݾ��qi�m�:������T��m�r�t���`:s��\�l}X/�6M�����b�:UȡI�z�>�T�іI���H��\�9:e�g
��� ��n�>� U��㸏��yi�q�c�D�u��T�G%�*��S��E&�k�D��0���W������d�^�� z�p|Y��lA#�~ey/{�S��]�b&�i��>��)���2��-�h�qS�I��I�F���Ɠ�OL� �n�Bq)�������o�	(�����({��+_{TR�i�NHz����,c�2Ȩ�1�~���&:e��I6�[��)c���{V%������B]x�@z4�N��2��	W�I�tS���TlV��+4M���[9�K���h�G�ǌ�v@Ѫz�-�ӟ��ڃ���Z�捳6q��O�@2�(�����]�e�&&�LR)�KP̑1C���J��fgy��j��Jy�7l�GmJ�� B�h�L��h.���hTy�# A��^?���hT[X��GFM=Jm앙ґ1@�P[�����#��ɮG�#`� �H������A��x]~d��q��U�ڇ#��A�qm6���E�t!���C'(Z�7L��� �X`�y1�JCW�'R��<|�O�1�c�4=�n���#�<n�#�lԤr�CI�TU�l9��%�0�z�5�@c]hx�f{D{��@�*حn���� u��r��w���r\"�vU�/��.ׁ��C��'eA^V�����H��6�mq�d�cT��hTk�;	[;�=Ax�_.�XzW�}��{��(�/��fǿ�(iS�]�=Jʮ2�4�։<��h<	�sm�ˎ��:p�;٘4�װJ��(>�f��5=��'��le��\�����&�u��A�h}�JM���ئ#�eݾ:�:��xI��:e�g����i��r�.�m[��������%pML�B�)��sWF�6|�4u��R�l�7̡�����bG� auX��:���O�
t"T{מ���Q����,��T�`{���*hˈPC��>���K@�c����pP�М_<(]�W��|����W�Y��Q1�jr�^l}����z�ҫ����;�!t%A�(�����;�-g`:����VC�żq9�����J�<������h��Jc�K{p��&�y���� �+��H�b��x׾v���K�{np�����9t:��R�t)uX��2�ZFY�z ͦP9d��#K����4�7�G�N:�C��Y� ,�i�R����s�K�*������ח���AP^���ќ���ţ%&B�(�em�<�p���+�|��T�8.��l��=�QWuۚqW()��r��[�3����><i�*�/���[:�5:mBJ�pTl%W���V��y���~Nϐ���x3� ���~�R!��#�A�u}�s���k�5���P�JGN���輓C��OZu�|^����A���6�e��J;I��&���&���H�Vi��⣀�(�J>��X]I}t� T'�����F�zo�������j������AF=}6^F�6��du�ܤ�����CG��Ѭ��?W �[o'�9(4��dP`�:B�B�<*���B��8�}�J7G��L�ҽ�N�tP���Z�u��#*���w�t��������'W��-O2��|��4n�F����_/25=��=H��CO���ݥ�'���j
�!�s�^:�=�*�6�h�����1t�T5b%��t�ׄ��]<�t�j'ּ)�`�z@q��׏-`� n�\�G�JM�Tl��ċ�;�j؎B�Y�vN4F١�#�s�fЭ�����y}=ɔ'x'�
G ��,���R�S��̨�V�ht���g��M4m��ٓ⻰����Ro^{��w����v2]կO;Ks$��ȸ�9X�ܪo��1bǚ��P�����#G:��Vn���0?O��ހ�doZ��FS,t�&�>@���\ �ݮ������Q����=�;�=i	�+C��տBw��E�ՎC��u��s�_\t ڜ�t&K�Í��$�+�K_�Ip+U��	b�2˖Y��;b��T�{��[h�'��/�gJ�NLfG@ �o/sDI�;wQ�Z�GK�1Ղ����&���U�6���5�CO���(s���)Z�Y%�/���� ����Ƃ\�>=u��0B@��rx��x��(�̀�(͹/_��\�G�cpd�h��
�82"dL���>G��Y�.�����u+��r��< ��P�P���<
%�b�c�#��$���1G�Z��ϡe���UDڃ��QKY��]4 u�����kMK��p$�U�ji��@.8G@��<W�
�ֿ���e�3�J�q�\=Z� �ORZ��
!@F�H9��q��|���j�(������5K|���h��]����(G@��&V�$.�㦃e�"Br�P��)�    ��$�߶�.��~x�����C�Μ(�@: �8��Ut��1�'��N@�b����C3 ��fH�\�7�q���C���p��t;]�t=�ԜUۼ6M�5����y���el�LI�� ����U��e�aD�tZ+ƻ��Mt Z��-Mn׫鮤:�t(
U�2y���!C���P�G{�S���9h :�VX5ۚ��$�kJ��T�7#[�\(�A�{�ؓ�!s��:pQ�k��2�\��VwmɣC������ މ���8*��;pI�Y�6�/�d��_�N@�Ym|9�t;?I}6��o�ש�'�f\�4��:f�h�!�Ɂ�����4 �:�ь�(��:\n�oY������T��_$��pP%�I|�U���Y
Uj��ş�pУ�����ͦ��M�Aq+-��� �H�4@�ȧ����U%������k(�=�s��*_��=P��7: ]��(�A�&�J�M��m�2����NǛ>T��{W�z��+@lzރ���I������^g9h�l����%p�N�Ⱥ`;��؁�vU#1��@=���[�:]js�T	��ʄv����_�Rמ�	�Lq7<j#��n�y�ނ"��wq�9�.�$��T�Se�]-�����ӭ��<ߑ���tcPnZG��f.U��$�{����5=�D`��f_�ˇ��>OF�J!RIrMڇ�U��@P:���rl��n#[f���p���M�\����s��Cg'���Y}'��sɨu�VVt��^�+;2"d4��A�R�K��{}r��v@��7����r��r�߮��d�s�˜iE���5:�J�wRb�Y�.:�߸�'y]�I/��{�����V�_u=�- �!@�^5�����z:��q���f愬d�����W,Ns�#-K���i�)_����h�{&|&���s
@�q��P�Kʘ�����e��p#�%`w�/�q�_��i��]2F���2��1CF*/�2q&�Jm:�A�ܾb��� C�x_�O?���D��J"E���b_�fn�nI�	t\Oj�UP��A �i�5�����6b)�sU���3@�Ξ*��o���0B �0�⣦�ڡ'�iT��=�t�q
��@��nN'YV��:�H�ٖ�}��Ɩ5�u�i�����"��(���m��;ʕɤ�2:-����ht)�s���i�2mt ��(T:h
!��Չ�:��Ғ$�p3�eʾjw�6��*o�m��� Sd��y'�FL]��ѨJJ7���Aօ2�P�U��V�ɴ�0� ��&�q.
�-�T��4�`����G��n���/��8�Z���u�Yw�	��*�T����5����i�[ZqZ�'` ��Z�z9�syk��8�����+3dEGк��;��Z����u��I�����w�t�O�1j=d4ٙu>��@�����5�q��|p��tR]�	���v�o&�q�;�G��f�=�ވ�����t��h�H�\ �}�?U��O;Fp��9�� f�ɒ��8
<���k�4]��N��G�����N&�ϯ=�@����X��6OMvΈ�+1,����X\�.-ӓy=�z���Oy
� �XP�ϫ����t���a����Z�ш����B�r1�tB�f!��|�	:�|%xq+�b�b�Q�Ul�2=j�y���k_'(T��K��^/�(��I�Bݟ5Cw����:s�m��z �ԧ x�?�BE)x�1C�B�\�����~��O5����:p澕���6׃ۈw}��w7���y\��a�K�'`��a'+���Nd����	2Ʋs��Ii����6����A�ax'����.J��H�Ŗ�~O 4K���u}%��O�+ˎ
�c튽����͓D�WZ�N���y�8gS�=��!��y=d4Y�[�'c��<_x�QU
=���$z�6��w��d̐1��ϭD7�7�����Q���4���F�FP��y)U�.����I�7.��.'�����u�������V�xSFڜ�o�8\��k���@�JY�"'��N@�TS�H4櫍�r!�vR�(7��)#�r��٥�c	#�%5�,&j1bt���:3�:m�V�����$%H�j����T�CI�{#�^	$�������/�R<t �[����F@���:�^%I{4�����ɻ}�д��zkl�;�/b����br�Y� �<�wxɔܗ�Ns	���=6�C;��vx.=�]���X���=�n<�u�=O������7��%��x&U��9��0C ϣo��-��u{pl�}�V�۶=.�F�6��W-*�a#O��$z�]n1^ňL��N�c�K��w���:�]6/9A�C{�������3���e���tX�ARg���c��\��f��AO�*��-���w�~n�M�7�?aߤIŦ�c��8����\[9p��}yP��=�E^�8뉁�5s4<���ƅ�������q�)FWm �Ao�]�!G�zR���~)��wl,7hn�G9wP��a����!Ǥ��P ��F�f��" $,�~����&�z�s���夷�t3I`ȓ�_\���HO����B�<��*_Q[�6M�3˹ٟʡ�.���-.;܃���fpq��&A�}�DP�;yD ��{_^y$���Y%�������h���WqQ���߻�%]�t�V�$� �{�����lh �����H6�mz$�f��}���}	����	�?�ち2A�5U�P���>!�;���H?�6U
�.B[����Ue
#�?�_o=��*�뷍d��,��3p�2zȈ����~q��}��[�l�sƁM�zq�s��̀��D������r��	������S)Zi��Y��A	T;;ɝ䈄�q���]�����o��o����s]?�-���^��?�|F[Ҁ���X�GÖAJ��e���:ln׫��*��hR���\?����&ҫ$�7�����8��?�� ��23!T��O�Ep��Ku�wI��d$�h���B��k0t04ѻ��u���Q���n2Zh��#h��~��9��{^�^��>��k�!��\�t��$��"_>��i�܅�C�b�WΡ�*��� ][E�����i=;��݋K�~m0��!�ǿg�l��A/g���d=b Q����͍�6H64*~�<]��b����1"?}��GN��.�wKѼw9�"	g�ٍ�@p��E���F�d����S�x�dΡ���f�19�����~(�u�vOt$LuP����PhJ�w5!��g>Q��)��^E��Z�,�����E�FЦ��]��MG�<(��%@�Ή�5��AX�o5�D{�Y�n�����g
 `��q��mh4��<�M�m効����� �i6�v�LL�����_x]�9����x�#/y� h��1��!h�������yz�x�1�4�@/eGWr:�$јhtc�T�%���U>^�g�)i����Қ�n�K�ML F���_]b1���#�|�a�ŏ3�\�M�9}�}�3>�r�h�o�h��\��.�;^Q\�ׄ��;���u�)����� �7�6JZ3�i�������3�ә~�����3衾�b��Տ\Q@�
�}�z�E�w��hׁK$�i[\&�b_n}��VOORI}��*���yll�k����@G�϶�_�(�-f����:�M13��e��l��dpp��~r��C[ �,4�7\��q�bs��\�Ĺ�aIf��)	؅�^Z(.~퀦:�z^�l����d_�� �9�G�zx\V���/�ϧ�NH�Qs8�3���B0�({��v��&[9�#"3%��x��4�d
��`����lSL����Ȫ缇&��k�z:�j�oֵuj��!cƌ��e�Q�t����RL��Cˤ����̤�kv��;�?�]o%f��@xGn5���>��>�A�2��� E��Ү-:䀄}�Nw,�����&����< qކ:@:��m2�bz�wr��    �Җ��pS;�r2��w|��V5�?�&�Z�&-��&�2�\ͱ��+���=4+p���K����5��=��FB̳X)�R��&q�2"d�bc.��B	P�����݁�0r��&��CF��Y\A6: ժ�m[��dJ��}	*��z#���e6�e̐�Z~�ƜI�3>�澫<�g�iC�Ŷ�x6�{-&@L��6�0�v�:����w.��n��P�1���ۦ{셛\�eRHL�As��vdOҭ�֥G�I�M����LЬ"K������lZthٔA��X70�'�x��?G1��Q�	�O��es\�U~��:W�k.��^|�<�o�}�2���R�}�,]q��'��,G� ��%t�X�<�c�b�Q�S�g��h3B���kw��6zw#)i�m �Bg��Y\Q�&Fr��Q�5�}^g����3�>I���*�P��]I�t�Zoyh�����VU�g{�u��*ElSmM��laϤ(�kIg��tW\�x������@76i�m^�%�+[��ֻ}�����uC�4J��~�_�=�]4 �.h��ٗg�I��qЬ���G- A@� I������/�в0�܆m��F6�'��q��[�Q���Ou�&��&pM�决�0C��W�^ohM�\�)���B|��k�	��	��ƪVPm��>E���&�uc�i�c�.���qF/�*�Sm 6$���}Ģ��G-^�����&mf�~�>��dL����B��i�.4���T�2m4��7&�7�^�@�:�G��WZ-4��|�o⠉P��.&N΢v�\�ſ�۱ڵ��!@k�,�
=
�>���o/o_�+�H�)d�\J=��zf~�*�i�^��
c�O~�V'�OwPhST��;���rP�8[q�=��(���'}�\zי^�������D�%��zF�s��m�8 �x�
i_��T7�9���&p]kj��3�:�ގ52I��ɘ���i�/U�"�;@��D�[�&�JMQl�9#�8���%qKZ{P(�#����>���Ȫ�@u���&ߡGЃ�mѣ'�c=��b����U��j����l�%	v�Ҧ ҩ$��&�����wd@�Bs���Y����()WW�*���7sz�<w��q�K�Ʌz@��Ln �tP	m��t����Nu��_Vƃ���6N	~ǳ��N�=�~'��Ug��>Nު�]X��|��W޳��Q���e����:Eօ�[�:�8b�b��Ső��9��w�y
6O���E�NYT��{lP��q2��k�'��W��t�B����S\n�x�u�-#�!c�FWM�6@w���:��̥#�^5E�S�:��m�˪+�\]��� r4D.Kܥ+������ꦓ��#f��Y����^)c�g�R�bm��4�#|��Y�|���Cz-`���A�=� V�m�� �������6�����~SF�������EI���%��J�$9݀Z@q'3֝�<���&: զ}�~���%)	�4����E.=J[��AsCҒ���Aih���M=��(iVɱ<���dt�.���A	w��n~�Y_\��m���t�Z�{(4(L���B�j;4�(4�[�$u8h9�z�ϒ����Р�'����F.�tl)Դ:� It�ӑK��5@���:���#h�<��W��ySF��n�i,�\�/���)e�ht�6�Kj����*@�/����k3�����[��Lԧ���ue�#��n���ȉ��د˶(2���S��6L�kv&����պd��F۠���g�	�F۠�מ���_ܻ6J*6�RNڙ��<�\V1�
a�K	��Ȣ�{�$��Y!@g��0�	\j��rȪ��@9��I���h�hr�sG���@�dq�kFI����!���u�tRfq]����y��9����=�lZoj��B��}�[u�ӗŴ~�C�B}�ov��Y�{���Z��[���������껵l��i�d)�vPү佐dؐsr2��5�@ĝ8AO���D"������5��m�.\t ����sۤG�(��C���N@�f�<�\��4QңМSX�-����%~\g�:h ���K@e�BK�b5��(t��yk���uX���e���U䵪��Aԇ��!�@�3,�x���@����|[���/���8�r����W�G�I�Sn���!��ox]�� n}�gl8h�8�efs	\_;�W�0��[��<����������m�N��	�����2�
#��e�2&��K���r�#�~:�z��OC�������v��S����ȥ�+/;Q&�Ns\c�p����l:��!�%%GN���u� ��ڱ�B�V�����Ȼ^�#Х���t����,E�\h��g�h�&�;��c��`�MC����5Ao� ��-#Aƴ�e^y_�\G1w���Lbn�_vK��������T۲o2e��)yX�j���4��T���jCm��b���c��R�&fzW�^�~�Z	 �:�3[��@7���V���0� 9w�hP{�eX�(�լ�g��n�h�j݋�A��u_w�p�(�]y�w� �p���� `#��f�/��5+�ިũU*NB�|�N��fr�sY�ߋ�ܸh ����HH��\\\i�u��@�^�	���q{�\�>�n����t��"I�g.:�2�"�S�P����2I}��n�j;f����������	-���\!��`�Ve��Q�t����%)��"��+��.�M�4��:�ֿr�ȣEt �`������չˮ��E/�8��#�M��D��Q|QJ$H����
���V�=��d�F�K� �.Rjd��S���AzJ���pc	X?�=��[�>��g*�ցAP��Q�ׁ�m�Xߧ =t'�YE�Xe]*x6(��"�����:�$�H$���JJ��B_�T4��W64@M��L�G.
M���w�
��>s�'jD��:"'�����+or���~;��m|�}PI�.ǹ?Q�Ñ�H��ҧ�=R/R�l��|��|H�D"�#`��%�~K�9z9����.�p�	�e��4O6� m8�����6������rQn���� @����0��4^�2��X$S5sz�8��*��=w��R;t]N[s�	\W�y!��r3�������8+�2�ڀk�3�4E���8\��ѯ�e�եIe����鞗�iҤ2���eR���41�w�� .���=s�t�4���n��;� �~38]b� Q�w=�A��ߖi�h),Z�bc������q����H��,~%mꥲⳌ/$)EJ�ɜv�=8��_�{1/p���ܹ���|I���k7�@�^�ׯ���P�x�xmC�b�3#�Ӧh�8'���Ep:s��;4�H���K^��BG$���>�ڥ�)�g����Ȼ�;Ilpd@}B��1�q��BI ��W��B���>��
CV�a�/g�6�ԯ�İ]r�X$&�"��J�shR�Af�'��z[>e8gt�h�����q;P�=D�%z��K��^ln פ�l6�ud�!��_EI������h���Y�3�<��*F޳G�=���k���������"8�ȮK[	26�d!� ��� c�5��rҠ1��GE�?t �s���8��9`����Ӥ�8a�t���76�	\�A͛�*e��4��.���p��ח\^ws�p�E@:s�ֿK��# A��+�� ���׽���C�=[v&7���GњG�&��e��_�2C��hqq�ɟ�$f��e��l\x\����ż<�r~��왗G\n�
.���X������j\��ۻ�h�#�� ��[�����̜�%��V�<VM�Ҷ��X�m*C>��9�$a�P��D��b{{�ʳ�c�%����G4�Vy�?����T�S�g�,�=CQC	���.^��\�Ⱥv��q��[�;����@u�u����P��;E9�D4��C9��WR��b�_Hj��k�O,��+ƥ�pK��)�    �I@MV6�[ʦs8hJ��]�f�)O.�Au�L�Ҥ F��IC=�X��t�ԡ���h����-�����64�k��<�Q �K@�?]I�>q�WJ��2�J#ӝ�ɯ�,�-G��+���h�	�������tR���4dr	�Nbώ�u��]pг�I���z!_~G�U�C�'�7���f�Q(���Y145k%���fX�ͱ����&�m�W��9�U��9P �&���� gEI~w��߱;H�p� e@� ���h�Ӥ#]������AC��I��kTt����*9f� �܄�-�=�K�Fg���'�X2�k/
��9��@�Z��.].�oS�(�yȘD��ny�ֺ��ִbr�-���݋7E7����[��ȜZ�u���._VtJ���oC#�����Ga� @Yp�4�kt�4��P|l��2��<���S3Oi���5"��z#��G\���e��&��n��I@�D��8�f}pnm�$z�q��l*=d��Qy�rAm�z ����'��]h�_z�9�N���Ui���3.ı�~�+ʾ��	6�>�U��C�'��4��6�˭�.��k��2y�(�E���q�+s�� M��:�s	hG��������č��bp94T&���ȅKŉ��ؒpnC�#́�?D��t5/B}V}y���AI�`�wfIn��I���e-#A7u��\��%���_
��r�\�m�������cF����;n?B̰,�U'	����[o�q�82H�`+��M�hrϗ��l���r}� �W��+�x\����1�_ҹ<�r����A;�����6݃�H� ��.�v��_N�v��FJ^;�L�>�4�����x���wޯ��Xg�(ԇ|=e�\5!�c�#p
��A_B��ۗCG�^�����w� eo���9Q����h�� 4�I�A��t�*nq�	P_9WA���Ag�C��=Vn��@�]U#C�iǞj����ϕ犗�7.Gj�����v��nM��?�ߥ화�:�%��=Y��P�H����^�C̸2���:j��T[uw��b���H�16r���=@khD�'<��b�Ld�㽘w�Tϥ�A��}��l�:�hS�vMj�w*� ����k���_K�C�Z��a��� õ��P��N� #b4|�ޡ1�H(�x#51�Xr��G5��f`�~`��.��|��	j���t =j?�w�0��
N�q�H��]+�)�T�_�9��mzxoT<��qW���q�Y7
=��z�>�j]��Z�:k��q�P�*�.���	�7b�w�F�e:b�bQw XMצ �X�E�>�Ӂ�b��T�ɵ�(�y٘�4�+��Ǫ�Ρ�b�+-�z�~��G -7�o<�u~�C���/Zj%�O3Qn�z�MะPU�:�n3%��V=���A���/]��{��A��'7eD�hν~�l3M�m��o_čA���Р�ƲI0/�q��	�@���y5��5%���6m��G\�/��?�y�����Bu=��j�5mb�~1S�3/�|.V�+/�{2A�O��70SiM�i������Q_���X�Ĵp��R&#�D�@t��L��y�F�wU�s��ˇ���l�ϯ=����Q�����૞$��^^y�pTO��R���?4Q��_��n<�pБ�7^��nBE>s���{=�
�i~�+2H�歃�N���N�nDIJ�C����w�"W���q/�/R����*�戙!fܵ��6���� ���u��c^�9�͡I�f�?��*��A�P',;�w����Н��U��u�D�;ҥ������Bq�_���f%�ѡ��p��A�p���424kh�U���G��򇇒�:ȑ�ީ�� z�~J��F�ݜ(�*����;\������M��q���k�6$U���.4�����o���UۭY��*�?,�X���zy�\�vY�2i�E���er�BЋ�k��]o����(�7N���	S'6}�p|zE];hPlN����#%*��[�*���� U)(�N���٦g<�n���SM�}l���E�ds�I���y"�� ��xW=ǡ��}2��Hɬv����H��e=��:X<i͆��H�R�ni�E�lNMQs8�����n��mh��<%�`�3P.y�̡jmd �6g���HF�_LI�h,�+8��ms\�����$��K'���ؾ���KS�.���yO���2��:+ӓ-`������g.4��U��ƻ�Pr�:-c��(!�,�Lq67�cjix���8rr#���C$
eD/�5�®��:�v�\q�^�`F.�`�ed��k��K)�����u0�F��̒UG�����yk�h}��*t��u\��-�km���hf�d�ݼ~?rW/m,Ky�S볝�G��Ԝ"Y��@����  ����g����2:��vU(��%z�vL���� �ˌ�Jŉ����Km�C�4�մ���h�Ѥ=�����~h��D��>�e� ]Ӥ_ŉ�PU���w���N�j�\NDw�Z�ό�I$mT��Io�=Ц��iɝtѬ_�g�����s���	N�k�a	傫a;,`�� �W,l@n\bQg�!R'I(��u��:���m4�D�i�T��y�/��<ni�	%@Z��4�(�[!j��šr|��\b�Fi)B��`sЗ�����︞c����	��s	��f`}A�A�s�F�3��ZFv���vyQh Zw�lz}9h���D�@4eW�;)�t�;~�V����K�K�/�o9�ꋒ��#P>��Ֆ�C����|��q�r3��(�y��ds�C��'l��s������'�@�8�:��ێv��H�H ⮲VϪ���N�2*Ε��z�v���Ӂ@�v����UX�AG�\wVY�4�|c-}�f3�i'����yP�Z�O����T%��⍽{��&hM���ծ�AI}�g�D��o��׎<j��4݁�}�YL�Z�l��C� 1Eu+�������6�}����r�nU(�N�al���ĎݤՔl�)��ҡâ�n�m�(C�?�>�\���\��Z@�*+?13�L��%�����A{��߃��I���ƭ��bj��4J$x-�:���/�g���u��0}U65���/.�1�H�������wЅ&@�[@��t�4=�a�A#���W��6����]��<�q�

z�O� Lt���⋆��7˦�D����(�#%�$��J�ܻST)��Z
�p�&�����(9JGiz��+�tjjև[q�����%����Ƭ�ɓ8�:h:���ʅ@�D�4Ҵ�tZ^�Z��@�>S����TkG@� m�B���c1����4ڽ�i:���ͩ��F!�����ҳ����Ss�q�\鹥'�9h�ܒ\4��ԅ�� iq*9�F�#Х5����l��H�f	j�����%"�pPv�M z��%FC��Y)����,�YiM���\{����6
%���F\���=������/��X����e���ٖ���&R�wri92H�rs{)�wweW�9�Y��.�����2jf�fH��)z�3��;��&:��gŚv�.����LZ��I��*�#�޼�����7̏/��X��}���3���%-1�b����7ҿ��g�( ҭ��g(tDX�IoL��i�6�gr >/�����ʤ$�����I�Q{Wg�X&Bףa�\�	h)���5�ƅf@u�SI ���4 /}�z�)~�m0�q�d��絳��\ �Z�q��+]5����s��:���[���P7��-y��#�4��o^�MbQ[����P4�>Pi[F�z��A�C�i�S54L.�����'�[��C����1!�d��a1�Gqq�~����~���AY��_[O�>� }	%`X?]�4%p��r�zӤ�:4�FF３x�C@e���n������	��9��4%�Nj�W��&}�3菒�R�m.Beȁ]�m���Bk�*l��7�hGT)v-O?H��	ŏP��    �թ_��á���?&J
y��\%ZQ�Ɍ�1�LGM'��������@�r�(��N�Πy�|�����] ����	p�'�<ߜ�VCs�4d���S�1h�۔���2ш�r�϶i����v s��>W҈�����B���	�6�׼��O�k�2��?�!��e���J����1�nN=������]f� �Ǒk�wr(lt���g�z>H���.��$u}�����r���_��ƾ�EG���.�&�u�b��ma��1A�ίs�blw�J]������F����{�����y�Lt�%���`���X(����/xHk�x_����S(َ��׶��o9�*�q��v簯:���0(6@�V;�����u��E���I���"�Ȁf�.E�'J�����rŝ���3|Aup�h�Yk��]%��Рk1�������&�9�o�A���A�7i( j�o�-*(]4mg�H���xl�G�o��mG��<���tV��Ik�	�}!�$%�&�Z�qC�~Z�Π�L�����D�S�u�������o'��U����f����w�Y�4�)d�|�Q�}D3t��(ʸ?���DW���kو>�|�A,���	���">J����Wi.RC!6:5kL4��h�l&� ���6���q^�#�ߖA�Y�t��K6�z�{&&4 ��̚�ln�U�0�~�KbC��=�T��M���4�_��P��Huߖ��@u6�Hn��`k�RL�\��RA�����# @@R#��"����m�F�<���������()�xl��k�z389p�zUt�=?��Aw�G#v�Π�C���~��Mj���;d�[�r'V۪�&�GP^5YUm�B���^%$���"8%�NT*?�ZL[,<w�Z_m��:�p�u)�Ysʧ������n��%G�c�M��c�]����v��ƽor3�v�Z�Um�hWj�J�d��Ρ��]���5��������?�,�5�[q\Mٸ�B�;D��ҏ�I�DW=�M���cIJʚY������7.4✱q��?�%p�A���<��8u���W[�qQҪ�MN����e��Yk��^@�gv[co����|{��~ ��s��$�r��F#�غj�.: ���Vr>�N	!�-�n��	�i��eΡ����%@������/nu�3PN��O��zT�J��d�O�4ye)���mʔ�VG��i
�'����Ps\5I���t��Ձ@ScP�?�As���M@�A'�<��J*�"��:�/��JCr�}og�@ĭz�J�̈́ʌ���0\u؁�G���5(,o�M�P%��ܧ����У�~E89(T)����<Wm
��&a��g\�t��M$@��#:���xZ�G��^&q	;;4iN��η�����@c����-�8�V6����O���຤��fR���S�m��8��p�˯�4Q�d�������r�4�@4�74��>��3�H����=��i⍆b��λY_��+ESu��NO��t�>DW�%�e:#�����b�+��j.��5����go������վC7����u{�K�ꩇ�u�ֺK� fy����m�tnm������+	N��ޕf�ĉ��_ܪ��f�I�9S�A�����h�#�ћ�Z�r��Q����L�kv�
���	t����T@:\7�&nY��\t��XM�Z��
�еT�ϪD&GJ�>3������
=0������!�޻3�m:�.c��h�V�s�Ɓ@\�(�j���4u�z��@t��j��h���Ɋr�B3���LZ~Q��d��4�NK�-v R�Y+�ҹĨvQ,G�](���o ���О�ڱ*�v��{��s8ҝ�.�l&���D�#VT;$��ph��޸���0e;���D�th�Ⱦ��u�����@g�fl��7v�)�T)�*�b���&��kS0�;.���*t�m��K{�ꬦ�94�"�ͪ۹��tj���o��f��'�����@=� ��r�ݟ��fr	\�e�\;�����|bBO�<7O���:X5itʝR(<�lzuZ'�x:3�$��S
G%>�P�'�_4}5�ۥ�]w�kɲ�u/<��b�=�'N�t�ċ&5ѡ�j���@:��j,���S���t��K9(�IW�V��O�*uu���!�<�"t*�Ԫ�_vi(WPG�u�roV�Z]�֮�Ώ�fu�dj�B�P��7;+w�r�+B�(�4��$�N)v$��G�C@f���ɛ�
���\�QT��������&s\�^O�����*��b�D QfeI��d\4mu����tj�0v�R5�)�Ze-`� �xkn�Bt��q�K[�"X3���z'ژ�CϠwz� ��hR���.� ����R���j�ލG�Н�K����K{�ˈM�������D�Ê.����W�#�a�\�+`��q+�]]FL:��st����3��gl�c��2�Y�Z���=���"��NG��]�u�:2H�F�OQv��P�����/�H��ʹ{�m�Cj�M�)��2t�79&}:%`��US������	��z�:�NGr���h�=� m��z�Di*
J��6��AI��fjޫ�Ѡ���+��W� j5j_��+�v�8�Z}F����:���3~(�T����Ꞵ-&C��b�.�>�h�X �;�Sh��Ϥh�F[^�,�[�:�j4 Յ��F������D��s7� ��Թ��p����)c7*"���T��O�J��#�Lye�w$0�Wn�mI���\ث7�3��\%ZR��خ9����e�hլ޳5�F���[��t��d�Εf����1�&.RZ����3��JQ��������v��k��bJ&`=-�ɸG�{L�-�j��hʷ�]�(�_r�;%CI����ٞ��l��'nrV����F�7.� �(r6���l��>q�U�rV�&@w;���L(ҧ�~�4��vM�8�AkC�tr�	(WS!���%����yj��&��6�tЌ�j?ș]D/Lk/ʲ��m��S��n>���U$�������u=|�t�m�N6��8�gxd����2�q�v&:��j;P��	2�פg�;=�i���l]"��m�=���{}K΂͑G?P�J�����{�L�f 5���CݸbH㢶rO��0<���W��\����թ�^��tڕ�`\��].��>��qc�3P��� v�WF��:.�m]ILh4v2��	 Od$g16N�br�����k=J�b1Y- B@,�J�M��pCk�>���(��2��9�����6���ƣF�:I��_\_t�r38N7�]�`\�P�*�Zl=Q&��l����uT'Ǚ\�<��,0g2��8�G���9Z+�D�g>�V_��g
�P��&\/�e�f���T�;�h}��q�L=s�tg��<#���a�p�t�ud��ڴ�q�hmnV:��ꡟKX���ʤ�֦�5Ɓ�8M�<<�Q-%�|����CC�B�'Y�1�/V�G<�~m�����'t�~�5�GlG �+p��C����\�*[61A�B�U�Z"���&�}4���j�4��97��Z�9E����������	�t�wk��Ñ6�-��N� ��h,?�T:P�Jx��p<���$��鈏��N� ��U�s.����K���Ф8�t��Ố�����������v��t�	�g�*y&7>��r�g��;�mIAJ��O5�é�\�����2�Y7eȈ��P���IE��yg=A�E0��6r�Mw�N�{�n�?]�JI�d���œ!+�ȴ>��#��2��M��?,w8T��M'�;�_��ҤgГY,��&��I;�֏���I$͇�gF��<.��b�S{���O�&�C���v��m7I}��P,��[i���l�: �[k-�q�и=;�hj_�s�J�ҡ)�r>>��ڥs���8�`�%��'���Y��LYCW�w>���m�ż    -c�|�#Zd���@�� �(�� v�c�>�=�N[���:���6gˡ'�t!˨C$��/q�܏.4Dǘ{���M�JBYx�~%�c�Dz�i
�GҠ�M0�2m�9�� 46 ^񋯟UЖ!��H���: ��e�k%8bF��Z�3o�4zs�g�+.���{������{{M�J�����A<������ ��
X `�5�B�h��owu��)%��p��@J��B�� z޺l���ФGe��k�{�ɗ�Q�?�(���wI�gMkv��AoǉH9�Kg��\YlYZ ��!��te��x�΍�R��u��J9t���%V㣤A�,���sQ���ܠ��~G?�'c��z�>�;�s	\�G�v�t�(�޻�3�7^�L.��u�W��$iP�L��۞�B�&6�R�V�`��#�sc���Y\Ax��-�������@P�m��Y��l�j�wg2-ַ�nE��FG��ƞ/J�;�F'���U�u���q~j2n|t:�h�<�AI����������к�F��p��-`<B������a�O
���a'�k�㊮���F#P�b�"����o$�͑4@Ұ}E��u��6¶ֹ#c��n")|`� �����3�z��w�?�`G@� U~�l	9X���\*<�9���_�����aE�JYk���e���/��!t�6�o�M��)��A]<����U�DEZ�C�N���[�B���e���p�^\��ġ3�.��JP�}��� �+`���U��V�T�оv:�UFJq
�.��V�u&�smR.d�<HN����3@L(��m������Z��\������9}�N	�.	���nz�[�=#:���}��jr����N\r>M���t �%T�^e�@s_rVe8� ����u���v�N���S�y&�*'�ƅ�?��dH�30'���HV�z�T#RG�1V3���ޑ�!�ӵO�;i��92Ș���.6���t�p{rt� ���S.�v=�{�3��*?����k�!�ی��N-��-ݛӪ��qR�.�����nmӤhS���-�D^v�v��B���z]�V����Ŗ#��!dsw� n�*�s��"8�@}k���K��g�=��2�C}����Fp�}_��-J����퐨��&�/Y��_��I� ��.�[�d����dpJ��.h)Cp�D�L��xt���݃��5qo�h ZF]�E@ݹ�^. u�
��>�*��Fp�>h�m�U'�i��U��� `>����y�r38�,�(�B?��M�wҞ1<z!zS&,Ɣ�(Q�F�W:��P�Ѕj�㉇B���]��Њ�hE�6I"�+zW��GmsU���9!a���u3"��O�N�h�Q?<�MIpQR�h:��n����hl��M
&s�1�1] �?jL�CН��f��D���jK�@k��E�mt���^�8R�AҴ>J�Ŀ�מ��M�K�b˭��̀t�s����̠w�j�qwlt��anwHH�F����t�?�I��N��-w���Z��17Z� nlM~��{�h�G/�t8���q��j�~\׶�S~f��A�=7��ep�}��hңmC���&X�i$=�$w���x�����`�f@���٨���N�y2��i�nݯ=�׭�,�X�=z�$H)��&�3�b^�����f@�����XiH�	��5_{���J
5mη/x��*��{J�J�e(]I��p����hA'n����%Hݒ�+��W�'kk�� �s��`O��u�/��N���=.��Z��N�W�~MG�u�2���d�b{hZ�]�dhZ q�����NI�s�t�g6�:�&B��_�\���%���|�挊�e���.��u] $��q#8�	�ZW���:�vO������j4�"w��Aχ�h��m�����<��@�x��yJ4���@m��\�艁B�h��-�W�
�v��ݞI��O�ΌO�?����������).��3R�6���&��)r�����$2�ig��zvl1Ĩ(M�GgҸec�S/����'�9h.����Cݿ٦�1�� ��\�� 4�h����T��??��.���V�x�ے�-S�W���u�C{����m}߫���:�m_T�1"�U��cs9��c�F�i���&�+ B�v����FBi.�����GZy�:���F�y�th}�N]/��<l����3P��k�- C�ܪU���t��\�x�]f��cÑ���ǥ�-MH�C��vb�h�3�>J�D�<��*�DpW}�����WvĽ��f��L��R9.%��ޥ��_N,�&�Ԕ1�;���~Ȧ�A[X�_93�F��Fc�����qY��&J^v�+Jxs�Zo�iєG�%[��ӹuʭ�Ep]���3�?tPN��d�˙�#��� M��p�߷b^�(���C1C>Qϓ�8�E>�[�� ���3�{�l.��^"�[��F���0i��J�_��M@a�o���lˈ��U���ܻ�r��c��d<t:���"�r8������s.JZ���R����&�ف3�Z�1\#K}5�����ep�v֖j.� ]�3jy�$�s_�O 9�CI�of�{P ���fr�GG�m{��m�q�����)v��R����`ar�P�*�߳�l
�7��\��&�&9�RvS)Ԧ)pm	r̚^@�QY"	u�4Qr������p��)#@F-�4�����pw�w�#�����s��>��GW�I�5`_O݆	b�1�����'�w'���ۓ}��Å�qt(���yo�N��4�u^=N��B�mfɀ����mc�� Z�̞�}������.: ������B#��N4��	M��P#�6D��܇�ҿ�N]�'Kl�\go����GMd�5�G_���֙2����j
�#?}Ⱥ	`9M�\�_u.J��t��M���H����k7��d��e��6�w�E������*}l^����A�H�Q�Jh��Y��2�V��9��28=e�T���@Fyw{��ɑ;?���z�xi�Qs\ɂ,�<(J�'vs4�$�@w�e�[��aN�_ƤW��A�����s�;F����?��˔4���N
�ͩ�e�\��}�D��ۖ�tJ^����$Y�u5���M��w
\%����z��S���2ȨM���t��� �?��33��㦂��Y&���S�Q;� ��P�����ϬO�䏏㦉\���n��d,䛏�^���u�EI��~)�8�O%䕏�Z��l-m�=d�\���c�#�q�tV�CS��G��9M��kqR���iۘ������@�$O^�����;���>�]�%�{�O_�Ƭ���6��>p��MS:UN6���si�',@��Й{�@uUrɫu��Nf����@u���a��s�������^/�˛�5)աgк�:t&���I���j��R�C�T��
�k����R�w�2���ݥ�M�B�r�nj�=
�K�Q�qЦ�st �RС���rU"@��Ό��j�׌SG�+,����r�����~E��PB��kI�bo���:���TT�� ������%"�Cpo?����p�F��W�0B�$����P��z�z�R��	�C	%ﱔ�z4�Ԡ������t�A��6K��&�Yw��t}\�N���w��#����T� �  �%�O�c���oF�y2��|�����#P�����_���&E��}-���a����K����4���7�����x�/��r�����%i�C��=z<�����3q�\�,��w�X��4�Z!��� � �^�k� �w�'q>Qc)����p�gx_�j-��%+�O���lRk�H�C����!�	�M/�a�,�6MŦ�#蝖?F;BOX�0C�n���ꤓ��o�� C�-m[<�t-m������VXF�N@wG�ШC'�ӡɺ����̀�:���AP�+g��k�X C��w���zFC@"uK�B��e�\ ڦ    �U��/�"�xh��]Ê���v�T��F�G� V"��zB�icw�d�����,�)���h�ϼ��:4in�3u��Π��~�u�tM�~�Gk3�2�K�R��k�qIs���>�I�Awsd�����a��9R�����zGCU�5:�� �m�&�'�;i�}�
�!����yl4�@IW;�N��b�Q�9LYP>����&���VU�d��M�8�o����HX��"���tQ^���+c�<�ڽ�ޅF@㎝eC���Vo8t�T�	���v�0����w[��?ֿ�K����?>p2�*ნ�.@K��U5?H&�ͭ��L�������&�����Ep�$�e���-��2��T�9���YU�3o�&4Z��f��ǥ��#�Ԫ4]�;�x�i3���c:4�I{%7��B�TsD���V�yޥ�:���Q�(/0���"��d��~�ok�����X�&1��h�Ghr�t��rHK���&�s�O>��oO]uʭ��$_���l:�^vK��aҤ;�����'���4h3����|�0@�6�^��8(T)�$`��ڤJ�ivY"81044��׌3�o]n���{�h���b����z.���ÐC:�8H�2i�}�7�t7-���ێJ.�-�z�015@h=�[������^�h ���W�+`� �����zyLtZ-����Hm����#`�����C���\�k�u��]�ԇJ��P�6�dgr�G��Mȸ��w��.��#�U�+��Mt �c�xۯ\t��&����v}�{���&�;+�W����5c-б��?2:j4���q=�ȣЪu�C��<J+;>���G
�v��'�!34i(�k�YSN������K� �}s��H}��d��Ώ�'����گ��fp]��\�CIe6�W<���Eg�.@u�r��q�;���,I�)G��:��3� ���9��[��H�ڦ���D�⬹,����f,��Ĕ1BG:��Q�1�A��+C=Wg{=�q�ٯye�x���#BS9S4�kB���`BGdϚ�$�J�.
[¸7�z�c�mIA�U�� .���w�bP=~�=!n ���k[�#�<��o�'���qP��5e���G���th�K�ƞ���@З�M�*��	l�N�;oNki"�i����ɰ&״��#��>��:2�CЮ�S�	A�����{H�9��c��Ah}��G���n�1�����RM�r	���Hv�S���o%g�\C�l(������"�os�.��U�^����ɤDc?���!m��hǞƖ������^"*��l׎�2T��j?����HG�������H�\��&�y(i��v��k��im��:����o\t�-l�X� �	�%8�pܴ�w�.Ă{�tft��\�m��o$-�AG����R��@,�/�C}�L�Tf
5��3[2&A��6]?+�r3s���dp�A�:�:��s�����#�ܽ��w�u� n�NaD��gިM�)��T9��qE'�@��(�t��z�>��NY��	(���䭸y.�[W���b����@S����-̄Hw2��4����4���A����p��G�5�t� bl��g<a��"�ɘ5��n��ts9R��ۀ(F��G80=kz͉{���&���cu�"V��#l�0]k��k:t��R�0��p�=�I?�W��")��$ْ6�p\W���Sh��!�$��<z ��-�M1ͭ+`ĩ����g5�3sYs���Ü�Qj�:�.�j��U�;Lz&��4�����o]4î-��d+�r�M, ��tQ�&]=!1���������/�#&@oyw�G�"h�(l���2"d��3��*��N����3�����$�B�u�f�.�L���Ė4ARW����:�{����-�fؙ@�v>vd���L<�����e�.�.@c���Q)=+��WX��#$u9԰��6�ʥ��+_�������s�V��"6����W^F�F���(�Y��*2�:,r.�{�"�Г��|jFH�ؠ�t�����gD�9CW=:�fW~�,W���v���eӫ/|�������v� tVg�?\(b?�
S9� n'_���F�I�z|�R�P�*^�e@���e�rh�m�e`H��e𴼌�W��m���Ԏ �չ+P:�rnk9��6�^�?=:A��B�F���@�h�?��-���]+�ό)��9#���Ln ��C�
Z��uޓqI8�ng��t�� @ǁk�KϠur`�j�ΠK��.�� Zԋ�B3�Nܴ�zƓ�I���{)5Ah�J%����vilO: m�r���C3۽��P�?���6���Ι��,/���b�&�)}9u��T^KgQ� ���Nv{�t=�Ti�fB�"'V��)%��X׎R�Y�N=�A�V�P�)��ɐ�;�4n%`��#�݈�˰�H%�W�:ɿ��H�~W�]�F���ltF��2"T�����m�l����k��������bs��}���օVEc+�t���p���>+�>��M��/�ˈ�@�����Shú��?7u�Yʫ�O��}�֫m��!�W��r��g�]��g�(r�e�"�[�á�F�դzP��5���.O����߄����^���ƥ#�n�x+ߠ$�}�;ح�[a��1��U��H��c؞��7k�4=����Qb���!ǩ��C�O�6r��u3Gk$Kw�QD,�{2�b�%��6���G�6�&���h�T��&.��椥���3z =K'���u�P��g��*���מ f9��ť�pJ@"�.K�����УM����+\:T
�5r�ӡ�_�<���8B�B;)��8)W�6�+���Y�AD;O�f�:� n8��~}m>"nJC	t��#%�A'�]U�/2�쑎$MzT��ஶ}�G�K����z�>T���W4��s� ��-��n5kl�@�C�G8�xR�����J���G� �Ȼ��t��S�������^�g���}
�	�ZrBZC+GQ8Y=�'�߶hP�]���՞167B}t{�ZλM~s�A�B:tǳ���o"ЖQ8(i�؏S+#VF�6Z�Is#86�Q"
/�G	\��_��_ɻr$M�����o�B	P�jضÒ�m
�!�+��S���@Q9�������Y�Vm��MOG���g#:\ �4�"�D/��bU�H�п����e4�t$��M{I����H�ՕN�A�3���tjޒnآ�&�	��;��b�;���b?ʀrI���4Z���f�4����q�t�޹m�/G)�̕X��8�F:��Ь���`^n*%t ��-݋n��YU=4=�f}��;�a�6���VV�?]t��Am�#Uڎ�(�e� �e�,�_=n>��/(a��é- D�jy��h\�Q���̏Cw�Z�|e��D�>A�:?qWg(N��\V+��Hw�&eK'�btəѬ�({���=���]_�B��9n��TWQ+��# @@:p�G��w�h�:����I���XW>�A�F���DI�f���OX��+�)�t*K���❔��[47�릇ݒ��.���tJT%&��2�C�|����#�}s��E�尵k7���Ҳ�Y����~�3@�~��k6Lz]�~o��pg.:MۧW�N���_�P7Z�7�kv�b�}a�;�1�\P��s��S�[�3I�����Q:5�����f�:h:(;�\�̥��A���ɍভ����@���RM@�:�������ju��.��r��j��)βia�6ĵix��Rᐌ�Aq� ��j��fʀml�7M��CC�6]���ÁC}	��+v)����7LI�Bqs��}��g��� cƞ��@��_�����&iZ.� �
tU�D.sn�V��W'�D�rNɾj�>���\L��.F	�Δ4@�r��is�+sh����	��WO���~�Q˘ �FF�㴉bh�^|�mh��{Ƚs��h��Au�h:�L{�؍)���!h����G�͕    �*w} >���OG㠹�uoN&: ������\t���ݟ��Psޓ�&����ᗿ���G����Az5��JRx���H�˿_ 1��@�Բ���>y������2i4 �0"�{>Aן~�8�)c���`�;u��d���N@K�g9d�I	��AJT������r$g�����K��oWN&9�*�xϾ���8}�޷��r�ET�q�ʉ��9[;4-Ո�o��Ů��Z����6���i��H��x�o����~����*#i	2�g�z>t��κ�f[92����f���r�t��.X/w�a�b�btnuɉs� tG�O���f�c�(���֬;���rd��ž��Cs�uPh�8nć�VG84t-��卪�(-Ɠ��1�n�I�:���s��p�P7\������#�W.����� v�n�<�.� �ؤ�(k�ɍ�fu�K9�;�4�s�Ӎ�	Mj5�3m6�D���������E2t��}6,Е�����C�h�ي"�. �rLi߄"�z�lSn ��5��E�'nMA���/��dGz4JWi���R��P��.������B�hY�� ~�ה4젤D�g�Wq��*��"+���y��.�L~C�L�[����T�+���$���-��S�������P�<�@��x+���\��hj��%���z=�v��b��P4oׄ^�L�JS������]���(���l}�E}&|/�MMGR�$.����T����!h.���ln�D��ຒ���g�h�C�p�������1e���u�+S�0A ��>6iDx�>q?����1����v�I����y�a�Π�C��hT'���n�%�;?�@Y98�(�+`��N�O��щ����o���w�&�%�YN �?��G|�k0��TG�m/M�Xq���m�5&4�	��5�:mu�1�Mz�ٖ��u��#dr���D���db�4�X;
���r8(W��o؛�n�/���L�n�+S �-tI⻝�P�0�����{Nڇ��6�]i���wꎲ�Q����a���X `8t�t�3��h�����3� tҾC��RѬ��"\�� NJ�3�+;Fȇ�Y�����67�[̷ҥI�6���r��M�Fg����J»�epÁ��ԞRu��t�D��%�(���Qe�˦h�I�\/��%EH�=_�M�W=i��A�j�F�UZJ�]u����621j"���N��m��el�t�>F���\ ��~ &J.v=ګ�ܚh :���7[L4ewϽ�9� bg�x�_I
�����d�;T&T���j�P���������Aaǧ�"MP"���q���]5�Mڴ��y�V$(e�HٳPL:E���h������Y2�u��]u�� �-���)�.4ihԺ�k,��&pu|DoH�\��د�� ���fp����#b
�Х���L��p�{�D��p.ݯl�D��tV����;l��M�K>[n6%✱�Z�<�R#�ȀN��Ѵ�[��OM޹# �u��5���IC�x,w��ss�>���t��4�ڞ��3^Um�U�|��8it�3���|%�:RRP5�5nL4 �sΪ�mB��[�I���7Q��/SoŬ�h7?��(� 鶦�!j�	�z�JB���Lh4��F�FW���J���������~$���,���n_�&����JW��tq[�
z�B��&~��-�شep��szx<�=F����t�	�Ym��	��FM��l�d
�A3J�U�*o�,{t"G�'�?'�;w�)����`A39ݹ1��f�w1.u� ����xL4��x���*��tT��-��[��KW�;��L��b�b&�щ��y>[:���q�
(}S�7���~��Π�$ZA�O��2�Ro���y(y�y���0T��� �δ�o�MD�E�sdk/�� t<���K�!>�����$��6厖m�t��x`�7و[t����+���ꢤDy����ZQX  �hw'���W�r6P�xOwS�����=�?
�$dl�(o���G�;�;�v ����qʗ�I������7�vJ47����>�PęQ��0��z�3�(�]�Y�� ��XՊ'y�鷣m��z�G-f�v�cC��b�J^�2�s�˵� n,o7i[(�9q�a]Uˈ��/�d�A�ot�)ԓ�I!����S�M�8����]"�M:�����r��w�(�T	;�hކo^H&�۱z��P5��gC9t ���z��wD�x�w��0�&�X�l�.M���(�%��A��� ��x�n�1%
�:�>���УX'/���܇S��D�a�ħsw��iP;�?�"T+�4@pC.,ip\�\7$�rk�:� z,/� �������;bF�ѪTNbJ�4Ȃw��$1V�D�Y�	h�~�����!`h�l���"��w��z�������GJG@;u�P6J
Uz����lB�A�֡82H�F�qZge���(��rYs#8sR��N@w�!M4�@
5u)ߵ{s
���n��q��Kq���#2�n����#`� >��+�R�mln>���_�\��%0e��=���C���A#�y�Mt�P�Y�������C�B5#��o�C@�d���g�P���]4����ɕ4�&(q4���	�����:z;�I�#h]H]|��v�M}��&�8�"��6&�^���P�����Ҷ���Ҹ��cn��&�)��>v�	hl�O�e��NM��r�zݵf-�.�+�f�7�C, �x�k28�-Gps{_n���nb��v?H���AK���P3���ДA�57+���P��/��ƥ�P(iB�8Up3�g�@���Ц�U7��=��6m#�&?�v*�&�GQ�zD%:|��r���47��Co�&����믿�okr�x�S�7}*dL��Q��7��싯���s�	�\nЋz�k�,���HJ�����{�IϠ��U�b6k����-��@��M�Z�A�P�(?K�y���G��ӭ�(��vi�t�j�*�:�.�r��W7���:�u��jS�]&v[ ��N=J�F���t�S�cյ��;�Gy��Z�Q�3�&��~<��Sy)tn��n������ĉu7�Z�� q�����Al�fh7zK�
S������I��j�^j�DG�]��
����l�б5�J���ڊ��;��NZ��) c{�� �_5�9E����@��ii�1:����7�� Z�M��)AO���Aʁ�F�*��߾mz]W�VhC�\<����	�GSٻm��l8�SfOTҾr��28�/��9��^���I(��E�C�syn9�Z��:\ ��r�^���L�f��?u�ܪ	N�#`��V+����z�3eL�̂Y<*.E��&��`̅�2+w�Fg�Cg�_�'��p�KdH�/?������ّ��ưb�!����MIy?2��95�����@�jC�\!���t�E���U�n2iҾ��P\���������W/�IO���Y5@r��	�.hh��&:㯓���K;�}�LV~hO��kKd&�-���5��dAj�XS9��@(.%����m� +a�\��gs\�Fj���и�6�G��D�&�š�����!7���]okd*���L:�6N?}ń#f���~�G�ȫ�6o3��8_�n~#3t���U�>�����;����L����g��_�ق�~�Ӂ}��C?s��ܲϒ�p\:Bwd�і��o9Z����Fp�z?�$Gٹ$�c����c�oP�faՓ���@9MIz�H���
5����{�O��Qܽ]|F�'.��P�u�}���~uJ�jӎ�x�m}��,���&�9"N�%�M�H�5}^���U�Ie��x����� }���M+4�u;/x[�=ؠ3���	�S�E�kg(�)�[�smҲ�؅AJ��L�����r׺��Gds�ԺO/(�́H�Fi(�h���2}pZ@�p��m������    �V�U�ߠ�:$�s�p�ġhn-ë��=g||]�b �m^���t�&Q�N�X@pĭ-�0��x�����$;:)�(�;ۮ���L�&_dŹ�_���57���>�>�s~&:���S��qΤ���C��h��8�r�kOkJ���Fi.���_�����tJ]d- C 'm������-�t���&�@��`,o�@]��\�A�.M�S湔�q�����qf��1@�vǵ�:z��Wq�9��[�t�i� ~� �ʍ� �w���z�x�Z�Z�Q���|��^)���r�e�u�/��S�t�7y�k���#P���~o������%�A���9����#�:3�5�Z&A��Q)Ex#W�D��������N�:��f�r� %
]��ήx�7�*�L��3�N���tji�|��(���9�MІ����Ȉ�Q�ӳ�mh 4�A�W��W���[��a�X�JDML ���x�ǫ��m<41JG�u|�J�w�t��)�)i��t���6�:�g�P�C��4w�r�M�蠫6q8�A��������2hh�؞I;d�����u�!�K�溗u�7�\W�|&�q�h���l����m&��MGp�8��lۍ{Б��}��MS�0>�.�!�s���l�P=��Z���K��Qɵ���t�m��p	\��s\��*n擵�S�A��+��Ʉ@�5����#��#�)zG�Ɍg�A�ǡ/oY�*\��A_șơ}$��=o^�B�+��D
9x�4��\`���U6
}�A)���7����84�	�W��:SRN�@c����G� �} ��Ă�����w���>�{qT���{W�^ו�8k�T�hoy�H�	yo��>: �ί�.�@#�Z��Z��,\C�seL8��C�&Ij|N|sdڢ= ��F�T� �E�B�s13��+ͧ:�=Զ�����~Q�Un]�TLFw5�m��Ea�!��∢�s"%Ǯ^SF��E�!����ݫe�P�d��9舭\߲��V�Ë�	�;����Pm=�K���r�(�fP�{�����-i/3%�T,�n_յZ_vU�S${���\_�k%b���b�j�@�݅J�kxn\zX�����L����.9
���}:�N@�z���.��������Y�3���G���i.�Ӄ`Z��C/��r��m3d	��O�/��(�z@���(�CG���lR@�%p8�U(�:D́�PA�9�&�W��N5�`JI�'B�B;��w�[9�;4Jfb��[�%��ФVQ�=߉����W.jn���6��3Lu�u� T�gn�@A�.��Oq�t���ս�p#��*�ͽw�	����7_�#�4k��$��3�Wz��:�Ns�nh�ڦ9���SH�jS�m4�N�&�w�������ՄH�i�z/~�R���W� u$�m3o��Fp��ZᢤP��+��L^�5����zC��r�Mt������ep�M]�ֲ�R�hC�P�E�k��;��ҒY#+�4��O��f \I�q���t�\۩�k�ѶYu�LS�[W��%p�m�^*Gnǉ�M�(<P�2�ʑ�!��QT���p��� ��v���SM17k2܊�ꋂ����A�B��ȍёDZ�ġ�������H�AD�=7�	\�S��{dr	�ؾ�|�Lh�Y ��v���x75dг>4�WM��#i�������i��h;j��O�H�JZ���	2屬Ĭ�"�+���DMn ���|5G���^H�K� ���UN57.� ��_��f7������-#Cƶ�('�8��۫�$?M�;������r��i(Q����B��	A�w��SZ{����H��i+c.%!XT~bY!�kq_B\t��⾠������H�1����NA3�.�W����~}�$�-8/�u]�����G�GYţ���I�\��(E��Oq�YKS�҆ 3��Vn�� ��!�	��vT�S���� @-kk}f�3$ض��1SG��ѯ&�EW�Bf�z�]L�(ɓ�p����Ry�6���3�]�]��kM4 ���oy�7�hR�Ou<�� 4��{Y�#���lX��`��7�M�۳:�s�8L׍���fpCc�7�4��8��ֳ���	��������T��r�5����^�\ ��*��ׄ��YG��}&a���w!\~���|�/��.;\���.]1#���\F�;��ۂ������ fR���Uw�(����?_�hZ_�sR�/��� ��Z�8hX�{�/اU��ߝ������{p����kC�j�Ѫ(d�sP��c�V�����Ȅ���H�J+ʒ¬�]_�ZŌZL���_�I�"���4���A3�: ��chT"͐K�Gp�G xT���a�Y�H�Y�M�3�%�ş���p�&���&��=�?��z8�W�֖8�n�<(��ӥh����"���vq����t���윱�j<�7�˳Zh�]9u�_�g��p� t�_U�;+�	E@;ZT�8� t}2��ƞK��M�2�F�s���y�p�P��!��v|.�[�Y�	h�y%Y���N�L��6\���Ȑ��r�u���E��b�Н슫��H�&	���Jg�QlGX���%��w�@���w���#�T,IW����u�NWY�  �E����p	�`�b�1��3�w̅2 �_��i�Tl��*�Յ��+����{Jh^,���j���SD�Sy^H*ϣK�u�@����֑1B��STd(�#iZshB�kJ�'��	]S<j4�|�}7:��A�OÕ�kV�	e@PĶ@��Z�X�I/�'E_��}�]�Ie��D��X�^�br��_UM�s��!���K���w{��"9�O7������:M��bd����MA����ño�)�$]��(T)� A9I��)� �$�����g����uQ(y�˅�9(�<���4�O�C����T;�z2H���i����������}��
���
��;��xq�����e&=���g�񷢔K��N@k(�C���]5mߌ�˳�ڗ$-�q�US��"_�rQ9�* j:�	w؆@�ѢQ�[��@����Ji�g.�M-w#Y7]4���U;�QvK��ye��/LzT2���X�x����a�@��\�V`M@���ت���3�Q�g�������y�:��|��%4��#N�Bz^ڊ�pJ)��<������jC�@c�R��ɥw����"�5K\c&y�zlW�w5t�P^#/�@����:��{7��*N���yt�&Gӓn;1��@L��^����r]�/��<*F��r���A���%��yb�n!��y9�(t-t>*��́� uc��^����ѤqI���p�����Ν��>�%��~7�8�.7���{3I=:���2�;Z u;lM>�8�j:�Z�WE��v� r���:��������:5XX�m��߯��N%�B��OV��_��VA��5=j%�A`�^=��r�Qz5����EI�f��d�r�~�2sIs��rz�0�p=4��_=l4 �ɤ#h�n~o� E�6� HW�7�6�#�Y�qd��	�ű��NݣT�.DJ�)%��LJ�x ���2H�J�� �
�E��q]�I@���eL1b}��<ar��1�C��R~����o�NlҤ_˱���Y5$0�54�3v�`�Y�ƥ��6��(�Ӌ-n7�{����2��п}&Jj�к�Y�{�p��H�����!���+[S�K4���êJ��s�<��Q^�Es��U�{����qm9&o��Yl1���c�����Kǻ.7��fp:b�ywl:��\2�]����`r��K� �#j���!�wD�t ݚ�ܭ��JL4m�gԃ�T�@'��3��v`���IO��6�tƦ��2�����=3,j˾���H�B�ؼ���������%��H�{�-�����>՟KF(�.h.௝Ӡ)�Ј�v�%��}x�w��k�,��0��k��������    ���^�u������s�ڌ�f�|���5��)�T,r�np]K�<z��jk���nx���+�<�o����P�)��n��g��}�������+/���0:�áىK��������WNߣ�ux��N�+k*�񯞇&����=Hp\Ni&G�6l���o�����~�^@�C�$ڐ�őW����DI��^�Z�-6��A��-1MR�'f���H�
]s���1B���(���	� �ۼ[�?[@� =z��c��t�KZ�y���Z�H���X�To�?s���ȑ���U�ɀ&�q�=�/ō��3t0Ԅ��R�r�t��<J���7��F@;}=���w�	tMT����&��ꦭ�%j0�:���sq�f@գ�s����N���b�4�����5����i���gJ5�P<�t
Q��nyw�-�)��g��(iV�WGy��!I�y�z�[�|�'|\G�%��Cg���Fm&��N-�	��.���ٮ�l˂lz �|7�C�mE9�?$��mt]��yto��=��ل@;-���ɦGиü,|9M���_T����e�Vz+��dMɒ;kn%<!;k��t�9��ܸ������e]=-���<&!:��P TT�����Z�8�u�njOEګAgM��������������R_-��@t�P>�9��@c�	(�F����qQ7�۱��L��T�UM�*�^@���~�ͷqhr�������&JJ����T�;W T)F��B�:�
��<hգx<�rط�a���hz��3�ԛn��$�^��A3lD�2��ǡ��ǣ&2��*nS��	X �[�ވ?�����=��(��jS�����^͆���1h4ծ�w��s��j)CPk+O������zln7��^=��\��Z��&Z�v�5=���(ߢ�6�0a��N��d,�1����X49ݣ��{ӻ!�P ��m��w�����H����@�@y�k�|�]n��OnZx��s1\�"b�ȹK�ZM���v{�r�_��1C�N�A2��ep����nau�e-��`>�q�=}ҝQ[᫯= ��6W@� ���F��-?��f�5[c�@���Av� ��\��B�w���#�t��53��&ps�\�}(��S�4�������^rGO@&]�?�(g.�
���T˻?:A�t�n�uh�W�AߴA�w���	ZFI�m��4�`�� �
�:-=�n]��+rE����o��Tд�� �&б�%{��9t=�į+4[�h,�975�)�"�
;2Ȩ[V��������4n�����U(��>��tgZ��w�n�V.~�СC��FMk��tp��.4+�����Ys$��aǿ+K
����G�9��qs懒��n����epe���?\b��ɜ�a<��t�u����\��r;\����}7	ˣIk&Y]ڷ�[���Cb�!+����w�M5�	�@� ��œB2n]�AIxX�����N�Ȕg�ݛ���\���e�}<�-��kͦ�#h�W���r�
�d+,}-<(j�w�6: ��_b0�[�#mJ2(0�����)�tj��zG�\fN�nH�[%Uʛb�]E�Ǥ%��=>���D�u�ȥd�xܸ���q'gks��d�<��4h2�k#m@%�9t�A����42����eu|M�Í�Sc�2����t�:zWJ Ц����c�{ʷt�7���*ή�Lq��A�����x@�w�P��$�� �
<��݂J���g��NtK���W�6�@ߣ�Sa�Y��S(�*p�UI��M�8
�
����n8�+p��%����	���jL��j ��bHݶK�D��N��V����g*GP
�VUi�q��Φ#��C�>�G��6: -�%Q+��8i� v�}�l9E2�W�0A����K���d��I�Nn:��I��G�Π�C_���t���c�V�q���ޚOr�s� ���t�b�rh3f��-�4h�����I��I�#P��}j\T<ĥ'�Ö~-O�+ A���:o�P%�ǪōA�Z@����lA]��t5|WUŢ�#h=��fZ�t = '�G��R�»� Bg�>4�=��qF~>��&�z.R�\�tj�8��s9R�$e$/骟�'_9Y���28}���O��p�<B	Qy�t�E�>������J����t��ӆ�z =���������ҤD�fq�M*�h��^4=��͆�]L:�n�N��`r3�� �K:�E1l:���M�1�Mn�Z�[�M4�����@���%�:t{H�2�1b����^�45: �*.L��`A#�.�����y�	P���֣��%p�6��z]�~o1����]3sN��W�(��͐#��I����l��C3�A�����$1�/�+M(����i3o�?���ܟ���XP�rң�!�TY�߱�4.���\��پ�~ar38me�I��z�Q���Mt��ު�/y鴸�;�°�l<ݣ�P ����S]�M4J.�v�����v�U�^��&Ih�t��23���yǹ��Po	D�����w���� ���e�� g��׼�/L��m^@kg9l�z�r��J��:��a�f���h��ܗl=�@'e��Knr#8޽��܄S�6[�]	�U#��I�:�Z۽��*1��NCB���|l��PݞHlt:���Me1�u<�4p{�vb��B��_V?֓��� Ng���p܎��L�H�@wU�/�����z�.$�sل�~9%`���=��V��L-�t����?�Q΅g�]D	��ep�y�R����.�n*E��7��pJX��m��Ta.EՌz)GC���.>t%۟�A���λ��߁�Yajm��.
�"wx)b�Y6"��6�/�GQ�$��GI��!��u�#��͚���gY�<E/���mm�]��h�{��"7�O�j�d%=R�\߉�v h��p���21��Fp�(;7����s��v�	�xh&�ߺK ���~���Eg�uf|�;��2�\�(�xI����}�A�M�W��_+���k���~^�l���uŭLt�)G@���)��D�p��P��8�Nw����ƥ'�m�C-Dq8�#���)�(oʎLg�'n>jn��:s������`���ˉ)c�������Mm�#�T��C%��߱�\K^�@G�UL�b���T�yh����o�	���T/�xVR��4k���rv�h��T���<�JM:����xk�s���.�%j�\2�cK񁾤�^Z �� ���9�����|�����g��)@��L���@�CY���v�#������Ʋ!��$:�'o"%R�)e�.��],`�D��C�����w�Fƶ��\�*���+���.@y`�B_r:1��zt:�N���'���Ƶ!�KG��Н���,�j]ؒH�P,Z
��ˍ���G͍�b��� ��M�:G�E1l.��l�z��y�dS�'m��H���]��q}���|�.�q�>��nh��+�b�����i�.��z=�L�N�t�-�h�SG� m��Lh�U�ܚ����ec{����0�[2�z�9X��tpth�R`��^���
�N������՚�j����SY�tQ(WP�W���ډ��C���B�B��p
�NQ�Y۵�7�*Q�Yj]퀇:��JqU%���FK��	̤J�{ ׾X宮W�c�Jk�BΠǞ�6�&�K/����9d��r�۷��� @�w�J\�A#Ь����;Xv�&��� �,�W��u�}����&pC�N���S�+Ut�T�8(�+L�?��rd��M��K�d? �Êj?β �)�����@�����$:��@�{��l:�挨G�<�}4�w�@8�m��#P�N|/�>=���Y=&���� fQQ��Sϊ����.��m��l^Ѭ�4�H6� ���s},.�q=փ�c��ar�N1L3_�!@�R�eޤ�:s��)n��Wű�A'�z+|JJDm�8��O�W��f��nh(Q����>�¤J��-��XS�1�    vE��-�#��hKǂ���@����������� �f=t Zr=�����A�H��&���o��G����	�W]��	��B��D��)`� ��%�������P�C/�����u,����z�pʶf�p� Zw��i2���l�gڿ��ݯ�h�� ��8�J��B�_��<s�	h�(y_��	%@�rK}�gir3�n�Q�m:\�M�x!�S�O]�4(��aݱ���+�x��Xw��Z��s�� 1��fW.�uE��l���.J���u�]�#qL#d�dc>9J���Z����&ڑ����&��K��������W���<�A������ۦ��MGp�)�ج� ��eI�q���u���&i��pˡ��u:�HhW)�~�3���Pj����pi�砤,����HEWt���-�[1�۝ɡ3h�H}<�-���roM.�%e1������l�d�0�]�4�v��b��0@@��r?>��:O�x���)�zT�p���%�%pq;h򼪁IϠ�6��ߢ�O�]:��n]wlb�[��A��K��ڹ{���,�ۿ��L��I�YK���x�q>\�-7?>���榙��[�|e���Z;h:)���+
a8���ߟ��_���/?thR�If�uM�C�- !`}l�4��"�`c'�+��jtS�#��BM�C��%"eI�����#\i�o�;J�����A�?�é���Y���^����-�vX�4C�mt9]_���X�_t� .��No�"jr��F8���Ӊۿ�^�D��Ϲ$�NhU��V*�W�0�L�j�9�߽<E$�^���)u��h���ep�l����Z9&����[�c���G݆q�l.�u���B�@�C� ��6e�4iR��#�<��F�uМ����M���Ŏ h/��ֹ����G�+t~�s���H�C��~���O��}tQ��7�r�r�L� -���}n��HX�
�2H�*��>���#>�>�K�N�||�������i~|��G����^M�T�)�fl��&�����y3�İ��E](L:��* �!��7]��C��uV�
�G�K{U8����K�!Gƪ5�8�VZ��.����h�hڦ��on�Нb*�op�(WR�s�=����'4^v��r譎�r-�F�n̙\���-c�����f��A���ꖧϧ���2ja�EGXu��b�#ČŰ�Go
��iv���@kDQ͚��?o��I `�ů$�J��hĝ��`~|�e������_�Yi��,I�	tM'+5�4j}����E3�.'^�HP/�S������7G���e��Q@�R�9���FI�&���f\`�H�OΚ@�m��͚��5�q�hߝP���>�Β54R�I�����%p�ѯ�hG��0��)^p�ZG���%��T���e�˭G�N褳����P�B�hIr�H��m�Z�@GؖAWG *��,6�# ������BЬM��Ob�9(t�O������
�
ݸ�r��R�� ͊����px/�檠�\�h�:!������>�>�;�t�g#>���9u��{�P������!C,�̰R^�Ș c޷}I�W�c���B�k�c����N�֌0̀��g��2�yg}��Pn6�.�F�#�eשy�ZhҤV4H����~6��F�;��Jޡ�ݎt'[�Í��֩�륉N@���D1�@z4� o;�J,@���t��m}�&���O�F��PS3�䌃��O�^i}��G��Ф��A�9��0\���p�����@'���Uu4�hj6Yqz��N@��#��>Q�K�v����!=�^��
|/�wi�&���%cd=]8(4K���7����G�g���,P12[.�cg�^�4�W�N������D|��tO�:��>�S\u>>��#<^_��������/m<֑� ��|'�2����͇~���;B�2w	B�*���tLY!}�^@����g����s���u��z�o^�q, U@��5������񐭡4CI38C���fKw�/�D����*�qΎ��OV��, ���A9;�o68NW6����I�5�eF �O�E�����_��k�!U��N�߷����P�+9c��4��M�M	��f��T�z]{	8F�B��w{\�==���,����M���Y"G�G�DP<�_�� "9��o�	��p�#�������8re�	E@sJ�' Bܚ2dtA�����p���(+�cZ	uN��˴�1����٭q�N!5hZg�/�@�MuX�����<��Ձ��d\z��R�_l��+aH�Z������W�YT�V���Bhp�&���~�=c<)�&/Q��8��Jr�gz��
�f6\��v��m��v�2dDe��;�@������M�v72!2�jh�i0%#� f�D:O���&eֶI��@����R�f�Х�vv��� �#9��#�ӛ��D�4����4� y�Yy�4�[@���2T�@�:�?�75�&p�ֲ��J�S\�bf��'$4 ��OU7~.���>�'m?�b0��]�2���zKk�ߎ=�B�d{��Bgң����mbE-p��{� ���ʗ3�<�|������\����U'���ؼ�!7��j0/��3�"��9!�|jCF��v�Z��u]���)��Dx�j��U���1B#�� �<�*u���'��2B�Mn'��9�C��AX"U�%b_:�vZ�����##��Fי�>��9��N�\�����������^@��e�}&���@���,�sͲ��l<��H�zׄ$Ve��4��q�?�>�:H>�P�;�� ���z�7�s����Qg��@��b<J
S�r<5�E���F8r��b����JR�y-��P��<6�������=~�t��|%$�=5�Us��Bʵ��d��i�����q.��}�NI�Mt��Yݩ\7�0����p�h�z +����J�i=O:�l��hY��s{״1y?�W�A�e��ѵ���� 	�����9<���x����FΪbe��e��MM����U=���^8+��Z�$�hz�k�[v�'�!��H�\�-��\]�v�R��6���.ԧ���lpkv�'\�(n��&�@T+���o������$�29YU�����ń&@��*��Aw�n���-w*v��P�HF���V��e��{�҄a+LO��}dsG,,��Y��~��9p\ˁ
w�.�Mb�����Yi�h Z��.%�%�����l˻r� [���(V�^��|:o'�WØN����m�3%=B6i�O��^���|şw�Hi~5��A��M�+ε38�m�ͥ��i�%w���F=P�����.�=lСF�>�SS����ț�V��!=���q!�K����"8�ڪR��7�6:f�I�u��uQs�n�=�0�%/Cz=��A��rD��&'�ێ[;��Ņ�FP�>�OM��I{�]�f=ˍ��}Ur�pկIs8���-k�Ky����7p�L1�n�n��iu�5���ͤ��vGA	����]۠�5�R%��
�K8^$��"sc.{��Pn�$�f]�H�hp��a���{��eЃ���X��%��з���Ĝ6����o�|l{1�܎s���t�-�|���`�H��E����7�[�u��g)�~6QR��pW�KX��imu���ࢎ�2dt{T���*z2�!�{��[�E\ �s�K��@'�q�*�����:�S�+�#�6m<`��#��Qm�	��$>K���VdhϠ���<nlG�-4������9�_Γ�)��r\���w�#=��������޳ m��	vr�[��0C@W�P�7����! B@��^U�J�t<�L��/�����^����
�ˑ�ZAT�;��4�����K�n�N��љ����[�,/�M:�����v�����P]��H�#������qV׺!�m*��0�`
 -K�`��^"j���#-�|k/���W9$�
:?�    2��A*��r W��>J����
p91߉Mfl���A����dZNr�AE{���oj!�A@�'����Ϲ[�%`� ֬s�c�Bg��ܐ��������_��"�q�0�kt|�[Yb�$[�3�-I$��̚��iՒ�B���h�t=��w����(�)����+5��M@1�&���_�
�l��ω��+��M�p(�"�+�4B��2O���#��m�e@]ܜM��Ǻy��Cm'!Œ�n&M�O���im��S%F�~]����%��!GE�ą^;�;��-ځ�Z��(�-�T�x(n�D��8N��t�<�N@9�p-�Ok,��a	�!`Q�}�t��5{�e4�őf�,�p��}b�37in����5˿������<�Vpܽ�A?X�Fs@Sى�jz��9pm�I|�&���F��Ȥ�4Z.�x1eL���L`�J6��x��Ïؤ�a3�%I�B7�A�M�h�m�Y>�/G��A�ܞUo��sI�&�s-��]�'�L'tV�? ՝|�P�[1iZ'��ӻ7QT�oI�t ��XP[�wbb��� F��Z1���6CXR������n�-)���������-��n��6q�Wta4jt�ۭ�JN�@3����gW�lq\V��2`�@u��i1[�h ڭ�M��B'���'ϐocB3��@OuB*C��\w)+MJ4K��a8F�GN/?W�r~�4T��ƨ����^Mz�I�g[��W�N�(����Ě�d#�70�4�zى9�Ǳfh�%#@�N�n2�-zͶ���:�xgr3�v�uc�4+q 9_�c��OOL�EC	�%�gG�|17�p���EιO���[�����K���Ci���rv@ՁFc΃��Qo�� �ۙ��Kw�B8���P<��'��Y��z�3i�B��?q$�K�h��uyҦ��v���=N��j4��2����0�p�h�?�|��Vp\l�"�t_e����x =��r�8��hL;�]��9�C��֏_	�`��ܤ2Y��tm�F�R��{{[iв�j:�Ϙ&�Y�O�=��,+���A�	4�}�r�Z��t7$�q�~a�P�
�8�$��m�8N�h�C੸@�b�����dq6z�@뤅���� h�a�9�7��Y�G�>����]jr�y�9��崮Cx:0B&����חҒ� o:���>qv��.@���$�7���'���4�H�wK�r�����q=����|͈oK�����A�sO��I{�3Y^?W���I�>���x0�g+��w��a}��t=y���`�H�����[���sT!�E�����P�2K yܑ�/�/�?�!� iK������m:���x�ޑ�� �:2J%���f9Qʲ�����hJ�������:�%�pU��Ca�>(O\��QR:ߜNk���Y�ӾU�s��sǁi�ӆ�
�+����I�D����ڑ�ݕvx��o�C��|�n��P�(Ϸ�A��-m�_�t�'��9��;�/Ŀ���c���tu���/�k�4:*1��L��t7����!�h:�_�g���������M��FW�k��g���D�Cp��~�%�����\��]�Y�mi������'9��z�S�<t�N'?ʭ�p�i�*����z��<=k<x:���{`s\�+��:��m�N�Sk��.!4�[��-�w-�[�q�o,uq��^yǡ�oȠ�S�WK��b_�2�VN�n�>�}@Ŝj5՝.*�~��]�yR1/)�_����(��Es�W>��/��,	B��Ɏ���=�@�޲�~�ę��%l��y�� T���d�Ļp����v;2<dh���1��nM1bV%F�iZ(� �e��z���ZJ:$=�l��*ff1�!F���Ġh3?���X�/�d,�15QV����6�4]�Ɂ��U'R�mH�׊:��A��~dwo@=P]:!���<��h���?�R�j��z�'�iYq���Z�Śx��z`<o�c.���˛c?w��tn�6�FY:YF� �6���Mlp|3�ۼQ�3	ig
�	,�i1b��M�nL��EuZ�&Yh ��S7A���T���vˢg�m���*C(��V�����d�%p�<H��/�Ҥеmng��9R��K��Q�&�꼜؄ִ��nQTu�y*�O����>�KYS3��B�.d!%��2�&pۺ6��%���3CW>�J�{q�������	2�v�N���IŢ��?�ع�-�t�	��ͻ�~9��9�I��� ����=%h��	ƛ�n�jI�2�!.n'I;�~]"ML����67y�"s�}�8>V�KM�O)u�w��Ct�����r38�����W�� �����;�85D��/l���-b`�7�?ˎ���W�V��2����]@u?�s
����j�y�v��4���Y�grX���s�����"Y�_E��Ծ� ��ֵ'��l��Tk�3PN�E��4o�����f0��&����d
@��4,$`�mӳz�����?~��m9 ����D�6�g�l�3�`����� 5"]s���z�B�\�˥�����l���_�]�U�՝)G�w�"�E��[c~"+�έ���qUR:�՟7*˿8���i�纀�Ǵsٗ^Lz�����F�?��Z�Vr�2�&��$�OJc·�s ��)��}JK�-�T�F�j���2����2���mv>�L]�b"�u+eѺ�F{[�$�v����9�>մ�
�| n��
��|Q�d��ݎhw ͕�O�6�9@<��~�ɚ��Y���Q4����bq��F[r�.�7�$�@��Mʅ�|�Ҝ�4�Ձ�Ц8�:����Sj1?�4TɅ>0Q냌WK�4o>�39����L+YΞ!ڷ�N�^;��uC������F���ݕ�s&��p]Rq��.5\���Cnǎ��gp\�̵���H�f�%g�R�[�E�O�R?��$�
,1�SQr��eI-^�Ҁ*�q�G,����3��c�EC2����s\g��������{q%��:t�:�~�R4���bz��Riջ����G�X�P�B-56$�*[��w^|gs��>�7���E\9Mj����ͩZ����-��� �?��ݚ��-���f����m�Љ��s��M�7Jd�W<6AW��K��/�3uOnC�Y%����oya�����ݕ"�ׅce�k:��A�F�����t/�rc�ҕ�`un|�7��<*���h^�������s�Bk|\�b�h�Y�8ѵ�f��4���C��/m�2dt��o�OϦ���@����$�:4���- 0舅�b㳸%1�� �M@9���~�}7�Ǣ���HC̚�q g���?�r�^�!��W���mY2h:�Ƹ�!�C��A�5I�&@������HҐ4ARlۃ�����Tk�Z�n��<��:v��;�|zã^��gM�߳�A�\�󖋈kC����q��[*��(Z� +��;rj4��q���/�f}�=��D��MKO�@j���>M฾�<�H~�6��NC�o�8�h:��zu�>�y{h������񃶼��gS�
1����L����[�py�h�s�9}�]8}ھ�-�@�ks�[�_�!b0���(�0�	��Z~}��ຳnk��lHK )W��Z���jNL���@wݴ�5��^Lz����@�$���r6�W�]C�+)Һ��� tn4�5�-���!n��_�"�$KE 뫀�O=k� �5�W��t�W��c���u�V�g���:�����! A�n���%͊��Ϭώ9}2YWp��=��p8 �$8�y6	B�.�M΃�mJ_r���@�ҼRr�h?������i|޸?��hi��ur�j5й?K���ݤD��&�>V��ؘycI�SI�^��N��^�Z������ �cߥ/�f�%�A[[�A�Z�:�����(o�'�һ��PK�2�2��Ѡ�	�y��3� �����2�hR����KഫZ�h�7��@@T_�C]��(��*    ����[�I;8��r��^�c���4ICƨN�$��c���"�ۿ���=�o�x��4k"�PIL\s�k����n{Kw�9v�P�����h�s�U��^��Xh��UU���P�Mz]��<HGh�<b=��ן�T[�h��r|��˟85DgF4���ER+�;�?Iv�D6Y��8�\u�1�	t��V�f��ōPJ������~��ˠh]�a��k#h���E�U�#�ⰻ���DdB���"���ځ�C͛N��Aצp,�j ���vv��aʘ C��w<I�Bg�����$�%͛-2�3�E�L1	bT�sU�2��hA懪�ۚsC��@N�o��:+�����+ũt�{9&�A �.�S����ypS�U����s�bz�M��5�E�RV�!:M��1��;�#���.5e@	��j~�*�'��I�mO����Q�̦!o�R-9�����H�U�C�f�{R�;&r�d�� ���^4����~��& �n�����	��s]�Mb��@���\��!�vŹ%�n�p�.��u��K�M�u� f��Zr.�}�=��ͺ{t-[����r�wz/�\�J�79C%�hrl�-�z������\ ���^��k��@O��S���u���1�"�(i�cPR(:�N{�\���}$��Z��H]����х4+�֋f��r�_����ڔ���Y�C��%�u��
�r��
^��=w�!�t-�a��CR]�bGj�'�E{�����f�@#P��Z�w�$�h\�gI~/^"C�1�7T�g��
X!@7�*�w��z Z;���?�s�t�]�����n_�R{�{�P)c�����|��5)���b69hY�=m���b(��^����d/��no>@�mФn�&���]L���9�\Wp���2��44�o:@Ѵ��ً2��Ii�m��,?w(�C� -�DI��M]ic�Jkw�'.�x�<K�"'��'�#v�gz���#3�~����R~wk��3��{0�����Ԡ�&�6#�x0K��6j�hPC>�-�FW���T�f⯹�1�(�|h;�]��h�;�!��жl��fS[��@�ݕ̸d �)�.�t&=��c���i�&4j�t���T|Ǳ�&Bi�/��3���A����1+�Mz�y�o�}��'L�4P����&va�� ��$Y�d�Кd�*9���Y<��M��AC��(�Y�R�wڷ#o�C�����Ops*�����.�Z2h��:UO�M���c��Vp��-����P�͚[��p�,)=���2�2���S9����4�"Y���c�PgԔ�Ӏ�n�U��5�	\j��Ӧ����@��ƍy&;ܵ�F��H����n=ӤS~3��F�G�.4���L�2�R���ת��u#1���t ��:���I����� �]���]��&<����p]㢿}nr8�����&J*&cL�j*O�kF'F�F#Pn�����줽4���c�~�/&���N���y�+й]�O��>�ީ�k�ֺ��נ�t���$���)֦�}I��Q\��Uօq+��1�)�ԟMKǈ�ˌ@ŤD�/jv��I��^;�?�}��:��h	2t����2�hh��=I���DW������ �3������ؚ%Hk>��v��c���!OM2��n��Cz]�/�G�CI����O�e|k?-:f�!��im��h�G��<��Fũu�>�����Z�L��V@|��\:�������tnţ7��� ��	I�=��|/�h,�C@;���q�m@��R-�5P�&8����$���M<?���}&�yy(��.�j�s�T�w@
�����W�W��+��A��N��%zȭ�h�W9?���a�-p�й�_�u@Y��V�Jn���b��Թ�&�%�Z�g{��|LZ��&p��Vظ��|��@�@j5DM4�϶��S=�>�@w�,Մܸ�:�=�p�x�2��+�.�ڥ�w���&��t�Ƶ��ϒ�op����#�%-ø
�M��b��\�V�A�VR�Uځc�����	��]g:��Vz8h��9w͸M@�ag�H��.@��,u���M6�hh�q�W���X>��Yw9�ѥ�ݽ�˥��7���5�A��W�G�����Mډ������p.0��܆�޿�V#8�i�)k�ӆ�I\�)����f�����5�����$�QG���?4J��~�y5 hVg��=����E�YR����3 蔛O6դ�p��w͒~`/���>�)b��/r�^6�×c�L��7F������Y��2&-c������˕!c�]H[6�1�@u�T��H�J��bw_��Y�Ez��5կנ�.������^c�n>i��xu(P���%EH�{P׎�� @w�n�Z�4q���MǷRE�����W��ҁc��P�=��L�a���X$em��qv�΃� ���?:�Vu��_���+`��T�+	<}0/<��i'���g�@�N�tA�&-���
�>�%�
sN����xLЯ~�x[�=���r�����w��r)'�-=�1�iU�, i��ӵA��pA�55Ѐ&@Ӯ[ֆ�fS1�t�?���%Es�"��,�0�ܲ]1�k�+�N������w}�f�Mc0XW�f]������Lƻ�����v�[4����&6Z��h ��1�I.Lbљ�%�ip38ݔ��9t��Π;H�4����h��-����>/�^&J$��zp�R,�!@���mO*B�\�����(�Q�z_�蝸%"�`2�j4 ��|JK
�.�����=��T��1/9҆�G�/�\��Ξ�4n%=*=İ��־�ugJ��F�^� ���#t��_��x����Z2�2&�D�ɫ�O�Sk���I$�h���=h����>�� @�w�oLO���S��!f�����uo��������!�|��CRt�7'���Ԇ�b�]��|u&�����>���uqqE�zMڡ,��l����l�yQ2<d�}&��� �]�5�	��a�n��&:�n1_y��q�~�Bi�����CW?\��71��K�ۗ���Cnמ��	w�Sΐ^A�|����]dKgw~�<��|;�I�	)��'M����np��1;�^Y�r��s߸ξ�	h��"������1HM.���-H�L���>� -��*'"�s^ CWq�����J|�Y22n�r� %r�<��uk@P��PR
}���o���{4P(�����}Bqܬ֣6�˸0��E����#��P"J{���E�a\���K��Z2��t�yQC��Ɗy��u��ڮ�2��rx=w �_H�3�Y?ޛ�:��q���Ä<�#�:ƿ�ȟ��bƪ���'��Is$�Q�?Qc\�4Y�����KcEW%�	R��vB��ܥ�D��Fк�_�_��[����%�ec�>�VȊ�z(�D�ߡ�C�@k��r��f�����As�Ll��U�����AI��<�ܠ'�;+�ӑ��I��&�u�z����$>�~�nX��	��j��Ӷ_��B��= ���SN�T��gP+��B�P��|8�!��Cg���i��4J����̏>*��tQM�3h(��9!�)Y d��! ��#��}�'�r�08��e6��d~��Tl�n�N��̴r%�� �ZD��'� �e×�%���<8��Ը�L:���8ߊ=&&ňn��!4�\�$���"��\�-�5�n-[�e��yg��5}����OtP�ܪ��(�oRb�CK�|����uNM΁����o��Ppcߎ�([`�B.���$�"w8�����R�˳j��(+ �,�'~���M�6 �@ܭO5d@�\7���:d�aA�ƭ�׎P%��`�Z2�d�*ѶZ~w�v7.I��"q�"���4�u�ͩt��4�	�ՎA4r(c��:
�?$��@#�Y�.|��x9v�	��z�#�%����@:?��M�5��%i�U�?ye��S�����8߮̿rA�xp������r��/��    =�Q�Z�fpܬFM<��&=�n׽Z�ip3����:��|Xt��[��� m\;���׍y*5MM��tǮ�7PhV�Ơ�����կ,aU��k�f�ΏqYJv�K�N!��V�R�E�td^��/K��C����;��@�?R��QV�E@V{�aD'�ܒ�O�_�;��.5[E��@W�K�[t�1
��"߁�s#	2� Ҭ�k��1q]�U/hШ��,�۩AН����h���o�]/����Y���4��L��c\�/��Ҿ�L�Юb����
����#ɈK� �\���EFe��5�r�{��~�,�'��e�z�m�giڗ�x��7�~�Dp��i^$�Ѧg�q���J�ʋ) B@����i��������wr���pw�>�W�U@�ଅw5B�_�'��ZV'M�+�e��{.��M�^Jٔ� C<��m�(�p;�f�{�*k	���b����%c�����y����.}��Iڳ�FB��tF�h(��jٺ�����q�3�:�Z�̵Z����X���I_�RN|�&=���N�\"h�P+U'�ڛ�4�1�@�\:i��5��B�S�Kj�p��A�ȁzS#p$Z��\�H;�<��.}�"L��G��JJ�Xc�fĖ��Pd*s�Q��\�m����������Pt:醕Դ�n��	3�4v����6�	h<)�<��s�Ge��#�v���]]4�v]?�Z8F����i��-�2�s�w��nҤSp�_J��-ـ���R`1ʹ�������$)�OҞD�bݗ� )�g�ތx�n�CL��d�[\ 7��@�vݙ�4��ym�h�3�Ժ �,m=�n.&�K&��I�	{�_I�6���]�je�IC�v��_�7C�hӕ�2޻��Y�GTb�f�{p����Ҭ3���x2����~�N6�&@�D��ƹ�J�#z�g�P�x����bKs	ܨ��.@��s+)n�^�,I+$-���'�t<�^O䫽o��]�fiҬMS�� g�Я����pˢ�_nTx�ߦ�"��ug�31�웇��il Q��kS���'#^,�w��j��,C�!��P��\�|p�6�h[�:NJ@m#��!f�h��%`�z�z/z1� (��z~C�;�/�-�0��g�kt����%EH�nYy9C.��	͗Z�SS����T�s^p��
Z����7��� Z��z��5�x�
p����Wcu�z���]P��%K�b�6e��!r�>�39��w �s�x�Uv��&�s%�Y�n��]�������'�EC�\[�Ўu�Ph���8�E��rm:�Z{F�
���_����`�+��-�n��.JsS ���5�GݢI�������'���'�]%�m{�2�tQC4�q&nZ�YbĨ�$�ibq��\Q���fȭ�j���N8p,`9 @;??�u@�v��y]r��@��Gwͅe�rP�&pz-׳�#�\�|���۾?vϤbe�eqϕl固&�1i2��ت�ť) A@[�������hV4�]��ش����Ϛ[�����5B�Oϱ+��Da���0�s4��4����w��y�^��Z�� � �21@�|\>�ߓ���+��m[����:�މ����6eD�Ч��st��E�Ԟju��.@�ԌKq��
n=�&�6K@��;Q�uZ�C˜���&� h��`�&�Z4���C�����y�?�2��}9r�f:iz�+q��i��S3[�׀ �r%�\2�\�.���|6��u#m�+4�V��8�c���SAV.��MM�}E#��F=Нn��K��^�v�)��M��UBH��j]r��Ϸ���z� m�?XwN�5�T��:�����jh���I	������S�
1�,L�tL��� ��'�6�!�A@y<Cd�}d΃ӣ�q��2.LZ6K�:=��M�U�AC�.��u�������ᙿ�0�#�.�Ùh�U��D{�<�r�k��t}JJg���+Pݤ�=ë��K뿒W�|�Q���>꾷�E�f�;�L�0�-���L>���IG'��ۂ�9n�[6��o�	��t&��bc�~��?��P@ǣJ�$��~��>ǹF�]DV܃�C[z��`g�'�Ωf(�Íq���.v�"��v�:�:���L~�z�]2`�%5� �[|�u��M�t���t����D�@S�)4i_�������:K�B����Np3i�&tE�i�f�S�ΘKP�>n��g���F ������$Z���m'��ԕl�wG4+�f��S8�B
|E�^�P�S����5np3��\ĥ�Epܞ�d!�Q�ۤ��D6�S����B7�J�I���B �!��ϔ�x]�X2ү��A�U�g6z&�7hq�j�E9���{�z��N��'J��ő*�bg�/��b�:��g���3Ds��3P5!�d�Zh:�14�(j
H0V�!��뒏�L G.�]�juZ�$�[!w�����ke�2֘�r�U'�[�Q[��D��%�.|�޺�f��nS�iɘ c�0zzX�Zo���o+�CF���6'���|5e$�Ц��J޾I/�\�T� 9�$�^��8h�N��;�QU
u�sipkv�;nPE��9M�WY�J�Ր� C�Ϛ�c�֥��>��9���� �h[kK�웺e�a>������2�̰/T��.`�~���,ZF��.��>�1�������P�"u/�.��q(`ͩ�7]n�ඝ����5�zՠ<k�x���NY���
�v�y*9��u�(K������#�$Q�������������7���#l�! m6����u9��˖sUނ	28�����kɞE/D�C{���'gH����4�����Yi,�C�t�T�^� �s������S�.
�s�
[l���rm�P:��_�/b(�v�]J����Ҙ/|�C��ئ~����%�nn�2��|��2�n' �{��Y��?����;�9���C�X*�\O��WnRN�5�qԥ��}(��u@C�R#���39njo��u\ ��&Hh���i[�>�1:M�߱�`�(�ss��\�K�ֆ�20"�)�f�T�&��;ї��滜�>�+Xh��Y(ԧ�aq-h����7e�bH��ư�e�Lms�ozaINK� I^����n���ӆ�Ӊ���v�1���D��E}�-�81�LRmmɧƍlHZ!igX��ͤw�����l����3�^�h;���;�Jp��! 411��P ԥ�u�����89�O�a���̀�I�'4�"��a�Ҭ�C	�F٥T�+z�n�yo|L�J�΢o�@[t�B�J�qكn�Щ��O���2P����j�a��/��ל2�#嚻�>�WR2�����	Z�1:�J���	�y6��J����u	r��J?��ɭ���(]=��<��\��5�b,�]�4KZ)�<���|��*���������LZ�����4���~f@�/���:�Aٝ�N�5��#	x��g�|`�fxaҬ2a�$
~�0DM���!Ӭe������-n9���P���֠�Iџ�����2<d����E6���Z���;�'Щ��Ztn�3P=w�����KW��a�goi�;5��g�'s�;�-�O��/�2ih�L�jOHϬ�#t��mB�$g�@�q\������H�����u$ ��e\%��'uC�lo��+ʇ�I;��	h��?H����������Ny�*�~�-#A��6��1a�.@u�Jf5��N�3�>M�*_iD���]u�Q^�������$� �D��	��=l�JY� F����g�!:�qF.����.��P�q�p^��xЍ�!cg�г���;H�;�9+�Z ��V7!K�c?��nݜ����g�*�Z�g�A�\�t7����ӆ�u��V�7/���L��K���{���|��1A�6��$��L���b��)۽|, B '��Sv��K���ltKx榯�2�5'�9�h(&��`�R�@��WhZ�������G)�;��78.�l���MU�!�C@^��r�.�̠hN*})�����    .���B��)e��()��ǐ!�[�dg���#<A@^�� ��8�Mn!��ӶF��B�dn\+�e�S�k���h�P��mWj�Τ^ː�rSk��I�mߐ-s�|E���9mð_�q72�z�=�w��ƹ�D��M��������vw��P:�*���g����"h��z����'(��U��Ee
��0Z����|Af��Jm>�	���\<)J��7ŧ�<Ț�	�An�Wa�A�!̷����A�].��9p<Z�t��	���6������}#�������[����F���Au@����1`�躵��8�ol&��\X87d����ȳ��}z�K��n���mǞJֿym(�㱧�'Ӵ�hh��}����\�o��9�bHá�9/�i�(��8%  ��;�v%/� ]��ͥ1�u)CWMk�/��h8����v�B���Vl����g+m��z���Ҥ1:����g�BO.M��M�4�k.{�W���.�y�h�>H%%�}���O�hd��P4�g�6�����7ۖ�~�`z{ 4�@�P�t(y�
�kj�/7u��sm�Z~;�$��S��ٶ�i��5��7�q��LuKP7ߩ[	�t���W�r��X�-#ˮ��*5%o E#����N��k�5�m��b��\�p
�+:3�5:նl����4�����	E@m��dh�	��Y;�yL/�;����4����Qg4\[�z ��N�P��gH�BI�E:�b�\М��br\r��:B'�]�����dKbx�h�S�o1C4��*�K�dC@� v��O6�?w����󶮷��jw��z��G�ڽ����n�@�D2�	x�������dmj;�!ڛ�P��$��K�����C�27��?����?�3o��� Ҳ������4��r(�^���l�Ct��gq�"�7�!�����]!�7��;@��֞+��c΁��Z����kex���b��+��ҦU�Iq�q��U�'��s|IR+���D���H4K��ʧՕ�w �r<��z�֗��bNO${� h}�����a���>����@$��Y|��}V]���.M*�$?�$��	*17k.�Sk �ǹ0�	(���X�I��'��b�ʘs�/b2EF�⟲�.��稹�k�������&��7hxY��7���<
]�vϙ,��
�9>0q�TR���7 (�pFΫ&�uG�wtB�6� n��a$�ELD�JS���Q4P(�,0����A�� h��Lɒ����/z�8�'A�:k	��jSeȃf�nDT���j��4Zz�Z���T��|<4d@�\������1�n��94sb��m)1QR=���co���#JV�y$/iy��~-�bXS�$��t�@�6�1��q�qs4��;j����-��(w�]��bt	�4	?��k,`>@@뽗��e��Z�y�d���n�j�t��W+�)9�;�l�hz�'�=�}��@�G�w%��!�W�{�|�X/�\��5J��&���@̰3���@����j< ]��(�>�������J}��+H?��1!(���Obo����H�ҾB�s��-ֵf{��<����D�U�h���������᤮ޝ�k�Pm�}��@W�Ø�͞��ͱv��$�+u@S���͞�����`�E���&@+}f��F'B�Sc$�2�b���Q��`�Z"]�2(�4�R�ϲ/ك�M'Н����� 휈w�H6�+d�Kp~�Hs�\���Kl���:�;��g�[e
��3��iM2� ���֖�����J��qk(����z����@��k��u�68h�ۍ��! ��{����q}/�DCiY�L�/�z�7�S��&ΏPu@��	�Ǯ�u�p�@�� ܅T�;�8�dt'��9g�3�T�����`�h�8�5��;z��ھ�M���̒�\&ً��.�]*&_	�@���P1}���(=���O���_��V�k΃���r֥��G2d�}��kp��l��aP�~��A��/�Q�yܙP�gδ%^�@�<����a],X�[��G�'Jy��s�S?����͜����1�|Z��N�����n9%��m�P��o�ϟ�y���j���������9p�Z�X�cKH݀�M���E�H���
�(*�/	���f<����g�b���^�
��GK���QG��M�d���2B�~�a�y���N��cp�2���K�[��вMnn�oФk���]�F#$�A��^���%p�*�#J>[ܚ�Yx\�t^��[�iɶ�XF8@�v�|,_�u@��M�2xPiQ͊0FеG��YՔ2Đ�I��'lƯ�H�mc�4�N�\����MZX���}|��ʇp�sC�	"�Q��&ca���Qն�@��T+��z��i�w�Ȋ]�^���Z�Q�5ly@m3��cb���8ۢ)��@Ǎ~��y�����9�l�u��I���F(y��@�N�?����i� ��{C�y�����\��&ސ��/�Ԅ?���@�]�4���G���ʎ��W~�C2����bd�l=C�]M�y��M��yR����:������O\�ɲ�Ϡ�n�lq�|��zC ��u4N%�mpв�\�k9ݎ�H�u��f�PĊФQTw��������H�(7�ʍ[rW9� �9ඩr��l��@c{���1�t�'�<��	ܢ>b��8���ٙ��JiҤYH�*�
�1?�4K<������=1h(�y��QR:���n���Vn�󈨳�d��s��=�:�kHC˺a"ʞ�P1:s�!fU�7Ph٦F�41PҬ�.��(��E�+hE�!���c$`9@@;8�i�d�h�����:�2�z�5S��x=�o$H�\�e|�Oֵ�}L�Ӑ&���~(f��.lq.�D���ڌ˟�b~_�(i\�S*���&�[$z+�����$��j+d����5�� ����-�78�N�����}m��8��(�$��p �'�H,����g�������m��Gq)|I&�=��%r���Z��5��"-��>Р#h����2�T���z���/�L�}�s�z�~�wrX��[��r!�R����x9�&Z�3�4���G<���[��T.��J��^�T�f� ��Oo��E��кi�5gp�YA��H+���Ndgg�k4��n\4ŏ� �^�OR��(�A�����eǶPw �M���Wuh,�ذ�ߓ���DI�&��M�K�6;�b&�� 1<��� �	qY��!�k�FcI$�f�~����0Bg��Ŧh��އ" ���E�J�:ݚh�=�J�cI,5nu�ڜ�{)�����3"-�ex�,���h�Ȩ���BQB�y*5�a�4w�GU�]Qt:iMm6G��s ��H��%�'�ɑ*�f�|����r홞5=����t�N��\���V��e$�о�+Y��$�i��]��S�~a�+е��%��h��T,����O�C��l�Qs��$������Iq�LR��a��a�z=7;U���N���$��1���m��ǔI�9��m�ˡ���L���ʓ��@��&����,#t�����ct: �f/�U������s�'ˁ�Y�Mt����FgV�E�h����&p��>J� �_8�P���R�rA�,.�[����z�������2�P{��^A�vc��aZ��{~�;��N���9�#��$I��z��j�Ц�uQsȍ_?C���b2q�}�<$̼<4˵�^%����#�E�
EOnؗb]�����|ʴ8�o��v ������=#>r4��_�]5��c��(��Ё!\ ZO�&�NŲ������~�P���Ʒ`��P�˩h}u������cq��v�@��Lnץw^�錡h*���x��(?��l|�J�3ү���e�L�k\Ap��޲��t TҮ��.���(�y�cڃ��O<����������O�q��Ob|�	�N���u3�9�    �J�B>��}�)�B��W��O⌳B�1���@��T�����K��̲�|��ȋc�����i��d�<-@]$T��,΁���q�c�@��M��0c�'�󛼁���]h<	�G�e��n�h�,t�z�;��N9�5�m,:����ޖ}v�-�8���%���;y���,�-�m k��t= e�K=�*1FP���bn�7x'����Cq@�)��_x��#�K}:�#�
6��EX'@���,֋c�����q�٤#hv'��B&J�����j�P��}�~,tʽ����b?��p ���C��8X��H��]dg�1�kI>�����n, �%�K��1��k������i����TfcLDz��W9��tj�:W��Т�m�޶�+P�x+g�c�tpk�"���Y(���}m��-��-6�R-:��)��
iR�u�^���Ш��/K�mզ!���2��I���b�\5��+��-z����d!C�?@@jOIg���!h)��ǲ�!�!�����._��h�Z�:_Q �!���e�Q�9qJ7�&m�B�A}���-.�O�����g6��|�$-����'6Z��
.��K����K�~�n2�+71�h΁۹�/�PTu������l�CRo�81�&p�>��D��sO��G����0�5eW�1M��%2��u��]5� ݶ�+1��1��+h�P��Bi�h\x: �dmf��u���O��K�uaQ�f��<�| �N6y��c�.<��̟�yW7�!7�[U�ؕ�K*5?x9J"-C�Ȏ�PG�/�UB�c�yD6t��V�[|C:ؗ�������9=�3Gt������IH~�%z��f��Z44�w��L��z�6Ρ,�!
ݤ4γf�����!Jꉌ�6�?�+:���I�z�b"��7OQ�0��(��$LhԚh�ܙw��_;�M]bG��]��Q�T��;�0�� �ӄ�7؏�4�¤�p�t��	��<���e|q38�D�Բ�����(��K���l_����M7���[]�-��	�+�uk�<Y��ܬg�����k�գ՘��B���\�NnmVDɽ~����As��Qk��X��Tg�4���@�n#5�bV��RQtz�.�}O��)h�+�.C;7ϴ r��ط���hИs�V�F}��>��!Mz�*�e�2D�A2�P�����EO����8+s`�ª�S�5wiSw�n��E��"t�۟��|�%p�]o�9�Ҙ&m�W��iԱ�ܝ��}V�K!��[6l��4��_��a��\���2!ҩuSV��'AT?⪏��,w��E��[�ȑJ�c�����	b&��o|C3�Ny�ݟL:��ҕQ���m�!�5ηN�.v���>���ép-+�K�.��V@u7y�į��Y00���t6���%�L�a���A,�+>���.�������C}���8��Tx6�	P���"�}��A�s��>�>F)F��Z��l
�,:������:;�H��^d��S��	Y�M���W�	�G>r��m
x�K���Ks�z����{U"W+X����/Yii�\ �M���vm��2dL��dt��!c����9o��@c����q���h�l� �%�,�Zq�������f︫=y���f����Pր�S���Đ���0pY��C�sZ"4�u�K1Un���Z�Ћ3r����O�����Ѽj]�OpW�\h۞��ʾ5�aҦ�H��C��zQ#��daA[!Lם����r(, ,(a����K;Гһ�7�h~m�|7��m���q�^��x�nk"ys�3A�vM�b�J3K�a���Kq�4:nh�k�J���1��2b�1���{b�+hvz�	�&4��������Ϣyu�e�Z���\�O�k�h)U۾�!�j��T�!:�u���;3C��c�^ o�-���l��T�7w���n=��4�Z�K*U�6;�"P�y>@@�O�\���E[����yp�-�����#-����^ڏJN�	���Ĉ��|k�3P�,Ǫ�5�!cj._�l-�Ti����n�YY@`��2/���2F�份�bV�ѫw�#9���ZX[n��op0��E��9./����9�s*��/��	�n�AI�Gn����_l9·�DOj>N��^�=f�{s���к��.�W���qȔ2�[��'u�'�����s!���t�6u@���sI1�8&�C�N-�(&R��2d�'M����K�����|WRu���|Ҫ����W�mr��1�=e�}QA~�"ER���U�l�L�CWZ@t�m0�h�F�/�C��T����|����ܿ2D��H}�օ��<������ߚ��x�JSO�u�k6��F����d���y����h�Ok���.@�vci��&M�e�v_$%N&��
p,@���t����I;�]���38�+�4q~E����U��<�כ ��h��������s9���镖�/V��!�4+�9��d�x:9gB���D�:�T0��vlS��2�� s۽��|���!��)�C�wo
�dn֜�4JV�ec�3� �; �_�n7�����XN;��2f�������IG�Q�+��*7C i֢���X�,ó��e,�Q\��4�V@]����sp*~��P�� f.g���7$<�(D��umr!N�����4=�V3Y���0C������AG�Ӊ$���?~�WZ�(�
�o�2�P~��6'B��O� �	{�~�K��bq���TV�l��ѽe�{�]���0{���-�|k_՟5�� ��[��Hq;##��o�Y�ԑ��$\�j13�p�
�OM-�IGС�m"�@���!tj�жʷn2��������� �}�|��ˊC��&��!�IR��1Нђ�!�&��M���v��{rCt�Mj�7�$e��u���/���"8ew�B�N��F��5�\7�Gee�Jt?	��1�	j��v�U�$�4���K(����'�9gN���wdd��#.��g3�<>��Ho৸��&gps9@���7�R��o�b�	t:�>G8
�����.@����A2�Mt��9�?���̤PH�o��"�Ph���Y
]ޛ(����/<~�3�h37�I�9�UI���)�%84Q�Q��fp\����(��m���ӡ�K&�m�@��(wx%���H�E����@��Z-|V�鐎�a�w��kH;ХmX��'C���Y�O���5�W�y��u�K��w
~�M�Rre��D�<�iӼ�h�����c�D͊� }�t+�!5�T��H��ŤI���tRt��y���W����X6��sL�h��c�9@�XfB�ܭM&@�f	���(�N�{
��h)���JH����f9��f(�L�m�j���7s�(�pܨI��4�Vp� }��4F�P��Iσ�jt�1P�i�`��ǟ��7�9Ҕ���ڂ6{����r����4�(������{c.��]�^L(jGtC�_����At�?��f�+е��=����cz%�Y�,�f{�^�X?>�bH��>c���|��xq�\��P �E�JN��M���7��r3�܉�m���\��'{��2�F��%p����iCn7#�'��?�����c+poz��Ο��z�h$ egv���R7�C\���ո["~�9s�9N��9�a�p�i7��1:���lH�&:�K_ٜ/M.���F���#�?���7%	��`rl�����O��-�W�F�
H�����b]��Sq5�4pr��Ym��M��_�����o��\ �Z���&ȼ���OL~��uH��׵��n��ĀHk<�ؼ����I�؍pn�[��/\9{e(��+lJ����N�[�;x�Q Z��J3�� ���9v!���;ٸ(~���g�4���=eo$�t'�F&P�z�*6.<��N������)˾�\�b"����me	���]    n\�-	����j|��b,z�wbl式ir��y�kkbځ�jCP�xSm{|`C�w�]!�ϐ�(̬� �.���&p]�r3��0C�tҤY�I[A�����uTؠ��\�sm����]�&1��#u�a����T�y�]�;p;��� ��~g?Bq"9N���q���� ]lD��w>��:���v�ϒ4d̐Q[��<��#���kJ{�n����~%i&l��b		a�nHC��e`&���Ĉ��V�F���6��J����A�c08��S�Z[{�B�\��ށ�ٗ��X\N��>�Hq���:��X�I�(�Ϳl�h�w��=���JZ}Ocn�n�%����O��?��q"�7W�+Ze`2^5k���Ǜ�?�:S�/ǥ�	2;�g$��Y���4 ež��AL ���^��_��t>٫^5����%p��,Bh����@�R�g�@����>�]t�n��w���/���3�n�;���r�I�� �+@)�!�CLg�H�ߛ�#@��+���1AL���yJ:�2u�6�|�#$%�-��tG�vD�ic�t`��H���՜�t>�Ea��@k�M�|�XR����X�r���f"/&���o��i�t�v�w���ZF����C�����Hd�bܒ�� f]��w�^}m�hI3�@W�N�hJ�����_����d���O�fh��Js�H;W�^�a��2�&���o�W}��-i8�ļ^RhP��C=�&��\b��>�u]�K�Ÿ�nR�]"l:�MZڰ��Ep��n�39�&�|T%H������e�[����+����j( ����p ��j�b��ѱ�p��/f��>
r�u�u��At8()t% �^
ӌ{�*9�79�9葫��O��vk3d@�\l_T[��}���	�z��'ڥ�˓~�	jY/'7W̹�͚[�q���� p� n5QB�@�g}�Wb����S_�a����Ɯ���@'�������V�w�0C w�-%��̪���@�]W3���9�bx�Spߛ3�-�Y�k�޹�E���V@���Yv䭓,� ����&�W�#����m�Ȕ�s�JP�/5�8?����� ������:��l�ZH�&i�� Q�'�h�:�I��?�.�M\�Ii�	h���6/�Ť�u8;F� �C�
@�����GЮ��nы!�CF��o����t9G�6�H�h4U���*V���o�Dѹ��G;=Ѡ�M�ۋ�P�8�&
mo �̻7\��h�GzJ#�Dbb��
B�Ͷ�1=@��0������#���@�%o�����o��/̭��:����3�	���6����4�hm#�Y��S|cФD���tM@t����&������/�s�bP��|6�tW�����#n>�k=v�/�@�x��sz�o�=P�8�?v��l���1�	�Z�� n@�5j����(�D�2�s��7I�J*������:ѳ�>;�.@�Br%E�V'o�d<��6����tV�X�;Yydp��#g�>�������~t���bh�� ;�W|�=��dĂ�ܐ�A���^rT��E�z��]�ά�������Y�4�HX��%	Z�]w�KY�sL��WмK]�m&1@}U�UF�^�߬�-΁�k�A�t��-.����8	.Mh��-�7�[�Us�L�|�ncK )����w�1fqP"�}���kq�;������i��J/]�[��ًx�څ���P����H:���u���1��p��'��,h�Z���Z�niZW�MŮ�3eD�X�SY@�[H�)�;�p�Ӳ_0J
&�%r�?��������8 �m0K �|�.]M�35>x��[��3A��@�#�����'�yh�u���ܐ�A불�q̢#h�4K�h��&��v�M�%`��t��`dq+8�ÿ�Y#��g��f��`r�D8+��T�o�*)QI-|��++�&"j"��Ndꕆ�Nw�y��e�
�!��E�5��hGP��E7���%�q7��g|�h����#݉�e����j�r���(gB�PH�Eko�9p�_��M�R!�$_�t =���?l� �b6}�ʌ�D盬�˘����������E�������$�d�;?Crggh��
H���ﻶP Z�n�ȹ�ٶ��ݹ>��q�yp:���Yt ���M������dW�3Dg�����K=h��n�י��J�;��m^rh�5Nʍ=7D�;b�\���HwJg�r�W����iڟ��U��=�\u���8������t%���B��3C��J#�������4&�wK�!��X.�e�t���ò���|�f�Z �;C�M.k>5YѴ�{��g��|�wh��E8���2iy@|&�*1�S�_5@���7�i�N@u�v���|].q����u3��>��1��Hs!��'НJ�J��i����o�����E�"���c�]�ݔ����r��Z���Ɂ�9�+<��n����y�#2�����qP�)O��	���4%��3"-+�P��[t��D�*N�'�°Mb��B����2�[Ky�B�����s��4B��R\�W�������s�'9�� �}�z�\z���eL��7� N���/B�-�4�/�ݘ&�����N�ﴁ�b���L�@�O�J�L(B�����4]���}CLK�
c�K*9�F�_[-�go�U����8h�C�m����9�<8��+�j,�tj�)`l���E��2�gZrZs��S�|�/�W�?����[��� �������J�j�K��񃿓!� E�062`���P{"�:%"/���a<R��8N�,uJg|t=IrK��kPǜ��[W��8��~Q��1J*Sz�K���Νqfl���#5y����Pc4m_��g4FНuSU7�WU�AnX�o�Vi4W����0���2�M��@<i�f�o+Fՙ��΁�K��$�4'k�@ge�D ��O����0�u��p�s;� ��G��As;�w�Z���[c�"p���M��Q4J��G�A��g�#�v��=t
���;�R����u��d}�̭�s�:����M΃˪۶���Zt =5~��qW��� ҦpP&3��g]i�I��A�3��G��>?�1�#��ӟe�ĥ���BM����9-��]�������@8����$� Z�b���BI�歟&C�!�!�V�]��D�G�x�n�I��������ײ���.n��]��F�(v���MDM/������6�WJ<�VR��1�@uN"��?���X������j����K��!��)5�X��~+���.�ۜ�� �y.����WE�S�~�^)����7�p�sC��j^3��?�P����"0��&1|�l1�z��!j&?Y�
t����+�\i��.�}�2ƨ�x�$A������w�Bd�2P4�7|%��'>��?:{�=W��d���եIC���jdp�)��;���X��r��&��Z4� ��[�e�Ɓ����F�싁��î�Fg�H��P�2�K�!.*n:��셿�7��DЮP�)H�PT�E>�>`�h�G�,chw�N�x�fH{��,.�ӭ�(i���հA���ϩk{��\C��r�/G^��r������۞�PN�p�Q�#�z�N9}8�p��ѷ�R.���c��m1��E�0A�Wk���҆��&C��,ZF�F�!`*M�9� �s#=�5�����X #*S���~��~(c�����z�� Z��ҹr� R����
h���x=P�
��ڲ�� ��HJw��&GƠ'�]A��8����Ag�I�T׼��n=ᎌ�����HŐB�дW�0�H�0�7��g\r����"��}� .l�6�t�n8��}�@��i�q���<�n<�^ɂ%#@F�|�E�Ln7��j�&^_�����[z����vڈ!m����>����3�T��̀��%LrmJZ i�"2}�A+��A�i��b��h�4V1���8pˮw��<�.���[�Z�T�`Ilz���� �  -�E'�]��9C��̀���	'�?z��i?�l�'�����㱗eqIi�u��7	���ΥY��P��ʖ1�
}�m_�._p�+WR���/�a�����4������tW�z+���˓�  NHքG����� ��[�-A��moOt�!�Z�Jͻ]�X��l] �����$V�xo�k�"��'֓�~jcځ��Kn���{�dxȨ�a1�%��;�C�tk#��D���������A�hؘ���j����|l������	��,�6��W���ytMw:nc�B��bR-��W�]��OR2���sZ]I4R&�zU+�R٤&n�ݮ4�1�j[f-�CF�N�@��S����N0$o|5�	t;F�3/�4c�3�����\ǑY���DQ�A'�m )�h-[��c�f%��+ɺ�3~eg|PQ��v��C�JtUW��,�DҽN�
UrS��*��9�'���{X�>�X�^�@ǗEE@�I��$��p%@;%j��Y�ּ�����5Ĭ���o����R��:��"�E�[�N�v�;�i��c�(��G��#��p�y��Wm��4�<1P�)��/�Y�}�s2�h.�+kY�o�Yc.�Ӛ��4���Y��8FW��@uC�6�f����t׸�N��N�ג�/b�^������23�h�~q����aB����L�~2h�&d�>Rm٦�F�H���o���[J����~�@���(4K����¸g���ýL��l�ͤM�o�q#-~�C��׃�h�>�m��!�C�vǗ�u��~, @���1"��@�o�o�����fpu���(���Epi��C�J�� �"sNs8������\����I������t�ʜ>ZEη�F�\����H�f�p:��_'`HO�w*ko��Qҝ���Lbx�1�}̊2j��G��ms	\P�/����D|�����?�#��YcV}�ʞ��Ǻ	���7���'�ѨO�v�u�����<��3�۞*��[�m�=�k}�����u>�����Bg�u�ֶFР_�I���W�?X�4�;7_�u�}�2��YN�ײ�ZϠ��D��|h��}�u��jx
yLd׸�w���"�7H2ĸ�����F��p��s��?���K3=1ֻ�Ǹ����/z��z0�mr���#)���ڗf�UVQIQ$Ĵus��%^7.�̥��^��W�kdp\)hx�ܽ;�@g9	���[���<� 2�Ptꩼ9��4�̕�:ڷ[�-�"���H/��EC����� #�ǀH���Օ����'ѭ+3�@�~,{�k�s��t�I&٪�Ƴ[��p|9t�h��]�1��I�yz ��C�id��M��-5O-��h��}��k��В����o&=��M,����~%r(�U��*�Bڵ����;�zh2xڐ��驥=h=�d�kWMSF��Pۻ�ehp�@[�
�� �W��?��	Ģ�%`��w�r��ݬnWפ-��n�H�<�ɕ�:R� �e���yo
�*9$-����$�>���W�s�$Bc��#ŉ�>W�N���ܢ�"/�N�1�hX[n'��.��Ƣ�每���ʠ���}¯/�T�����F���s)S}~�+,Z��Dй̽86M�Wm�5���]�D���}��HD.X�D���>���G.&T�H �H~6������W:�;�&H�]�1���X��܇�x۰ڤʕ�Iꀪ�J��L�4e���/��[O�v8��J���BM�W�i��K@S��.o�)K*��t�F|\��Z�ke�����9LucB ;<ᮛ?q̀W��-"�����#`'���1�[�-]�n����yp�l�'�n�,<�t ݦ��%a�(���i`��u�_=����0�t]��k)}i�n�3A���h�����!���)�4�����AР��\rN,)+܊&%B�U��9z�\h9�_t�h �S�R��?�b*kc/5PR�y����-� ��kcq��R��3BL8|Q%9�2&Ȉge��F���m%f��N��v�ǧ8�>*w���KPiT���%[�<Lj~����%����e"��i+�;�B/&
��|���=5�X����y�M��SNC&�����OP"u���2�7����K����=H�
|�=@#���BnBv}��Ƕ�HVW@�#��߷OM-��z�v�����h�r	\�Z}ëH�Ap+XT��~�r��j~��@o��m�3�QO���_�X5�=S��� ���8(ץ=���Nl�;�~��7AYg�ʖ�%�)nq:�Cjr����QL���>0�Z.�;��i�,\�v}a#���>�~R�ŤI��2�E/�KX0o7�ClYӰu�M�7�Pp�Kk��K$�����c"~�U��9���δ����6η�$1� �1���bD�P�5�E�>g�D�U�c�	Ģw���Fp������Nĕ��C �������G����!Ǜ�R8�K.~�����e&Z{ɕP���^�W��i�4��φ������*tg�P��}�GR�F"�[�ՙ@�J&�H |��ޙ�"�/&���f|T�Д4AR�8��������tf���b����� ��ܻ�f��G��]�_��� ��Z�<�s�e��wv@9)�cu�`H
�/��U�$�@��8�2���I7��������̮$�G���c�1K��\�����-�&:]�Ӿ�{����z���tm���_Y�<�%-��,�� JPi�o�%$����]��������&1��'�c�,��7��l����|eB�&I̳I&���׾L��2B+c��2���W~|���=YD؁�j��b����p��2��4c�ݤ=�R'�YJ*P T|B�1���-��n�j �-��0Ҋ�JJ��R��TJC�ޚTF�D��iՖ���H��0Beܢ���68�	�< }���ĥ��R��<o�j$}�yy[FG&sl�����$HS&y�Q�O���W��Z:���Aֶ��[C#�����I�rK��:?nA?t'i+?�~aS\�d.%kܿ�C׉�r��$���?��MC���E1�/[P 4���C��-.�Kg�U�!f���>	������O�J�����?!5scˍ�8l�G��n�N�̀�g��̯���ا�����'9�ѳC���3J��Q��@V�}( ��iʝi)�fB�VU��k��4���V�?Il�d
H�6�Ou|�@Ƙ!c��(�"ω}�&TQ7S�IC=zD��Z}3d��=��#�]����0�ȉ����R�R���,�8�2F].���O~+�- B����.>�no� CwmZpk�1iR�A��.X6OY@� �:y����)�|2eL��zr��Lg�g��X�߯e�zO�v�M������I;�l��R�5 R.d�܉͍��O�ٛH˒t
Ѓ���uF[�t�@�E�u�_����PT��8h���DG�es9l=l�yF�xـf@��1$�;�w�ɘw�1�kL6Fuv@���$��3�����,��41x��_<%m�NB���>��-x�,Kl�иlA���b�	���Y�<�(�o{+e���ܧI�&9�s�D��L���<�(��eQ�w;�y`�{(���9p\��A+��op�P�����/o~����T�I�f��8sɂ�o{�ϛ�-4 �:%.Ik�Rl�@�reK,娰����2�	��@��b���\yA;�\V���덠_��ş����#�]� �U���Dy�v�.ꀲG�.7�M�b#�]���P�Q]���D�9)`���r�_Oi���0@@�K����r�W&�@���W�>1����WŽ6�	P���ǳK�mm/OqT@j5�K�;@|[��v�+��L΁�j�/A�*��h�t���G�]w־� ����G*"W������r�蝆����VЀ���Fc�U�y������      -      x������ � �      h      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      8      x������ � �      6      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �            x������ � �            x������ � �      e   n  x��Z�r�]��"�d�j��ev�(���_����J�{#14��&9ŢL�ֈIf�f>%��g �mt��������9��#Ѵ�hv���f���5��i��B�O��^g}
}�з�<҇��� ��6���]�g�g��9ɾ����ۿ�_;|횗ŷ��f�}�ۼ�m1����-��P�>�6?�6��c��iѨ�v�}��<�C�D�nOv��|F�	�����~�&T����["akz��m���	�I��6����� 0�F����x|���y����h�&��	�����n��{��"�"7XF#En(�'R��r �Fc���*!��" ~]���^tC���8�e|�-ƺ�oFO(!�45��!���uW -N����pB#�,@��
�v��CA%&dPQ���B�f2R(}�#��:�|e@��9��*�Lv�H����,��
ɪB��!T�J�%�'P�S�<��r5h0��(�j�@���������`X�氷l�֛.n;W����'�:�~MI�;A�v�N���a�����)
3���~�M6�C5�����=��ra(a�nu{;v����`D:�-�[�(�`�fM�^�~���@��\��ya�x�!��	0����9�Ccf��MQ��Dl!��,��ezʐ�x.bf����Z�H�_(�E��ʶ
*��K�B#+�#��6VRo����X��S���2���P��B$��Ѵ>�ӏ��Ϛ�i{�4?�i���_���y���ސv���G�'l�Dw��W ���w�F�n�,9�m�Oe��̮m�U����N��~uw�����v#8�$��s����p{��%��8U�1;	���.�g�*���g:�s���W���q2���� ��Q!��w�o)�=M��;Dv���,]�]�k�� ��n��ʳ�� ^:kf������'Dt��8�K"e�7x��U��~ �S'GAS4J�=�z�c��)�/Y�{���m�J��ω�:�.J==������ӻӰ�	��0�
�%�������,� �B���N{Ƭ� �B�J�`
$DAn����o*5d	q���!���_����ś!�	�v�G�>��v�D�v�-%��$9Z������%��uqJ��;bB��_3�D�6�%�K�3��[z�-�oEҟ��/����@(�Ѫ&��L�]��[�Ė�&ku��̦$Z�Ė���4�Y]�o���l�!*~�w��ؒ�+���p�#��"�7�M%�kdE����^�m*�;]����-r��u�$�
<4�����V�H���V"T���r�%�:/ �'2Lr�| #�����u�3���� "U00�p�Ћ�{�st
��d�����v�^����[��!d���#����݈	�b��`�%T\u�G��L����W�QJ���`t&		�j��
qZ` �5�	��YH(H�,���"��4{���Z(`PJv7Ѹ�t���)0��DU��4��I�I�d�D�=K��#T����q^$R���`��Ot�(��Ձ���|�:�[l�����9nȟ������4T�X����R�Wju���e��PN�I3*S�j�y����%��ankZ�7�)+@���c�F�K�-�۔�I��Ϲ/��N(xE�J�(��v��
v�b�2
����5=���7��4��d�A
�����磦���f:C�>��B� �΄TF���U�_uG}���������fx��S�Qn�����JQN1�/)�����1r>�2.Ee��a��	�sw}��Klf`3*D}I���=*X��1��!��ut����R*}�����u�&�%�*3���d6N{}��a^\�SQmq�1-|nEs��,�n��ʯXp;��r����x��>��5�<]0���+�å�/��8i�|Te\x��wSS�`3*��B�Gtp��p�dk99U�rj>����?i`4�����J�rf&�2q��ىpNXɹ�2��T,���L��n��>�b(�w~�x��ew�	���M��\}k���WKc+���I����z���SWU.��o�*��*�`�_�^û��&��������!�l:s�ܡMBhD����A�x֨���*��#U�;㘐 ��8�����9��(��T����Q�l�O2�<i�8�w�Y�d�6�%;�>	ǞlE#[Q�Wƒ�l%;fO�����WFэl5ȱ'[��V�WƲMl.����male��m&�phb[8=���M���x��ע���+�\iǜ�J0��:��Ž��S�H�0�Jf�G��	���xd%?�AUW6j�z0���S-aY�@< ˛f]	�e��0ZH-U����2�4x$$���U2Cbiِ�K���[f�C�:�+}���R��%�!MA2�f��l
©�e��KA)%KL%'TSl��9��ɓeCAA�VM�X�b�"Y ��7VoL���+����ofʪ���3kh��f�3j������PQ{��Qh������T�M�f4ĥ�k	�d���!<3�T;Y�M�OE�9��P�O�e��i�X�+���WF��F��,o�S�tu�^�N�_/X7z>�2O����'0��3!���*�<?p���Q�q��U�����6�)8�sSY�}a�|_Y�}�8,�f�W�ErXϲ/G�b��X��V�"E�C[4Gk7���Wn�~>�2.�hC=˼�]�(pzt:Q�/K8w��+��c9w�+O�Y�,��|Te\8͙z�s8��E���ᴤ���m�,�j�3<�T8g��VR�<�[G%u�%�zx))x˧��|_�����+IϠ�����N@��W_����>=�&�-}z�qlB<��X��"Q-��}*f�	�/O�y�7'/^��?����            x������ � �      S      x������ � �      �      x�3�4�4����� �Y      _      x������ � �      i      x������ � �            x������ � �      �   
  x�uZI��0
]�OQ(� ���O��'��G?������������9���!�Rr�D�*�4|o����?�����/�C�����)?���奧���i�I����i��P2��K�	>���u�����?ҿ�,r{9�������%�[9�6����3�U+iHʮy�m�̟x����//�z�ěM����i�A���Fǵ�ȩ�)31�Z}�s���������v�pq��з��a}˗�f~5U-�E8���CM�Iș�����\�ץ#&`���O=�=R��?�6"8F��יG���w�@C����}��;`F�����?8�Χ��c�AE��\B�)gI�l�ì��ȡ��S;���_<ũa�t)-P�Eo�f���-O�YkHQ�(C�V��Wbi��'�Dx���$��Z�=K�����%?�m�75�{	�K��ͮ��cLcFzs���vU��E,^���6�Nŵ�S��)*J�{
>8y��~���Aσ:W�����d����������%&@��h�ڤg�%��cUV�c��C��ܞ�+����V�t3�!w�\�5sN!�>��C˹S�ɳ��(��<C�I���n��IbL�>�1 :SA�b-k��g�{��KA?�����a�)�f'Թ�$8��	�42`�4�*����fu����^%��a�y�,�>晙����J�P��k�S@�mB�A�D����#��S��Q~�۬�%��#��p�j�R�2�W������z����F,'o�!�ȗ�F��4z��	�	S��ĝ���
\��J��	�� H$ٝ���m��MÁ�����JUCОCMY1
C))�2����{J�L�k��]��q�"��m��o'J��,-�:P�*\��}4=��e�(��+�{YF@��{�O���V��s�=����g�4���S�V�	:��w�����L ���E���h�G���P�㣦Vx6�>v���4�����v�����?�6;a��$Ra�PЊr'���˩��"Lϩ�Z��i��K�)�o��n�!<K��5.F���b���Q�^��Ѣ�>ާC��|�md'��yxh" ����4Q�!Ɠc]��'{�s�zڳ7�e�y�;ittӠ���}L��Z]�@r��l�`R8��4z���Q��r�ml��kI�q�A��F?�RP�|�i{�`G�x�H�5���9��U���l.1ڈS�C�ٽ/� �
�٨ߠ�s��_
ڸ4��+�{Zml�<��IjIHvCa7����d,+Y}�uL.\��u
O=���|�m����"W��Be7@;��Z��ײA΁�(�oȲlF�Y.���E���(�F�k�<���5�Kd?s�98�-�7�3�������;0-����n#���/�n�x���eJ�n7��!O�x[ǰ��U����
��1x
Z��K��st9#va��<��h�"Ӆ��'��n#��b̙K��j��%դ�9~�r�2�ǃA���,-#=(|�7�e��1��6Q�(Q,-4�0F��=W�CU��x��@)_��^�h��`���qா#Ӟ��Z�a {�Ҝ�S���JW��=��s��j��UuK�X���
���ǚTXI�]4���A�hg������<?���v�XOY@����H��Q|.�8�}���c�\�?|� �r��m>�Тc,���ؽC�R�.�$-����Ya�^�U�_zAp{z���nc+�
ݐd@��1�����A{��8]�+x9x띧[9�6��{�DzԚ��a�U�� MOU-/�/��z�C`�zOr+�ݦq��)D����q_TgP,O����`�'�HD4,�K��w=8@�����Θ`2��v%Ҫy��'�c�`�'�kl�{�^=<{����ʁ�b���j�ᛑ��g �ȵ]�9{�#]��瞑z=_܏�6ĳv�7���	֔�{�]������aUu���缐x����u(���^C�(��&6�6�Vl&� �Ams�����sj��ՠ���0y��[O9��a��Z�;G��R^ 9���*�S�{����l<=����5��z��V�M0� �	\�d��1E,��h�Bs�"~c]0���ژ8[I����l�k'������}!e�
	�S"v���'�<) ������X�����V�M�[o�epw�x�Yd~`�V�e5Ei��#c��S�:f�U=N�V�M�(a!(�������-��>�tۉe]��D⵴�[�,���/����b�f�X�h6����*QC��*=/�h1EE-�K��l�����GF�Z�B�9�����w}:5����z�n�-/�l����ݦk"�!��{rǺX���R�԰;a:�1�獚�n�$��������ȗݦ��v�)`��(�)�'^������í�@,��z��W?j��V�}I�b������:��N��$��"H��-(~�v��������j���v��u��U�!c{�*��:0�@ b?[�ܲ�����ӂ�P1��)�%?�m�k5͍�C��:1a*��Z����x��g[��_Q+�x��A�En��n��K�S�PQ���U{U*�a�zql��h��wlw���$���-z8%�9&%,�XYj����9���?���M@��&b~�����I�"��m�8Ol�1`%O@I��z�\i�$�ų�2��+<�Z����FJ�E��ۂu1X%���l8R��3��
���wύ���3�h�@.ҏզy�� ��!��"ĞjW�=���6^�竉�p�����3O��m��c�YSw�V|�Mz�{�xL/���U:|7��÷�i�������{�?��̆Z(h.��8�5�e-�<�RZ����>�E�|�m���a%L�� 	B�ØR�,�&H���f��Э��<����nF>��s�h� ���)R�ؗ�51=yq�;$����۱��Nx�Q��ۂ�f~&�*��9����20'�|���hC+�K��tqL=�k���ۢUu��i��b�81����P�]��}�.�e�p�c���2���y��`#��HC�2� V�A�Jvi�k����y���w�k{�d�i =�v[���K�9��v/����cib���qr����|_�ez=:>�mѐ�iĢ@.�+��gF�e*ݹ����^�o�?�@(�~��m�E�<'�=�R�UWg�����Э�Da��1�5x��w=q6�6!|ή��P�ısJu�u/�3
l��[5��C�\��ZB����Q�춸���j�b5l�E����Fq�87����=���g�ߎÏ>p���n���]1 	x�3V����.4���,/O�+Ӷwa�+~��n�@�L���uA��=��'Oh���6��A�	�.�A#�P���r��?$�ȗ�1�(�S����(��:K
����h������-���y����]?3�#�m1�+�����FB����{��Yg�p��]�����>�h^���� ��n��"�E��,�wM�*�}����O��k�a�J�C̥��ڗv��m��W�߆      f   �   x��N�j�@=O��Pw6�M"���z�E�H�H�ـ��ME���Ez�:�7�)���?(�<�y��B�f�^�|�*k�4�f��ZWo����y����v�&�8˺�~���d�>��L?L�����td�;Ξ���������ؓ?�l���(�H�8Ih�#��Z��*H!E�-��^${�hd ������G��)j)��^5��*��f�i'�?렟      c      x������ � �            x������ � �            x������ � �      <      x������ � �      >      x������ � �      @      x������ � �      L      x������ � �      N      x������ � �      P      x������ � �      B      x������ � �      R      x������ � �      \      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      
      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x�Ž]od9�%���+�q�����a��>�V������ ?3����$EV���=�RD�
�
�rFMwVd���ݏ�4;F�Q0N,Gc��?���W����~��>?����M~x��������ۇ���?�_���������xs���?��G�?���?�!9ˁt�����������������=�䝩�D�&4oRc�ʨ9�}���W.7��G��?����Z���U��}�����~������?���΋�M�x,�2�C��;ؗ��-��r3b*U)�_�!�\7�������$*/�:z�ʯE�B�p���F��"�l��cX2=�p߻����c��_��yc�NK�D�!����S�A�7����%�@#��)��A�����~��?��E��4�%S(�6��}��'�b�ȹ�h6'~��J����~��|@i- o�w�0�mX���q�:,�D��Ԝ��7a����"��x��_�"�хd|��5[�S	=�'L��=X;��r�O`�B�� /�4�o���-瞸�b��0�-0���0v-���Lӄ��OM�F�[c!��qA�f��C��O�~�G*��A��"a�Yr6��C���������\�~}��է����>�o�W���Ask!FgB8�� (V�G����襔10�|�[�V��m�ʟ�w�Ya^L��&�P؍�S2\m)���s��GOCb�o�ف$,Eg����Br���\�����I��T:o���yG��$!�`04��fl5�)��:�Fݚ$�<mί�W�����GkYBB�4�`M�vd.T�g��M��kT��Z������=�m-EH�4q�fmi���ͥ�B5�t]Y�q.o�yx<~��x�Zn v�<9`�ӈ <5T�6r��D1l�pm�k��x�q��ؕ܀>4���<������ܹ���vM�I9o���o�m��W��~���ؕ���Zԉ#� M�PL�}8'�2��
���{���g�VR �X	/M�jb��(��Ѓ�=d�1R��!}�"�����pW� ]��{�l%A ��X�`'���::��:8^�6,'J6�-�]1Z7׷�Ь$@���;�.��0F%�� ]���ᾷ��轕\�zU���{iY��2�Cpxs9؉-��Rd�#��O�K��c�[�����{�"|S4�1-NO�"%�41��&G�ȇ�Se/��mm������.T�̫?��1�D JhC��т��2G���bt���ZN��]�]X���',	�X&�rM >�9_��kà�-o��#�P�y�#�h����Ck��
����|����R,.�����&_�d��{�-��$��t�%��"��|w��-�zD�^O�Y�=�O��3f�Ma��&��)P�-�oB&�-�Vo>���LO�Y�?ȟ�����<хZ��X�<�I�nr���c���[x��Ǐ��.Yo�u��en��(�Ȉ;<�"����%Rg��#t)��ɳ�D;��e��		2O�<ot|���nb��v5��3:�6��ql�km�el�	��`<��F,�YQ��$�!��d�4�[#�x�����̸���iH�B�$�?��	Lͣ��mrT#�	�'��m���m�t�x�or�/s����2~��xbd��)��l*�X����M��Ϸ�X=��wx��p��(��Ӂ'�=~
�u7�4g�E�uba6���������>	)�;�D�5`��6�ƾ�Z�+�`÷z�v�F���@I&	����8Ұ�Tn�<2�Z���hs����|�E�O�Y�-�q1�]L졘��p2���cf����d~���ݎ�??�H��$U��3�~}�.��S5�1+y^��d�;�a\�����!y
��D ����D.2�h�Gq�Y��� �f�GHQW��(D̍+VKѝ���\R.H�ŀ�}�w��w 
kIDJ�[��&cs��_P8� b���	�bԾ����|���Åe����b���M��PT�$�����e|�,��\�|��o�^���V� s^0���\������t�b�l���o�K`�������p��</�����*(h^�>���Ϲ�\=#��b��ۻ��q]�O.N�[��N8X��8su�0J��wH#��]�Mʣt��N辜5����o����0�X�7��A0��%�f7ݳ4���0��V:f����ߟ.O9�pe ���&ʑ(��S@$��stSZ��%�ϭ#����m�<�$����	;k��O�.{▘�"āQy���`a �V��������܁j%�*��?q�\� ��.���е��$DsxZ��^��Xò���>XFPv?Q��)8�L��*B�s.� q�g��#�_�6��OC[I��)�\#A�nk g���S���kJ���9Aۉj-AA*��t�3A1��\$S���,������mmۼ��8���
qq-?aG��\ai�s>�y��#P�2z�#!���lՋ����v�[KO���r�XMj!�(OU��;o������;S_�=��u���#�c7�c���y�X=ekxWMf�r0�un����Q�e#��t���Js�!��h*��B��*�`�R�Oww7o'�Ƴ�{8��1g�Q��[oԣ7-9�8�yݻ����M�����ٗ��Z��<ޔa��f'�2L*n�G�1zkIg�ջ�OY�\���C����bL��\��"�:�����6kJ�P������Lk]�Kƃc����HY��"�J�N��������tW�=��qĵ����j�=v��2X�5��f�p�ö-Z�-­���ֺvd��̂y���_���g�������c�����<R�03�rn!��� ]xZ'h\�/�m%�/!�����~�=�o���zdafX�������v��O�2�VEI���4�᷇��_'A��	�O�&��Xp0�5IJk���q�RN)�uZ�}�.�i�k�`c��ȣ�gVi�Yp`?<K)#'_��i�W�O��g�֦/!����	��QKϢ�K`1�Ѱ=��շ�x��ڃf���DǇ8q��MqUo�$0S�I1	�����z���=�ֺ�hB0 6�x�&	�w�?+��p�4R��VB��]Lk�<�n6�W�/�!��T�F���KlZ�e#o���o#��Gg�qb5�-�(ոP��S��o���͍��}��k����qŉo��k���,]��d��v�7Õ^�e-��`C��q���*Vl�z2�zOU�wK&���(S�e��㐖�D"��wP�&���b+��7R���ʞv;2k�qN�D!�^)>cR�y$�E�Yǜ����P�F!I���y�� �������%�\:���L� Yv�B�'v��k��cȨݴR�� �6�(nf���W�ބ߻�Bfm�IZ��2�T�M�����a�HV_g���y��\۷`7���0�c��R��+��O�XE��LmT�0
��?ڛ���<\��Y�ֺ��O�<(�;�Dl���ʆ�阀F5$ĘQ7k�^^��mgbA�.�?�I��a��chZ�Mf4n��fv�Q� [���]�f��r��1ȕd��v�z�c��<�p�y8�&n�6<Ѡ��
�݃��C �8��L"'�!�NoCA��[�kM�� �ߜ�?��}��k�V2	 ��$s����} b�|�$9�j߼���I;��`~DgI2W|����f]�M
x��<J�Mb��|�%����n�+t��b�G2Q�r	&�$U(A�47�u��r�||�	�me�4|k��6�%Al,�DR̭��tD��msf�o?�F���D:z�R���h4$#���C�.nmJ��������y�u������W+�|�T�#��rE���Uj��v6�o��O7������.��q`�i��������j���Ƃ�d�,�J�^ �?���>�r���B���i\S	5#�#;d��8.]�öN���n����G�{��������&��1/�����Q��\��Ͳ�O�����%��F�4	    zL��㐊,~��j<�
�L�q(�к����1`����{X+�G;.�ɖ���4��^�I:�V����𰫄3a-�H��i>���$XPf䚃�Ȝ �r[I�|�ywJ��~�Y��v@�Jˢ�-p���WTJ���sZ��U��l��[�#��*�&���B�%Z?XFH�š�V�W���i�_�$��{L%ݻ�JaB�$F��5�XB���pI[TB�
^v���Zx;*�d^�|-'��y��+9��ǋ�ekȎ!������(�_��S��2D�s{�&F�����"G@�K�y-��Tӕ���/�a.8���'���xߔ�ya뾃�>�/��u*	O�[����j� X�9��X�*����>�~fۭA킳�=HtI������-��#�8���^�[����.<kD�*q
h������� '�*�$
���yz�x�׾� ��LxB��[��9���;���	��-�$��+g��h!�.Xk9D���ƨ�D�2֧�\��{$��Bg���}X��|�������=�VR
�Ki1��nܿ��D*��xnL՛b]�ƞ�E��CKe"�0�#��WZ�����dU�1G��2�;Tc˵���������\n%������@���7�w03M���#%A��\?��=�m�`� "��4��T�Bjv�{(��.�k�9��7����*b V$�y�"��B��d�o3"B�M�t��p����#�@K�1�E���f��j{�b��4h�A�ٕl��ϨQUt�P��@e�Q�?Kn꽃�@m���֌䪴�eӛw�7�~�O��}߿S�T�p�����2��.��Ҝ�ā	�Ǣp�a�M��7��ǹ�� g�F�:g�N���C��F�W�Ik����3g����x݃p%_��#����XAÖ�<,v&$׉�X1�g��k�{/>�[�]�BL�w�k'#Ji�Ԋ�Ƕ誫%D3��H���e���E7���i��4�3>��!!D!e����n��.�I��q�k�{�%�4+{J/��a�KrzU������Z#�ſ��2-����v��>��>"���-e�D�˚�7��&[�}'����A~-�a�VA�%?[L�aͅJ�wc��k�(�pckq���x�
݃fm�wƌ�7�}�t�Z|��3�S]B�l%X���������}�ݵ=��Fq��t�M�%`x�(lj� �ǎA]�Hآ�_���u\*>X1\lV��Hub������:ƫ�>qG��.��y��ݧ���h�!u��.!`�E�jHuҐѝ� ��[%��#�jmh���^�k� �pcT��~]�Īj�%#�m���vz��a�323][��8x���Q��2jS�.Z�������7�𷵠\һ��J���Zp�V�ĜR�d� ���o�~�G߃im �Ѹ�-,f���1=�
z|:���w5��g����a�~����������|��V<-��B���4+��&�]��ZV:|ai��0^�N��i��kw���RhV
͎(�j�<�$�#�	���-�_�ͻ�d"X�?ЬZ�qM�����[�QF377mj1<����ұh-��:��|*Ɯf��6��t���UP6ˡ�[}:6�%!z�8�YT�U�%[_Ӌ����;V�?�vˎ\kY��}�#�A�h��p0>s/H?��q�Z��f��x�Z�|��ڣ_��A1� w�Z)�]4^���\�l�a��6}�H�k-��zGS��|�"�H�5D�`�G̽!�0!�j6'�;����\�AX���f]P̮d+�B�A�jG�_$m��_3�~���-U�(I��b�4�Ϥ�L���m����_/��f��k-I�u������!q��7��(���=#m.eT�܂�\[to��ީAIK%��$Q˕f��Aͭ�fup��5�D2Z��=����g�ٝAk�0W�CZ9b�yEhXT>�O0ٮ����!=W���/���T+�PE�>>ЬJ���������s�F�c��-'��nS�A��`�H���i��B);���,�\���5؇	5K<�u<|.Ww���3��Z\��^��Y+th�Pc|��Y?��+b\ L$#�Ю��}��B\��Ղ6ͺ���WZh����m(�0�E����z���l²h%�H,�6��(��REzq�/x�]ɾG̽V�EE#������q�3x���j�wH����Ј��G�t��0^ �z�Y�.�J��z;�k�I�+��ޘ�wG�[���M����O��w�����kW��	���,��%r�$d�M�1`�n��]>~k;�4��*�1�4�H�c�\¨͖�r�j9��*��MϿ�m{B��{�Ȣ�EΪ�b"R0c�;�{�S��FI1��*��*�_��ە�kɇ^肛�5AS����.x�-���T ��;����b���n��/���O�^�ɦΖ���K]��H�k1<�&_��-w��z�����<�o�&>�u)2����/M�[:�ѭ�������b��%���>)v�T��|ҫ�4������du�4;2;O��ڸ}�/7�H���X���0�.��I�	NS�Wڠ<��F������oI���v���w���*����T���Z��h{
z�*��.Y�
ٝ.�+r���O��qȞ�kv��Z��Ff6K�f�s�-��Lq��͵6�Y���>�m���M΂�}��z��r�Bncc�(	�q�cs�75P_�_}��.)%��ze�IK0i�
��eո�� ��d�
���)͖o�����q��J��J"���Z}9˃Z���Ԙ���Њ�Z����0"���������?�����_�i�������0�={�����~}��4�W'{��k���?�t��s��F���\���K�B¢�x=���H��w��)�T�9�l�h���#ε�.r�Ps����&���跏����aǣ������UBC��)�x�A:�����n�S ɪ������_X�i����������?�X�_�c���1!D�������I�1duX��6V�̡�7�6���'��xs�쓯�Ko�_�u���iԼ6�E�7�B�#J mu�H�Q�zJ�߲�ι��fiғ���~p���14�F[���Z�.����i�od�O웇��੘���G���ewq�]z�6��,򝃊@Z�N�p�W�������i�q��?~��?�-r}��:N��`צH�).�R���~��n��Y���K�J�gN��śO͞�㛗��&o8��+�e�ɪv�ڶu���n������V�V�=�sY�W5����O4��<*yb�s�%tC �jM%��h�P>ݔ 6�g���)�x��_�6{~y���r�$��&��/�AN��Rش�SpѸ��Ű�L3��~�L/^~����[�|f���R���B�, ��l1|�<��5|v�[n�c���i����]y�ٛ����YY8K�KM���C�~�QMFk�l�c��.�Fz~}��z��Δ�b�zƔ�J�6K	�s-1I5���k�}���i�/�6{�Z���ەW��h�$�n�e���ڇVamm�%�Fs��8�XoZ���j���^m&�Yg���|���˕��R�T�I�d�۪�w$fW��"�u{t�\��XL_���B�S>���pnZ��eJN��9���}��ʫ�j+���>K8�~�湄�+>YP�"- b�D���`�U��c�g�����m�mW�;W�!��>�C��R(��u���}�]XO��sw>���o������B��֒��Ϫӡ��6U��8�h[Ej�Mo����Zo8��b��\[���@��5ukc25U
q��1�������s�����7��.e0��2=�e�	z�c��&sw)����^�"�c1���띻R?�vk)�e�rP�"�I�Pq#X�yd��W�KdB�Ċ=�t��OY��3?�pkY9����Y��d��C�Tv-�R7d3>�s7�P��4���_�}�9W
�9�g�N2k�W��	#��L%�Sq�gk�	���S��"���1�����r�ZN��3�Y�    \|7]g0ؒěnb��4=��w����qo���ؗ.�[�{7A��"�05i�J�<��^K�c���k�Z��C�3�O��ֺ=&��r�_�*C��p��F#,Q�P[ܿ��F���C/����=v[y��h��9�ns�PZ4�#�$���v��n�	����[]��c����*B���|�F��^���h�ИQ-��G�^�'|�n�ď����^+�i֨M�\D��]�>Ή)l+V�py�:}�|{V ���^� �����1�t��b-eؑ���%��Rw&�0�hSֶwݞ{���l�vw�E�pa�)���}�mb\�F���jk��ϳ��2}^�?��h��}�S
Ik�gM
�Jf���(���S��#����M��uv�e����佮�)h�֚9�������t����˱��Yvv�+��*�x��sk�\�+��غ�T�Ȗa�a��sy�7��N.�o{�۪\���]�[�fگ/Ml?��W�;5PV���k�gx�sw�7�3�2�Q������v��ZJH�>ع1B�&"�G�s�_*Q���ݟK!�퉸�(���~��B��/�+e�^I5}���F"%rv���eum��b��?�sϜ.����r^=�Ǌk�>���vn�`���̨1�$�y.�pɔZ%�z�q��v$Wθ�$�#D����Gd̳�Y:��O����**�gM}�s��}07�5=��\k������k��֖� �1���#lG�2��xnM�����s�T�P�#+�Ӂ
j��ҫ�t��-O���ƮӁ�;���=Ul�|�-϶��])�q4d�Icì�`rw��^����FK,�?6��>�Z��Z�l�p/Y)ء��[j���G�M���#p����-���矵��٨������z��p���y�r��F*{�T����H��a�ɍ�l��v_9�R��i�t;w����UC�"@�F)\�]N���)�<��~�uڹ��I��A	Y$[�#"$v�*��?��VO?X���&C��`#7�{m/^�x���P�4�/i���t����^�߳��\\)�6�N����b��Ň�B$�)2B�8Ҟ�]�0�slx��E$l�茚-����-�QFn�vd�U�:
��4L
)��+��T_�.�4\)^�V�Q`�\KL�
���7%dĂ��$:�h������7j!��Ͱ���Y��`��Hb��&6��k�o[���Է�-����'�b���ЀE��4oKcU�t��z	=����/��Ҕq�j��L�l�f�.����h`a����U��	��&��/ڛo��<�}�v�u�f2ѓ6��s?[|1ߤV6��I.i*�`��.�j�~�L�6��M˽��=�[K�c�	���mw(G,Uq1�>�j&/5�$�1��ޟl�~Ҁ�\�*���(���L�z�,�)��MS��	K�L�=�y?y�q|e��_K�g�k�� �7���Bk�����Q�+�KI�{ƿa��S&�e�ڋ��R���L%ߋC ��W��*��*�8{�|ہ����}���8����=�\K��ްnR�W}��^k�L;����0ݴ[�.k���/�&�i-y'�7��-�R�b�� �'g�:yʃ���ϳ`��O,��Z�T�(���,qo=��3{P���$��FL�X���̭7W�.[�����`�M5S򜋕L-�ԭ'��'Y5)ܹ�;��/i-Y�>n�=�z&ʹy�;��LYwaW��yZ�Rv��t�M��0��j�G��]����E3J:���]7�Zk-API;���3m��V�$��񥅐)P;���w$�oX�Gz~�;��S{l���'��pn�5��|�bR�B�)�m��=��-��a���|-S���:�VJ��>�PF�b��{j�6M�g+��m��K��Z��?�;u��bo�E��\w��TZJ�gξ6�U��}�h[u��+����ڢ��Ϳ�zW�[��*��b�Z�]%�~nJs���Ρ�D<y2ZR4��� �A�9�5h1��;�=I���춉�^^l��<� ��ܟ�jΣ����6&2b�v��o�%/k����t,�t��W
0����vnx��^>���GCR@��*��v�N������7�J"N����,���js�pC�
�%�87�5���K�O��n����~R �����|��>��n��;o���+i=,�I;�ٹ�[ +dJϪ�ԆE`pi��M���s�v^���.ߜ��/'�?�}�~xj��0���ο�Ǧ+�?l
��`�Fs5s�a���GaU�ɣC>�(�X��>�K���Ǽ�ǿ�=����s�l�2)���Wy�߮�>|g�a�M��������Žo��is�����o��<���=�^�[�2�i���q�Ք�w^��y��%a'�K��G��M���,??��w�0�ޞ�L+3ؑ��\vn��G��B�F���,6qu��k�ğ˯/�_���ʜ6��P�`�Ɓ�n����z�i��-`��X�Gzy�q��䤭�l�ief;9���܊Ф
2�}u*Sgts�б�dN�ҹ�+��47���	��������P|�h��1R��H��֌�n�g�\�@`�<��D��ɠ�ܫ���4���T��RNZ�?zK�S9[�lV�>�Q�J�|�[���n�#��2zO2��+ܜ�nh�x����|�~�NAҵvZ�a�Q��m�)�8'��Z��V�v����t�]���Y��צ	րp!���")nbU'e�X,���_�$[�#dW�im
`AKu��&GL��j2EG�M���A�����.���]�T"�Jy�^[	^�s�k�st��r&�M��|�Rcٵ��(^�ԫT5U[�bY�m���j���N��z�S�i��ֲs�r��`n�Y)sgx�.��917
�m���]W޲����2�XXj%U%�έ:���Z�j{Oڶ�}kÂ����1VZ;�ֲs���M?�&d-��-���S3=��ejܹ'�n�-�<�쎧��p����uh�G�,8���e�bM���4���,���=ky7"�9Ξ�XG����!�یhbq��� �{��2ʫg�Z�G9��Ҵ*S轘P��"y�̡ǡ�i��֮�~�7O������\���[9�o���k�<���,��_L�5�(�|�V�a ������x�i���ֻ���4��6,<ع�k���\}
҅��-C8��L���u��������q=��c��	G��`玲���F&�$=g�ڠ�|o��m�'�����GD�mq𯏬�q+�!��$�N�)9�]@T1%���V����%>����Z�WvB����y��{�fp2N�e�0�+�ƦZla������y��|g��O�q�=>�ǌk3G�H<ع�E��8��%W��R�$��k�����#�촨���(57���8�>0�Qk�XϝL-\��k��|�9��l� ��G���n�b�4'W�w�qp�+,�q׵�Y�q�ഩ������L��8��;���$���[�ORX[=n~ui�\�e8Ixポ��z	pW5��O��+�m����S�]M�gc+{!����lny�k�%K+46��X���",�ϻJ��ꝗvH���G:a���5����V��έ2��+��vv[����/��|�=�]�x�#卯*:�K�����Y��ں�{�{�{�Y�u�_v�tg������)����R�́ā�ǒ�/��f+�+X�-���ce@�h��=�di�<�
L��4���%��9�>f�b󗑀s�3��z�v�Z��җW�iW[�%�VIK�+8:ʿ	��?��T���?�~~�K����]dك�d�� ǆF�2�Q�t˱��/w7�?޾@���s��oH�*��]+��8�®���{��Si�1��w�������;w[�M)*nRj�:��IQj!z���f�}�m{��ڀ࿎+�U7%>��*�e̪UÙ���p�\����[�6*�`Y7i_�B-aج��,&�.��a�1Z�ߜ`���E���6��Qɀ�k)kFjP�q��[Ҿ	Z�*���w�z��o�1��$±N�#��}η�ǒ�o���    ���{�����4k���h�Zf�4���SBr�Kl�t=�7��ܬ.�v��?������F�)��Z��?,�	u���k�GQ:�g��T��"�r���[q�֜3=Ƿ&�3޿��WO���:��i�]AG蜐Z�f<��%��!lq�����_^|ԭ�W=:[@x�g4oA��{)1ѐ�������/�I�GH�{d&�#o��_	s�䱲��"Xc��zz��/&�K�%�3�?���o���{i��7���ė��o�Kɑ0T��s��Q�Pt�t(Ɨ�x8�<�)���ww7�t��¥�� ����ؒ[����X ��v:�QN��x@��o�����/���m��x��Ow7��O_�UA&��r1��NnGi{c�lC�,%�(^8V��x�;��R����ӫ�2���cԃo����P��o�y� ��}~ܓF��ǵ\C�1zuj��5���w}>Ѥ�cjȾ6���/w��J���ڇ�^:�!$�Lsw��".�9�:9��������Υ�)Ѕ_=9��gn�h��Lז�[������9���}c `��Ϸ��Y���'|��op�ER���?��՚ﯮo������z��_�گ>f=��z��c�KYVB��l_5N��i'SRZ�F�y��/�;��Sa6���-���7q綅�J.I쾚"��J�ҤR�(�-�����\?<�����e�~��ԕi�~��3E��r�R�R����6����w�����7�R��_^;��W������S��zr��\���2`�`hsC��C����9������S��o�̮�$�{�N?�����2�[x�uZ���ȉX�2�^ș�_��6T�(k��|}w}s,ESq�zw�gW,\F��;ع� 2�L�$c<�P��.���P�i�})����ް��<F�ï�9�H�1~dF(�I(��xO�z�řp�%���JMۚ��9F�{�<���1Ş�ɗ���e10����;�� ;4��F>�/F��c4:���亄+�ˢ,px�Zw�W�C�����J���%����`��-'=��^l����˺@��s�9'#X�Qk�"���c�^�0��飕��,���ĠA��,e��E0nf`\b��k'�����F����ׄ���j��Bw/�B̑��ؼn���*t�-V�A�枻�s�-�{��r�4�H�<7Ms>A৥���"4�`"}/�E�*>hWb/;���h��e���Kw	YY3~p�$z�'R�w8v.8us!�?�����k���y͒}�����Rٿ��~�������g�v�':}V
����n���{�{Y��J��ܺ,�f��#r XS�0ha$B�����ӧ��_����=QP.%%�%ܙ�b����-?��=!���ȍ��]o0�ɥ��[�t��M��u��6$��A�Ŧ"�+���z	�t�r�K�g	AbnŅ�K�G��z'ǣ�Ы2h�"�OHZ���O8䋛�º��s����3�	W��4G�iyjGثO�O��I<�����o,���m�lk%e,r���09��Z�OM���n���=]��D��y�'E��
�y��0B!!�7�S�E4��0����k�筭�������̿����������O7w�i�x듏~��Wo����{|�����׏����E��_��O�q;�v�����Q��'c>�6�C@��Z!��K����b��[L��Oͭ��<}�5��_�ң|��H1�np
k� �n���k�����n�}\��8�h/l���R:z��Faq��{=�L�U�FD��d���b�;�4.���\Ӷ75�֚���O)�ܢ�np�[�9�f|5����]xVY�'�������BE�=�!G�	"�P̨�]� wZ�]l}�$���A�uT��c�D�	_���\�[�g����Ŵ��K1���ṍ�%�}���H��H~l*Q������JP��.��v�⹙��,r�a*�Dk�}��"�n�图����B@?����_��5�\eS�ը��\�K�t�t9�~v§J��'��~�l~��e�~���4�~8�wӽ';CQt�L�i�X��]��% �N9%W+[	�+s�1�`I�N���㹿��#��7a�wa��V��X磒���r�C���[�؜1�w�)u�w�<�ݢ��k�[�Z�M�bOo��s-�>���(/��Q7�y����I�n����v�����+Ɯ��E������`b�Hyn\c�0����U�����ZGN��T5{~�z�c?*8s1��X��{�E#��aF���شLz��n���e�k�����>�-׆�|/�uF(��D7F�-R��	��K���ȼ������j��R��~��=�/&�^R4r�]��
�|��,S�'1�m��*�=*���o>O�gV����:cb���Q�o�Ɂ�8��鑨�%.%b<���Di�#nB�5_�(���{�&e{ ^�i����6��y_A|&�l���c��c@��������yU%�4�W����\�c����=�ޞ�4�Ia*9�y_9�ꓞ�:i2���d_�ܮ�o?}�ܔ�RR��'_^(9V����Ŵ6D� un[S����v���(Z�o��-{�Ϙ1+\]��D�/0ϭjb�6r���\U�-P�R��y�>�WDz���x��5��$]���,S��ƣ4�FT�0w"[d�'�Єq�H]��D|Q�}s?iT�0Ld�Q6�Q��ڶj��I��/1!��� ���d1��#K*�z�J2%9+�WS�JXO��+ �K��vZ�bB�=!�[�PʵZm�N&s�Z��5e�J��o8��) ����c��Yg_��~��/�ߋT{-q��t�^/���\�����`'ǣ��G���ĕ��-K��0wYc�ܸ8�V�,Av,_��9t�\0�N����#-��~��ry���~A��D����r�5xnRS+�-�6�(�e�ԉG8�?�C�-{�DH�t��<�MCV���QC�6��[���0���I{�wH�k%�ܿ��b=hk�C{$K�s�<J���N�CK���pn2�������cH�N���y�LE��a0ҜB6��j�O�t��7��%�/<�� � �s��
z�qkL�(�U9{r�Y��6��,���q� ?��p%��( �NUDl�i���D��=�c��v���A��qk��䑩����c=3�b9�nI31�P��i��+��(����n:h�xL!�ɻ������:�����f/pT��W��T�����5M����>���I�c>mͲ�0��`�]����XK1X3Z�y��H'F/՝��+�_������S7w���/�jp%8�L�{`2*��D7v޹{��^���8����j��Ѕ^��6:����Rش$��{GCbbK3Ap�O_�8���զ�[��1��뀟����@����p;�n�n	�'��.����(�����}��*���kb��gߜp�)%�:y�]h���w��m}���Dz�����8'�W*	�e1�w�r��xЮ�[_� |wV��Ͻb7LV��a;!��Z�5���t?ݿ���kv9�)���$L��1q>2"O#LS���a$�t���Uջ��/&/tZ���~���y�$�[,!���=]��S��Ӽ��Ѹl�Z5TI�,������cP�p�)JºN�M}���|�x�o��nn��H���k�����+��ٱ_����Wл
ǽ�	����R_��{F��ס�F!Xz>��\ ���|������_G7x�om�>�?67��>�>*aت͞���*�o���{Ö����϶�d<7���ls6�*$��F �.��l�jt援�$W���Xw�Y�y2$I�L7�c2�����l;D�>Z{��e[�*�H����c륙��h�D]�z��ŕ[��R�����,w���!XG���出��Ax���/�6�ҳ��9���Q]�f+%�j���X��y�=g�k����,F��e�[�&6�ڊy#U2���'=�۷��3u��1^Y��xVp�,��F�OU�KFz &  �D�6�8�!߷�иK���y�P�4b�����r��T��*�h�2�����c������^+����|�ha�xipKzkcV1Ǣs��<�*[�*�)H�_�]�X���P;@�K��8��{���NbNX��6
��M��K�f���w.�>�x�L���Nx�F������mÍ��1u	�r>-l񮉤�� 6K4Vw_gup�����J���� ,�� )y����c�y�@\.$Ơ��&8�+�U�H�Y7�qM*�:�����ټ��8G����,
�4B-�N�c�j`qp�);>M6�������a��y�޽g0���]���u��)��r�ӧ�[_�_ٰ^ѝ%�KW�+9D|�a�-$Y����4m����6���l�Y���T����U�(��eO������`��.D��1��w5���!}bU����C�KW1�|z2��$�Bڦ{���p�DH�B��6�R�?T*�~�?�>��ߞ{6�@̥�Qϖg�m��.yO̶D��Rɪ�SmCez��]�?������.�`�\Th����_5��`�6k^0��'�ڍ��!��"Hz5����v��e��*�wAS㊬���[9�?&埗:T{��Ex�Î�
s��V5Y,�4R�Ɔ�L�!��z�a|�BY7̾4Q<V!��.�8W������o�X���ؗj@p����ƺ�׏���߾��xH)�H�Tk�F�ւ�=�B*L :?m��.Ÿ�e@$����*�9�'�a�F��ep�z����s�P��.�BdT�gUj�����F3|p�Ff�ǩ�8$l]4}�����/{@ȥ �j� �եs-�3�$L�_�@�i.����i�uNo���e� �-�W��Ñ�!V��:)1H/A"|7o�\�b�9�_w�OD��df!�jm���&�@"��6��aP���z�d�g��ˈ����ꊙu�K��m����^�m�ل�W;����h���Q6o�~��Vk)v̠�dSd�#��Oo7�k .#1��ɐщ4��AH@XR�*���FC�R���g�����_��_�r�iE      �      x�3�L��"�=... U�     