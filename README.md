# MVVM-Skeleton

## Why?
  ### - MVVM Is useful for complex applications

## Step 1
  ### - In this example, we can see here a tableView that only needs two pieces of data from the model, firstName, and lastName

## Step 2 
  ### - Explain the MVC parts : Controller
  ### - Model
  
## Step 3 
  ### - Explain ViewModel that makes this project MVVM
  ### - This behaves as a subsect of some of the data in the model

## Step 4 
  ### - Explain Value
  ### - Data is now coming from the viewModel
  ### - If the underlying model changes, and we want to tell the viewModel "something change, update your view", we can avoid doing that if something changes thats not in the viewModel that the user isnt seing.
  ### - For example, if height changes (user updates hieght), in our case, we arent showing the height, so no need to tell the viewModel that the users height has changed, because the cell doesnt havent. 
  
## Step 5 
  ### - [Benefits](https://www.sagitec.com/blog/the-5ws-of-mvvm)
