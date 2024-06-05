package com.kata._6kyu;

public class BuildTower {
    public static String[] towerBuilder(int nFloors)
    {
        String[] tower = new String[nFloors];
        int maxFloorSize = nFloors * 2 - 1;
        for (int i = 0; i < nFloors; i++) {
            int pieces = i * 2 + 1;

            int spaces = maxFloorSize - pieces;
            int leftSpaces = spaces / 2;
            int rightSpaces = spaces - leftSpaces;

            tower[i] = " ".repeat(leftSpaces) + "*".repeat(pieces) + " ".repeat(rightSpaces);
        }
        return tower;
    }
}
