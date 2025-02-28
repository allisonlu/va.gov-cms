@api
Feature: Views
  In order to present and expose content and configuration
  As a site owner
  I want to have views for various contexts and applications.

  @dst @views
     Scenario: Views
       Then exactly the following views should exist
       | Name | Machine name | Base table | Status | Description |
| Administration section | administration_section | Taxonomy terms | Enabled | Top-level items in the Section taxonomy |
| Advanced Queue jobs | advancedqueue_jobs | Jobs | Enabled |  |
| Archive | archive | Content | Disabled | All content, by month. |
| Benefit Hubs Categories | benefits_hub_categories | Content | Enabled |  |
| Benefits hub list | benefits_hub_list | Content | Enabled |  |
| Benefit Hub Contact Information | benefit_hub_contact_information | Content | Enabled |  |
| VA Forms | va_forms | Content | Enabled | VA forms dashboard |
| Custom block library | block_content | Custom Block | Enabled | Find and manage custom blocks. |
| Build info | build_info | Content | Enabled |  |
| Child terms | child_terms | Taxonomy terms | Enabled |  |
| Content | content | Content | Enabled | Find and manage content. |
| Content served from Drupal | content_served_from_drupal | Content | Enabled | An exportable list of all content served from Drupal |
| Content entity browsers | content_entity_browsers | Content | Enabled | Collection of Entity Browsers to use for field widgets configuration in form displays. |
| Content Entity Reference Source | content_entity_reference_source | Content | Enabled | Various views used to populate options on entity reference fields |
| Content release logs | content_release_logs | Log entries | Enabled | Shows content release job log entries |
| Date fields | date_fields | Content | Disabled |  |
| Detail page URL audit and bulk udpate | detail_page_url_audit_and_bulk_udpate | Content | Enabled | For bulk updating URL aliases for VAMC detail pages. |
| Facility Governance | facility_governance | Content | Enabled | Provides facility management tools. |
| Files | files | Files | Enabled | Find and manage files. |
| File browsers | file_browsers | Media | Enabled |  |
| Frontpage | frontpage | Content | Enabled | All content promoted to frontpage |
| Glossary | glossary | Content | Disabled | All content, by letter. |
| Health care service names and descriptions | health_care_service_names_and_descriptions | Taxonomy terms | Enabled | A list of nationally-controlled health care service names and descriptions |
| Image Style Warmer Warmup Files | image_style_warmer_warmup_files | Files | Enabled | VBO for processing existing files with Image Style Warmer. |
| Local facilities entity reference view | local_facilities_entity_reference_view | Content | Enabled | An entity reference view that determines options for the Local Health Service descriptions |
| Locked content | locked_content | Content | Enabled |  |
| Media | media | Media | Enabled |  |
| Media library | media_library | Media | Enabled | Find and manage media. |
| Moderated content | moderated_content | Content revisions | Enabled | Find and moderate content. |
| Moderation history | moderation_history | Content revisions | Enabled |  |
| Redirect | redirect | Redirect | Enabled | List of redirects |
| Right sidebar latest revision | right_sidebar_latest_revision | Content revisions | Enabled |  |
| Search | search | Index Content | Disabled |  |
| Taxonomy term | taxonomy_term | Content | Enabled | Content belonging to a certain taxonomy term. |
| People | user_admin_people | Users | Enabled | Find and manage people interacting with your site. |
| Blocks listing | va_blocks_admin | Custom Block | Enabled | Shows existing blocks on the site. |
| VAMC alerts and operating statuses | vamc_alerts_and_operating_statuses | Content | Enabled |  |
| VAMC operating statuses | vamc_operating_statuses | Content | Enabled |  |
| VAMCs | vamcs | Content | Enabled |  |
| VHA Health service taxonomy | vha_health_service_taxonomy | Taxonomy terms | Enabled |  |
| Watchdog | watchdog | Log entries | Enabled | Recent log messages |
| Who's new | who_s_new | Users | Disabled | Shows a list of the newest user accounts on the site. |
| Who's online block | who_s_online | Users | Disabled | Shows the user names of the most recently active users, and the total number of active users. |
| User creation & editing activity | user_creation_editing_activity | Users | Enabled |  |
| User history | user_history | User history | Enabled |  |
| User history list | user_history_list | User history | Enabled |  |
| User email csv | user_email_csv | Users | Enabled |  |
| Listing page dashboard | listing_page_dashboard | Content | Disabled |  |
| Custom block entity browsers | custom_block_entity_browsers | Custom Block | Enabled | For placing on content forms |
| Section administration and export | section_export | Taxonomy terms | Enabled | Enables easier adminstration of Sections/Product relationship, and export tools for analysis outside Drupal |
| Services | services | Content | Enabled | Lists of services for facility pages, health services lists, etc |
| Recent content | content_recent | Content | Disabled | Recent content. |
| Taxonomy entity browsers | taxonomy_entity_browsers | Taxonomy terms | Enabled |  |
| VAMC top task page revision histories | vamc_top_task_page_revisions | Content revisions | Enabled | An audit of VAMC top task pages for runbook planning |
| Vet centers | vet_centers | Content | Enabled |  |
| Vet Center facility listing | vet_center_facility_listing | Content | Enabled |  |
| Users in section | users_in_section | Section association | Enabled | Views of users associated to a section |
| CMS Knowledge Base search results | knowledge_base_search_results | Index Knowledge base search | Enabled |  |
| Knowledge Base Article administration | knowledge_base_article_administration | Content | Enabled | Audits and tools for managing Knowledge Base Articles |
| Rich Text Field Audit | rich_text_field_audit | Content | Enabled |  |
| Non-clinical services | non_clinical_services | Content | Enabled | Views of non-clinical services content placed within several "Top tasks" VAMC node forms. |
| Metatag Audit | metatag_audit | Content | Enabled |  |
| Flagged Content | flagged_content | Content | Enabled |  |

  @dst @views_displays
     Scenario: Views displays
       Then exactly the following views displays should exist
       | View | Title | Machine name | Display plugin |
| Administration section | Entity Reference | entity_reference_1 | Entity Reference |
| Administration section | CLP Entity Reference | clp_entity_reference | Entity Reference |
| Advanced Queue jobs | Master | default | Default |
| Advanced Queue jobs | Page | page_1 | Page |
| Archive | Block | block_1 | Block |
| Archive | Master | default | Default |
| Archive | Page | page_1 | Page |
| Benefits hub list | Entity Reference | entity_reference_1 | Entity Reference |
| Benefits hub list | Master | default | Default |
| Benefit Hubs Categories | Entity browser | benefits_hub_categories | Entity browser |
| Benefit Hubs Categories | Master | default | Default |
| Benefit Hub Contact Information | Entity browser | benefit_hub_contact_information | Entity browser |
| Benefit Hub Contact Information | Master | default | Default |
| Blocks listing | Master | default | Default |
| Blocks listing | Promo blocks | page_1 | Page |
| Blocks listing | Alert Blocks | page_2 | Page |
| Build info | Master | default | Default |
| Build info | REST export | rest_export_1 | REST export |
| Child terms | Block | block_1 | Block |
| Child terms | Master | default | Default |
| Content | Master | default | Default |
| Content | All content | page_1 | Page |
| Content | Bulk edit content | page_2 | Page |
| Content | Bulk edit events | events_page | Page |
| Content | Resources and support | resources_support_dashboard | Page |
| Content | Resources and support landing page | resources_and_support_landing_page_block | Block |
| Content | Content audit CSV export | content_audit_csv_export | Data export |
| Content | Content audit tools | content_audit_page | Page |
| Content | Facilities | content_audit_facilities | Page |
| Content | Facilities export | content_audit_facilities_export | Data export |
| Content | VAMC EHR | vamc_ehr | Page |
| Content | VAMC System Service Audit | vamc_system_service_audit_page | Page |
| Content | VAMC System Service Audit Export | vamc_system_service_audit_export | Data export |
| Content entity browsers | Master | default | Default |
| Content entity browsers | Event entity browser | event_entity_browser | Entity browser |
| Content entity browsers | Q&A entity browser | entity_browser_1 | Entity browser |
| Content Entity Reference Source | Master | default | Default |
| Content Entity Reference Source | Entity Reference: Event Listing | entity_reference_1 | Entity Reference |
| Content Entity Reference Source | Entity Reference: Publication Listing | entity_reference_2 | Entity Reference |
| Content Entity Reference Source | Entity Reference: Story Listing | entity_reference_3 | Entity Reference |
| Content Entity Reference Source | Entity Reference: News Release Listing | entity_reference_4 | Entity Reference |
| Content Entity Reference Source | Entity Reference: Staff profiles | entity_reference_5 | Entity Reference |
| Content Entity Reference Source | Entity Reference: Systems | entity_reference_6 | Entity Reference |
| Content Entity Reference Source | Entity Reference: Main Offices | entity_reference_7 | Entity Reference |
| Content release logs | Master | default | Default |
| Content release logs | Page | page_1 | Page |
| Content served from Drupal | Page | page_1 | Page |
| Content served from Drupal | Data export | data_export_1 | Data export |
| Content served from Drupal | Master | default | Default |
| Custom block library | Master | default | Default |
| Custom block library | Page | page_1 | Page |
| Date fields | Master | default | Default |
| Date fields | Page | page_1 | Page |
| Detail page URL audit and bulk udpate | CSV export | data_export_1 | Data export |
| Detail page URL audit and bulk udpate | Master | default | Default |
| Detail page URL audit and bulk udpate | Audit page | audit_page | Page |
| Facility Governance | Master | default | Default |
| Facility Governance | Page | page_1 | Page |
| Files | Master | default | Default |
| Files | Files overview | page_1 | Page |
| Files | File usage | page_2 | Page |
| File browsers | Block | file_browser_block | Block |
| File browsers | Entity browser | file_entity_browser | Entity browser |
| File browsers | Master | default | Default |
| Frontpage | Master | default | Default |
| Frontpage | Feed | feed_1 | Feed |
| Frontpage | Page | page_1 | Page |
| Glossary | Attachment | attachment_1 | Attachment |
| Glossary | Master | default | Default |
| Glossary | Page | page_1 | Page |
| Health care service names and descriptions | Master | default | Default |
| Health care service names and descriptions | VAMC health service and type of care - entity reference | entity_reference_vamc_services | Entity Reference |
| Health care service names and descriptions | Vet Center health service and type of care - entity reference | entity_reference_vet_center_services | Entity Reference |
| Health care service names and descriptions | Non clinical service | entity_reference_non_clinical_services | Entity Reference |
| Image Style Warmer Warmup Files | Files overview  | page_1 | Page |
| Image Style Warmer Warmup Files | Master | default | Default |
| Local facilities entity reference view | Master | default | Default |
| Local facilities entity reference view | Entity Reference | entity_reference_1 | Entity Reference |
| Locked content | Master | default | Default |
| Locked content | Page | page_1 | Page |
| Media | Master | default | Default |
| Media | Browser | entity_browser_1 | Entity browser |
| Media | Image Browser | entity_browser_2 | Entity browser |
| Media | Media | media_page_list | Page |
| Media | Downloadable document browser | entity_browser_3 | Entity browser |
| Media | Media bulk edit | page_1 | Page |
| Media library | Master | default | Default |
| Media library | Page | page | Page |
| Media library | Widget | widget | Page |
| Media library | Widget (table) | widget_table | Page |
| Moderated content | Master | default | Default |
| Moderated content | Moderated content | moderated_content | Page |
| Moderation history | Master | default | Default |
| Moderation history | Page | page | Page |
| People | Data export | data_export_1 | Data export |
| People | Master | default | Default |
| People | Page | page_1 | Page |
| Redirect | Master | default | Default |
| Redirect | Page | page_1 | Page |
| Redirect | Non admin Page | page_2 | Page |
| Right sidebar latest revision | All revisions | block_1 | Block |
| Right sidebar latest revision | Latest revision | attachment_1 | Attachment |
| Right sidebar latest revision | Master | default | Default |
| Search | Master | default | Default |
| Search | Page | page | Page |
| Taxonomy term | Master | default | Default |
| Taxonomy term | Block | taxonomy_term_listing_block | Block |
| Taxonomy term | Page | page_1 | Page |
| Taxonomy term | Attachment | attachment_1 | Attachment |
| VA Forms | Master | default | Default |
| VA Forms | Page | page_1 | Page |
| VAMC alerts and operating statuses | Master | default | Default |
| VAMC alerts and operating statuses | Page | page_1 | Page |
| VAMC operating statuses | Master | default | Default |
| VAMC operating statuses | Entity Reference | entity_reference_1 | Entity Reference |
| Administration section | Master | default | Default |
| VAMC top task page revision histories | Page | page_1 | Page |
| VAMC top task page revision histories | Master | default | Default |
| VAMCs | Master | default | Default |
| VHA Health service taxonomy | Page | page_1 | Page |
| VHA Health service taxonomy | Data export | data_export_1 | Data export |
| VHA Health service taxonomy | Master | default | Default |
| Watchdog | Master | default | Default |
| Watchdog | Page | page | Page |
| Who's new | Who's new | block_1 | Block |
| Who's new | Master | default | Default |
| Who's online block | Master | default | Default |
| Who's online block | Who's online | who_s_online_block | Block |
| User creation & editing activity | Master | default | Default |
| User creation & editing activity | Page | page_1 | Page |
| User history | Master | default | Default |
| User history | Page | page_1 | Page |
| User history list | Master | default | Default |
| User history list | Page | page_1 | Page |
| User email csv | Data export | data_export_1 | Data export |
| User email csv | Master | default | Default |
| User email csv | Page | page_1 | Page |
| Listing page dashboard | Master | default | Default |
| Listing page dashboard | Past events | block_2 | Block |
| Listing page dashboard | Upcoming events | block_1 | Block |
| Custom block entity browsers | Alert block entity browsers | entity_browser_1 | Entity browser |
| Custom block entity browsers | Promo block entity browsers | entity_browser_2 | Entity browser |
| Custom block entity browsers | Master | default | Default |
| Section administration and export | Data export | csv_export | Data export |
| Section administration and export | Master | default | Default |
| Section administration and export | Page | page_1 | Page |
| Services | Facility health services | block_1 | Block |
| Services | VAMC system health services | block_2 | Block |
| Services | Master | default | Default |
| Recent content | Master | default | Default |
| Recent content | Block | block_1 | Block |
| Taxonomy entity browsers | Audiences vocabularies | audiences_vocabularies | Entity browser |
| Taxonomy entity browsers | Block | block_1 | Block |
| Taxonomy entity browsers | Resources and support vocabulary | entity_browser_1 | Entity browser |
| Taxonomy entity browsers | Master | default | Default |
| Vet Center facility listing | Block | vc_facility_listing | Block |
| Vet Center facility listing | Master | default | Default |
| Vet Center facility listing | VC listing for node form | vc_listing_for_node_form | Block |
| Vet centers | Master | default | Default |
| Vet centers | Mobile Vet Centers Entity Browser | mvc_entity_browser | Entity browser |
| Users in section | Master | default | Default |
| Users in section | Page | section_member_page | Page |
| CMS Knowledge Base search results | Master | default | Default |
| CMS Knowledge Base search results | Page | knowledge_base_search_page | Page |
| Knowledge Base Article administration | Master | default | Default |
| Knowledge Base Article administration | Page | knowledge_base_admin | Page |
| Rich Text Field Audit | Default | default | Default |
| Rich Text Field Audit | Content Audit - Rich Text Fields | content_audit_rich_text | Page |
| Rich Text Field Audit | Data export | rich_text_audit_data_export | Data export |
| Non-clinical services | Admissions offices | admissions_offices | Block |
| Non-clinical services | Billing and insurance offices | billing_and_insurance | Block |
| Non-clinical services | Default | default | Default |
| Non-clinical services | Medical records offices | medical_records_offices | Block |
| Metatag Audit | Default | default | Default |
| Metatag Audit | Metatag Audit | metatag_audit | Page |
| Flagged Content | Default | default | Default |
| Flagged Content | Flagged Content | flagged_content | Page |
