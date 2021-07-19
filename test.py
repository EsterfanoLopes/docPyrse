# importing modules
import cv2
import pytesseract
import time

# reading image using opencv
image = cv2.imread('image/1.jpg')
if image is None:
    print('Error loading image')

# Convert to grey
gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# Use OTSU to scale binary colors
threshold_img = cv2.threshold(gray_image, 0, 255, cv2.THRESH_BINARY | cv2.THRESH_OTSU)[1]

# Save binary image
cv2.imwrite('result/threshold.png', threshold_img)

time.sleep(100)

# Tesseract configs
custom_config = r'--oem 3 --psm 6'
# pass image to tesseract
details = pytesseract.image_to_data(threshold_img, output_type=pytesseract.Output.DICT, config=custom_config, lang='eng')

print(details.keys())
