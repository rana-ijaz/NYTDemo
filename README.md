# NYTimes

This application shows most popular articles from NY times. User can filter by Day, Week and Month. The projct is build using Xcode  12.3. I have not used any external library while buiding this application. This application is built using **MVVM** Architecture. Please checkout **Main** branch to review the assessment.


# Application Structure

- Configurations
- Storyboads
- Resources
- View Controllers
- Views
- Models
- Repository
- Helpers
- Extensions
- Network



* **Configurations**:

This contains configuration for different schemes. It has Development, Staging and productions. Each build has different app id, app name and application url. It has following schemes.

- NYTDemo-Development
- NYTDemo-Staging
- NYTDemo-Production

* **Storyboads**:

This contains LaunchScreen.story and Main.storyboard.

* View Controllers:

There two view controllers. ArticlesViewController contains list of article coming from NYT api. User can click on filter button to filter by Day, Week and Month.

* **Views**: 

This section contain only 1 class which is ArticleTableViewCell. This class is used for table view in ArticlesViewController. Decodable is used for parsing JSON.

* **View Models**:

This section contains View models.

* **Response Models**:

This section contains Response models. 

* **Repository**:

This section is reponsible for sending requests by using network layer. 

* **Helpers**:

This section contains **Box.swift**. **Box.swift** is used to bind the reqeuired variable to UI. If there is any change the in the variable its listener is called. This is useful instead of callback I have used this class to notify when anything is changed in variable.

* **Extensions**:

This secons contain extension for Dictionary, Label and Image View. Image View extension is used to download and show the image. Label extension is being used to show text and image.

* **Network**:

This section covers handling of network requests.

