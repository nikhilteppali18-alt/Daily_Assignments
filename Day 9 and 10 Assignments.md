**1.Q: Why is it called "Supervised" Learning?**

Ans: Supervised Learning is a type of Machine Learning where the model is trained using labeled data. The dataset contains both input features and correct outputs. The model learns the relationship between them and predicts outputs for new data. Examples include house price prediction, spam detection, and disease prediction. The two main types of supervised learning are Regression and Classification.



============================================================================================================================================================





**2.Q: What is Unsupervised Learning?**

Ans: Unsupervised Learning is a type of Machine Learning where the model is trained on unlabeled data.This means the dataset contains only input data and no correct answers (labels).The model tries to find hidden patterns, relationships, or groups in the data by itself.Common tasks include clustering, association, and dimensionality reduction. A common example is customer segmentation using K-Means clustering.





============================================================================================================================================================



**3.Q: Give 3 examples of Supervised Learning problems.**

Ans: Three examples of Supervised Learning problems are:

House Price Prediction – predicting house prices based on features such as size and location.

Email Spam Detection – classifying emails as spam or not spam.

Disease Prediction – predicting whether a patient has a disease based on medical data.





============================================================================================================================================================



**4.Q:Give 3 examples of Unsupervised Learning problems.**

Ans: Three examples of Unsupervised Learning problems are:

Customer Segmentation – grouping customers based on similar behavior.

Market Basket Analysis – finding products that are frequently purchased together.

Document Clustering – grouping similar documents or news articles.





============================================================================================================================================================







**5.Q:Explain Regression with an example.**

Ans: Regression is a type of Supervised Learning used to predict continuous numerical values. The model learns the relationship between input features and a numeric target variable. For example, in house price prediction, the model uses features such as house size and location to predict the price of a house







============================================================================================================================================================





**6.Q:Explain Classification with an example.**

Ans: Classification is a type of Supervised Learning used to predict categories or class labels. The model learns from labeled data and assigns new data to a specific class. For example, in email spam detection, the model classifies emails as Spam or Not Spam.





============================================================================================================================================================





**7.Q:Why is Data Preprocessing important before training a model?**

Ans: Data Preprocessing is important because real-world data often contains missing values, duplicates, outliers, and inconsistent formats. Preprocessing cleans and transforms the data into a suitable format for Machine Learning algorithms. This improves model accuracy, training efficiency, and overall performance.





============================================================================================================================================================





**8.Q:What is Train-Test Split?**

Ans: Train-Test Split is the process of dividing a dataset into two parts:

Training Data – used to train the model.

Testing Data – used to evaluate the model's performance.





============================================================================================================================================================







**9.Q:Why should we not train and test on the same data?**

Ans :We should not train and test on the same data because the model may memorize the training data instead of learning meaningful patterns. This can lead to overfitting, where the model performs well on known data but poorly on unseen data. Using separate training and testing datasets helps evaluate the model's true performance and generalization ability.





============================================================================================================================================================





**10.Q:What is Overfitting?**

Ans :Overfitting occurs when a Machine Learning model learns the training data too closely, including noise and unnecessary details. As a result, it performs very well on training data but poorly on unseen data. This happens because the model memorizes the data instead of learning general patterns.





============================================================================================================================================================







**11.Q:What is Underfitting?**

Ans :Underfitting occurs when a Machine Learning model is too simple to learn the underlying patterns in the data. As a result, it performs poorly on both training and testing datasets. This indicates that the model has not learned enough from the data.





============================================================================================================================================================







**12.Q:What is the difference between Overfitting and Underfitting?**

ANs :Underfitting occurs when a model is too simple and cannot learn the patterns in the data, resulting in low accuracy on both training and testing datasets. Overfitting occurs when a model learns the training data too closely, including noise and unnecessary details, resulting in high training accuracy but poor performance on unseen data.





============================================================================================================================================================







**13.Q:What is Variance?**

Ans :Variance is a statistical measure that indicates how much data points differ from the mean. In Machine Learning, variance refers to how sensitive a model is to changes in the training data. A high-variance model often overfits the training data and performs poorly on unseen data.







============================================================================================================================================================





**14.Q:What is Standard Deviation?**

Ans :Standard Deviation is a statistical measure that indicates how much data points deviate from the mean. It is the square root of variance and helps measure the spread or variability of data. A low standard deviation means data points are close to the mean, while a high standard deviation means they are widely spread out.







============================================================================================================================================================







**15.Q:How do Outliers affect Mean and Standard Deviation?**

Ans :Outliers significantly affect both the Mean and Standard Deviation. Since the Mean is calculated using all data points, extreme values can pull it toward them. Standard Deviation also increases because outliers are far from the mean, resulting in larger squared deviations. Therefore, outliers can distort the overall distribution of the data.





============================================================================================================================================================







**16.Q:What is a Normal Distribution?**

Ans :A Normal Distribution is a probability distribution where the data is distributed symmetrically around the mean, forming a bell-shaped curve.

Most values are close to the average, and fewer values are found as you move away from the average.





============================================================================================================================================================







**17.Q:Why is Normal Distribution important in Statistics and Machine Learning?**

Ans :Normal Distribution is important because many statistical methods and Machine Learning algorithms assume that data follows a normal distribution. It helps in understanding data, detecting outliers, performing hypothesis testing, calculating probabilities, and applying feature scaling techniques such as standardization. The bell-shaped distribution makes statistical analysis and prediction easier and more reliable.





============================================================================================================================================================





**18.Q:What is Correlation?**

Ans :Correlation is a statistical measure that indicates the strength and direction of the relationship between two variables. It is measured using the correlation coefficient, which ranges from -1 to +1. A positive value indicates a positive relationship, a negative value indicates a negative relationship, and zero indicates no relationship.





============================================================================================================================================================







**19.Q:What is the difference between Positive Correlation and Negative Correlation?**

Ans :Positive Correlation occurs when two variables move in the same direction. For example, as study hours increase, exam scores increase. Negative Correlation occurs when two variables move in opposite directions. For example, as product price increases, demand decreases. Positive correlation has a correlation coefficient greater than 0, while negative correlation has a correlation coefficient less than 0.





============================================================================================================================================================



**20.Q:What is the difference between Covariance and Correlation?**

Ans :Covariance measures the direction of the relationship between two variables, indicating whether they move together or in opposite directions. Correlation is a standardized measure derived from covariance that indicates both the direction and strength of the relationship. Unlike covariance, correlation has a fixed range from -1 to +1, making it easier to interpret.





============================================================================================================================================================







**21.Q:What is a Correlation Matrix, and why is it used?**

Ans :A Correlation Matrix is a table that shows the correlation coefficients between multiple variables in a dataset. Each value represents the strength and direction of the relationship between two variables. It is commonly used for feature selection, detecting multicollinearity, understanding relationships among variables, and improving Machine Learning model performance.





============================================================================================================================================================





**22.Q:What is Multicollinearity?**

Ans :Multicollinearity occurs when two or more independent variables in a dataset are highly correlated with each other. This means they provide similar information, making it difficult for the model to determine the individual effect of each feature. Multicollinearity can lead to unstable coefficients and reduced interpretability, especially in Linear Regression models.





============================================================================================================================================================



**23.Q:Why is Multicollinearity a problem in Linear Regression?**

Ans :Multicollinearity is a problem in Linear Regression because highly correlated independent variables make it difficult to estimate the individual effect of each feature on the target variable. This can lead to unstable coefficients, high variance in coefficient estimates, reduced interpretability, and unreliable statistical conclusions.





============================================================================================================================================================







**24.Q:What is Feature Engineering?**

Ans :Feature Engineering is the process of creating, transforming, or selecting features from raw data to improve the performance of Machine Learning models. It helps the model learn better patterns by providing more meaningful and informative input variables. Examples include creating age from date of birth, encoding categorical variables, and generating new features from existing data.







============================================================================================================================================================







**25.Q:what is Feature Selection, and why is it important?**

Ans :Feature Selection is the process of selecting the most relevant features from a dataset and removing irrelevant or redundant features. It is important because it improves model performance, reduces overfitting, decreases training time, simplifies the model, and helps eliminate multicollinearity.





============================================================================================================================================================





**26.Q:How would you identify important features in a dataset?**

Ans :Important features can be identified using techniques such as correlation analysis, correlation matrices, feature importance scores from Decision Trees or Random Forests, Recursive Feature Elimination (RFE), Lasso Regression, and statistical tests. Domain knowledge also plays an important role in determining which features are most relevant to the prediction task.





============================================================================================================================================================





**27.Q:What problems can arise when a dataset contains too many features?**

Ans :Having too many features can lead to overfitting, increased training time, higher computational cost, multicollinearity, reduced interpretability, and the curse of dimensionality. These issues can negatively impact model performance and make the model more complex. Feature Selection is often used to reduce these problems.





============================================================================================================================================================







**28.Q:What is the Curse of Dimensionality?**

Ans :The Curse of Dimensionality refers to the challenges that arise when the number of features in a dataset becomes very large. As dimensionality increases, data becomes sparse, computation costs increase, more training data is required, and models may struggle to learn meaningful patterns. This can lead to overfitting and reduced model performance.





============================================================================================================================================================

