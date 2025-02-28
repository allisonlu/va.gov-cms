@api
Feature: Content model: Custom Block fields
  In order to enter structured content into my site
  As a content editor
  I want to have custom block fields that reflect my content model.

  @dst @field_type @custom_block_fields @dstfields
     Scenario: Fields
       Then exactly the following fields should exist for entity type block_content
       | Type | Bundle | Field label | Machine name | Field type | Required | Cardinality | Form widget | Translatable |
| Custom block type | Alert | Alert body | field_alert_content | Entity reference revisions | Required | 1 | Paragraphs Classic |  |
| Custom block type | Alert | Alert title | field_alert_title | Text (plain) | Required | 1 | Textfield |  |
| Custom block type | Alert | Alert Type | field_alert_type | List (text) | Required | 1 | Select list |  |
| Custom block type | Alert | Section | field_owner | Entity reference | Required | 1 | Select list |  |
| Custom block type | Alert | Reusability | field_reusability | List (text) | Required | 1 | -- Disabled -- |  |
| Custom block type | Promo | Image | field_image | Entity reference | Required | 1 | Media library |  |
| Custom block type | Promo | Link | field_promo_link | Entity reference revisions |  | 1 | Inline entity form - Simple |  |
| Custom block type | Promo | Section | field_owner | Entity reference | Required | 1 | Select list | Translatable |

