package com.erikriosetiawan;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class Solution {

    // Complete the hourglassSum function below.
    static int hourGlassSum(int[][] arr) {

        int max = -54;

        for (int i = 0; i < arr.length - 2; i++) {

            for (int j = 0; j < arr[i].length - 2; j++) {

                int sum = 0;
                int reset = 0;

                for (int k = i; k < i + 3; k++) {

                    for (int l = j; l < j + 3; l++) {
                        reset++;
                        if (reset == 4 || reset == 6)
                            continue;
                        sum += arr[k][l];
                    }
                }

                if (max < sum)
                    max = sum;
            }
        }

        return max;
    }

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        int[][] arr = new int[6][6];

        for (int i = 0; i < 6; i++) {
            String[] arrRowItems = scanner.nextLine().split(" ");
            scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

            for (int j = 0; j < 6; j++) {
                int arrItem = Integer.parseInt(arrRowItems[j]);
                arr[i][j] = arrItem;
            }
        }

        int result = hourGlassSum(arr);

        bufferedWriter.write(String.valueOf(result));
        bufferedWriter.newLine();

        bufferedWriter.close();

        scanner.close();
    }
}