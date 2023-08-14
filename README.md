# Projekt_BCV

## Abstract

In the field of robotics it is still somewhat of a challenge to analyze objects and scenes in camera images that are far away from the robot.
This might not be problematic for many stationary and/or slow moving platforms, but it is easy so see what issues may arise when the speed increases or timing in general gets critical.

Combating this problem can be done, for example, by changing the lens of the camera, which in turn worsens the field of view (FOV). <br>
Another approach would be to employ a higher resolution camera. The problem here is that more bandwidth, as well as higher computing power would be needed to transport and process those images.
So every advance into more depth clarity comes with its own tradeoffs.

Therefore a more cost effective solution is needed. For this goal, the "higher resolution" approach may still be a viable option by using AI upscaling.
The idea is to use a supersampling model to enhance certain regions of interest in the source image and analyze them further.
An option for further evaluation would be monocular depth estimation to get a grasp on what a distant area roughly looks like.

The results of this project show that even today the quality of the depth maps produced this way is decent enough to be useful. Although the processing times indicate that an application in real time robotics scenarios is not feasible yet.

## Implementations

All implementations use the same requirements which can be found [here](./requirements.txt).

> `pyzed` is best to be installed via the `get_python_api.py` script in the ZED SDK installation directory (usually `/usr/local/zed` on linux systems).
> In our case the ZED SDK 3.8.2 was used for compatability with CUDA 11.7

### Monocular Depth Estimation

The implementation for the monocular depth estimation base line can be found [here](./monocular_depth_estimation/mde.ipynb).

### Super Resolution

The implementation for the super resolution base line can befound [here](./super_resolution/SR.ipynb).

### Combination / Final Implementation

The final implementation, combining both methods, can be found [here](./general.ipynb)