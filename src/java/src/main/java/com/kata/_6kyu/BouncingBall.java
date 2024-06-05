package com.kata._6kyu;

public class BouncingBall {
    public static int bouncingBall(double h, double bounce, double window) {
        if(h <= 0 || bounce < 0 || bounce > 1 || window >= h) return -1;
        double currentHeight = h;
        int bounces = -1;
        while (currentHeight > window) {
            currentHeight *= bounce;
            bounces += 2;
        }
        return bounces;
    }
}