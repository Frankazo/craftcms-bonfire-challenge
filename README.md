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

## Installation

If you want to install the site locally, follow these instructions:

1. Download/clone the repo on your computer:

   ```bash
   git clone git@github.com:Frankazo/craftcms-bonfire-challenge.git
   ```

2. Then move inside the folder and install dependencies:

   ```bash
   cd craftcms-bonfire-challenge
   composer install
   ```

3. Copy the `.env.example` file at the root of the project to `.env`, and set its `DB_SERVER`, `DB_USER`, and `DB_PASSWORD` variables to the correct values. (If you’re on a Mac, you may need to type <kbd>Command</kbd> + <kbd>Shift</kbd> + <kbd>.</kbd> in Finder to show hidden files.)

4. Ensure that the following files and directories have permissions that will allow PHP to read and write to them:

   - `.env`
   - `composer.json`
   - `composer.lock`
   - `vendor/*`
   - `web/cpresources/*`
   - `web/assets/*`

5. Run this command in the CLI from your project's root to automatically generate a security key for the site:

   ```bash
   php craft setup/security-key
   ```

6. Create a new MySQL database called `craftcms_test`, and import `craftcms_test.sql` into it.

7. Create a new virtual host with the hostname `http://localhost:8888` that points to the `craftcms-bonfire-challenge/web/` folder.

Now point your browser at `http://localhost:8888`. You should see the Happy Lager homepage.

## Logging in

The Craft Control Panel is located at `http://localhost:8888/admin`. You can log in with the following credentials:

- Username: `admin`
- Password: `secret`

#

## Technologies Used

- TWIG
- GSAP
- MYSQL (MAMP)
- JavaScript
- HTML
- SASS/CSS

#

## Screenshots of Development Phase:

## Basic Structure

![Basic Structure](https://i.imgur.com/x8kdZYh.png)

#

![Basic Structure](https://i.imgur.com/sqdMZPJ.png)

#

![Basic Structure](https://i.imgur.com/46dlTEG.png)

#

## Pc View

![Basic Structure](https://i.imgur.com/ZJO5piR.png)

#

## Tablet View

![Basic Structure](https://i.imgur.com/RmAwe0d.png)

#

## Mobile View

![Basic Structure](https://i.imgur.com/4nbkSpS.png)

#

## Possible future updates

- Collapsible mobile menu

## Resources and Docs

- CraftCms Docs: https://craftcms.com/docs/3.x/
- GreenSock Docs (GSP): https://greensock.com/docs/
