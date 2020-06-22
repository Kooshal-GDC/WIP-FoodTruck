# Changelog

## [Release version 2.0](https://github.com/Kooshal-GDC/WIP-FoodTruck/tree/v2.0.0)

**Details**

- Food Related
    - Food props from grill will have a specific value for better interaction with foodtruck workers
    - Food props will not duplicate due to overriden variable "FoodInPlace"
    - Only food spawned by grill is pickable / detectable
    - Only detectable food props can be cleaned up
- Grill Releated
    - Grill prop spawned by player will have a specific value for better interaction with foodtruck workers
    - Players will not be able to use an occupied grill (cooking menu won't show up)
    - If a player is cooking, he won't be able to open cooking menu
    - Only detection grill props can be cleaned up
- Performance Tweaks
    - Some threads won't run for non-foodtruck workers
    - Props detection is only for foodtruck workers

## [Commit No.14](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/0b475453d5498dc9d3e9a2cf6a99dc7098c07110) (Jun 20, 2020)

**Fix | Improvement**

- Fix detection of food : only detects food from grill (grill food has a decor value as before)
- This update will no longer show prompt to pick up food which is not from grill for examples:
    - food on hand when eating
    - food on tables at restaurant or anywhere as props
    - simply food which is not from the grill when a player cooks it

## [Commit No.13](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/68580a56e088908de627b93367d413dff79a2726) (Jun 20, 2020)

**Refactoring**

- Simplifying the new codes since commit no.4 overall
- Creation of new functions for grill and food in functions.lua
- Newly functions have their comments, every code is self-explanatory

## [Commit No.10](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/8449da7aa4395a2b96aace391f15c24c8738b68b) (Jun 18, 2020)

**Documentation**

- Update Changelog.md

## [Commit No.9](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/ef504c9f4fb07ec9b1481a6ca5c9d0e8da1bfac3) (Jun 18, 2020)

**File Added:**

- Changelog.md

## [Commit No.8](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/74ac10d189c824fd0dce121982234d8bcc7dc70e) (Jun 17, 2020)

**Enchancement**

- Some Citizen Threads (only required when doing FoodTruck job) : 
    - will execute only if the player's job is FoodTruck
    - will stop if the player quits FoodTruck job or is not a FoodTruck worker
    - will not run if player's job is not FoodTruck

## [Commit No.7](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/6c34e10549663554f19285a9bbbd772c6c2e6acd) (Jun 15, 2020)

***Better Grill Interaction***
**Feature Update**

- Grill now has a "being used" interaction check
- Grill spawned can be used

**Improvement**

- Cooking menu will not open if player is already cooking
- Player will not be able to interact with another grill if player is already cooking in one grill

## [Commit No.6](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/9b4af2dfbe67cbc746426e85343555619b7d95bc) (Jun 15, 2020)

**Documentation**

- Little commenting for previous commit

## [Commit No.5](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/fa2d41356147349b66bd6c8f815b3b30ab967189) (Jun 15, 2020)

**Feature update**

- Cooked food will have a property of "pickedup" for better interaction

**Bug Fix**
- No more of food not be removed when picked up, all cooked food will be deleted after pickup
- No more unlimited food without cooking
- Does not take food when player is eating nearby

## [Commit No.4](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/3d97f4f1405e797ed98e75d4c954a65c2cd51916) (Jun 13, 2020)
**Code Refactoring**

- Removal of unused line of code

## [Commit No.3](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/ae9d7459b5c00e10f2b166b72d8bc966cebec449) (Jun 13, 2020)

**Bug Fix**

- Cleaning objects

**Enchancement**

- Key check only if player's job is FoodTruck

## [Commit No.2](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/d671bfb105e76fd81212dc1d26dfca622d168b4d) (Jun 13, 2020)

**Performance**
**Enhancement**

- Check for objects only if player's job is FoodTruck

## [Commit No.1](https://github.com/Kooshal-GDC/WIP-FoodTruck/commit/ef504c9f4fb07ec9b1481a6ca5c9d0e8da1bfac3) (Jun 13, 2020)

**Files Added**

- Initial Commit
- Upload of plugin files