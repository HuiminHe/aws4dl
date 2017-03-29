import numpy as np
import cv2

'''
The script create a SIFT-based object detector.
'''
class detector:
    def __init__():
        self.sift = cv2.SIFT()
        FLANN_INDEX_KDTREE = 0
        index_params = dict(algorithm = FLANN_INDEX_KDTREE, tree = 5)
        search_params = dict(check=50)
        self.flann = cv2.FlannBashedMatcher(index_params, search_params)
        self.matchesMask = [[0,0] for i in xrange(len(matches))] 
        return

    def train(dir):
        self.kp_tr = []
        self.des_tr = np.zeros([0, 128])
        for f in os.listdir(dir):
            img = cv2.imread(os.path.join(dir, f), 0)
            img = img[:,:,:3].astype('uint8')
            for i in range(3):
                im = img[:,:,i]
                kp, des = self.sift.detectAndCompute(im, None)
                self.kp_tr += kp
                np._r[self.des_tr, des]
        return

    def predict(img):
        for i in range(3):
            im = img[:,:,i]
            kp_te, des_te = self.sift.detectAndCompute(im, None)
            matches = self.flann.knnMatch(des_tr, des_te, k=2)
            for i(m,n) in enumerate(matches):
                for m.distance < 0.7*n.distance:
                    self.matchesMask[i]=[1,0]
        return
    
