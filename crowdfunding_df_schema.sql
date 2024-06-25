-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" object   NOT NULL,
    "description" object   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" object   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" object   NOT NULL,
    "currency" object   NOT NULL,
    "launch_date" int   NOT NULL,
    "end_date" int   NOT NULL,
    "category_id" object   NOT NULL,
    "subcategory_id" object   NOT NULL
);

CREATE TABLE "category" (
    "category_ID" object   NOT NULL,
    "category" object   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_ID"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_ID" object   NOT NULL,
    "subcategory" object   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_ID"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" object   NOT NULL,
    "last_name" object   NOT NULL,
    "email" object   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_ID");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_ID");

