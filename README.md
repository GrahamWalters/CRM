# Customer Relation Management

## Requirements

- Ruby 2.4.0
- Rails 5.0.1
- PostgreSQL 9.6.

## Data Structures

### Customer

| Field | Type | Validation / Max Length | Explanation |
| ----- | ---- | ----------------------- | ----------- |
| title | string |  |  |
| first_name | string | Required. 35 characters. | UK Government Data Standards Catalogue suggested length |
| middle_name | string | 35 characters. | UK Government Data Standards Catalogue suggested length |
| last_name | string | Required. 35 characters. | UK Government Data Standards Catalogue suggested length |
| email | string | Email. |  |
| dob | date |  | No need for time |
| organization | string |  |
| position | string |  |  |
| cell_phone | string | 20 characters. | Strict validation wouldn't allow for extensions. |
| work_phone | string | 20 characters. | Strict validation wouldn't allow for extensions. |
| home_phone | string | 20 characters. | Strict validation wouldn't allow for extensions. |
| fax | string | 20 characters. | Strict validation wouldn't allow for extensions. |


### Address
All address fields are **required**.

| Field | Type | Validation / Max Length | Explanation |
| ----- | ---- | ----------------------- | ----------- |
| label | string | 10 characters. | Long enough to fit Home/Work/Other |
| address_1 | string | 100 characters. | 100 should be plenty long |
| address_2 | string | 100 characters. | 100 should be plenty long |
| city | string | 35 characters. | Wikipedia has the longest at 21. Erring on the side of caution |
| state | string | 2 characters. | Short version |
| zip | string | 10 characters. | 10001-xxxx |
| country | string |  |  |
