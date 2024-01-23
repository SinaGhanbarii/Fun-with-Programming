import numpy as np
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap

# Load the image of Starry Night!
image_path = 'testt.jpg'  # Replace with the actual path to your image
img = plt.imread(image_path)

# Extract the red channel (you can modify this based on the colors you want)
red_channel = img[:, :, 0]

# Create a heatmap using the red channel values
cmap = plt.cm.jet  # You can use other colormaps as well
heatmap = plt.imshow(red_channel, cmap=cmap)

# Add a colorbar legend
cbar = plt.colorbar(heatmap)
cbar.set_label('Intensity', rotation=270, labelpad=15)

# Add title and show the plot
plt.title('Wheat Field with Cypresses - Van Gogh Heatmap')
plt.show()
