import pandas as pd
from sklearn.tree import DecisionTreeRegressor

## Analyze melbourne housing markets using a DecisionTreeRegressor

melbourne_path = './inputs/melbourne-housing-snapshot/melb_data.csv'
# Read csv using relative path to input
melbourne_data = pd.read_csv(melbourne_path)

# dropna drops missing values (think of na as "not available")
melbourne_data = melbourne_data.dropna(axis=0)

# Create prediction target (column we want to predict), access series using dot notation
y = melbourne_data.Price


# Create list of features, which are "attributes" used to predict the outcome, which is this case is the price
melbourne_features = ['Rooms', 'Bathroom', 'Landsize', 'Lattitude', 'Longtitude']

# Grab the feature series from melbourne data
X = melbourne_data[melbourne_features]

# Define model. Specify a number for random_state to ensure same results each run
melbourne_model = DecisionTreeRegressor(random_state=1)

# Fit model
melbourne_model.fit(X, y)

print("Making predictions for the following 5 houses:")
print(X.head())
print("The predictions are")
print(melbourne_model.predict(X.head()))

print("---")
print(y.head())