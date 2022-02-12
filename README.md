# Technical Challenge for Bonfire Studios

## Functional Requirements:

- Create a new section with a type of single for this page.
- For the single, it should have fields for the header, paragraph text, and hero image that are all editable in the CMS
- Use [Craft Navigation Plugin](https://plugins.craftcms.com/navigation) to manage the nav. It should have two nodes, "home" and "away". "away" should just link to google.com, and "home" should link to the homepage.
- Use a section with the type channel to create the "boxes" in Craft, with editable subtext. Use the entry titles for their header text.
- The "boxes" should have categories attached to them in Craft. See: https://craftcms.com/docs/3.x/categories.html
- There should be two categories, "Outdoor", and "Technology", and each entry should be assigned to _one_ of the two.
- The tabs that say “All”, "Outdoor", and "Technology" should filter the appropriate boxes below by their associated category. It should start off with “all” selected and all boxes showing.
- Under 768px the boxes should be presented as a carousel/slider, instead of a grid.
- The final page should work across all screen sizes from a full width desktop down to mobile
- The final page should work across modern versions of Chrome, Firefox, and Safari, and Edge.

## Technical Requirements:

- Do not use front end frameworks for JS, the page should be rendered using a twig template.
- Do not use Bootstrap or similar css libraries
- Use Sass to write css
- We’ve included an example of what the boxes should look like when the user hovers over one. The boxes animate to this state, using [greensock](https://greensock.com/) as an animation library
- Use github to manage the project

## Expected Result:

![Expected Design](https://i.imgur.com/JwJ9cum.png)

#

### Project Setup:

- Before setting up the Craft cms project I created a MySQL database with the help of MAMP

- Then to create the project I use Composer and runned the following command:

```sh
$ composer create-project craftcms/craft craftcmtest
```

- That command downloads and installs CraftCMS, and then the interface asks for the following information: (_This configuration can be found in the .env file_)
  - Database: MySQL (MAMP)
  - IP Address: 127.0.0.1 (Localhost)
  - Port: 8889 (MAMP default, sometimes 3306)
  - Username: root
  - password: root
  - Database Name: craftcms_test (Created previously)

Then I followed the prompts to create an admin account to access Craftcms

## Some oustanding issues
