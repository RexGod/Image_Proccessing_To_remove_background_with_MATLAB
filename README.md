<h1 align='center'>Color Separation and Visualization</h1>
<br>
<p align='left'>This MATLAB code is designed to perform color separation on a set of input images and visualize the separated colors. The code uses the HSV color space to extract specific color ranges from each image and create corresponding masks. The masks are then applied to the saturation and value channels to isolate the desired colors. Finally, the modified HSV channels are converted back to RGB format, and the original and separated images are displayed.</p>
<br>
<h2 align='center'>Prerequisites</h2>
<br>
<ul>
  <li>MATLAB installed on your system</li>
  <li>Input images in JPG format</li>
</ul>
<br>
<h2>Usage</h2>
<ol>
  <li>Ensure that you have MATLAB installed on your computer.</li>
  <li>Place the input images in the specified file locations</li>
  <li>Modify the file paths in the code to match the location of your images if necessary</li>
  <li>Open MATLAB and execute the code.</li>
</ol>
<br>
<h2>Code Explanation</h2>
<ol>
  <li></li>
  <li>Read the input images using the imread function and resize them to a standard size of 1080x1650 pixels.</li>
  <li>Convert the RGB images to the HSV color space using the rgb2hsv function.</li>
  <li>Extract the hue, saturation, and value channels from the HSV images.</li>
  <li>Define the desired color ranges in the hue channel for each image.</li>
  <li>Create masks by thresholding the hue channels with the specified color ranges.</li>
  <li>Apply the masks to the saturation and value channels to isolate the desired colors.</li>
  <li>Convert the modified HSV channels back to RGB using the hsv2rgb function.</li>
  <li>Display the original and separated images for each input image.</li>
</ol>
<br>
<h2>!! Notice !!</h2>
<p>The code assumes that the input images are located in the specified file paths. If your images are stored in different directories or with different names, you will need to update the file paths accordingly.</p>
