% Question 1
%  performs vector operations and logical comparisons on matrix A. It calculates sums based on certain conditions
A = [47 91 58 72 80 62 70 77 58 61 47 65 88 61 73 78 74 73 67 75 65 71 76 80 63 85 44 79 68 71 83 76 58 76 79 99 47 90 63 91 72 82 84 58 82 61 74 79 68 80 59 60 67 80 56 66 79 90 73 88 62 70 79 58 55 58 66 69 54 70 57 82 71 79 55 80 74 88 68 52 64 65 73 46 81 72 77 78 91 64 69 57 94 86 71 56 69 79 80 72 83 64 67 75 58 57 84 75 75 46 58 55 83 66 77 67 65 81 69 54 84 65 77 54 65 71 67 81 91 72 55 82 79 46 45 70 74 72 77 63 59 73 73 76 58 78 57 83 43 78 95 64 67 86 62 89 53 47 70 91 69 72 83 56 49 90 60 63 57 69 93 77 67 60 71 70 82 64 70 88 80 76 82 70 95 74 88 79 72 87 100 89 85 81 78 75 73 52 64 60 99 79 79 67 75 73 85 50 100 75 62 71 84 82 84 75 60 68 70 67 77 97 66 95 73 67 65 63 86 75 77 82 73 67 74 80 71 56 78 68 46 60 85 79 81 63 73 45 75 55 92 72 70 83 85 71 76 49 87 56 84 75 87 100 89 60 56 79 61 63 66 58 60 80 81 55 67 91 60 71 62 75 74 69 65 68 82 72 89 65 82 67 74 63 68 49 91 60 88 54 60 75 60 60 78 65 78 83 44 85 73 65 79 94 83 56 70 85 76 48 68 73 73 69 49 78 82 67 55 63 68 72 77 64 75 81 64 56 70 88 95 48 83 63 57 77 79 62 80 68 72 80 89 49 63 64 81 79 51 70 84 66 78 74 71 35 63 74 79 71 65 66 84 85 72 66 86 73 71 63 48 63 80 63 73 76 91 51 82 81 51 72 53 79 75 88 78 58 79 38 73 81 62 79 45 59 71 69 76 65 78 69 79 77 61 65 39 78 65 55 71 60 55 50 58 84 84 90 77 73 93 84 81 60 60 53 53 67 64 53;65 63 79 59 62 39 68 61 76 74 91 90 43 47 50 61 84 80 52 58 69 58 52 64 58 75 65 67 81 61 74 55 69 73 67 65 63 54 61 91 88 74 48 74 69 90 70 58 54 60 72 80 71 59 67 58 75 65 65 50 72 72 69 43 43 64 66 60 81 65 64 75 61 69 65 87 75 78 62 52 98 60 62 66 72 56 62 76 100 71 54 67 50 48 79 74 62 95 71 78 56 72 73 84 84 60 78 64 78 73 58 71 57 83 71 91 68 68 54 57 55 60 80 42 51 49 66 84 68 93 76 54 84 58 88 67 64 75 38 59 58 71 65 89 66 66 65 62 74 74 78 45 64 79 71 83 62 41 92 60 62 70 49 44 62 63 78 76 67 60 72 52 68 69 79 71 49 68 62 59 72 62 63 73 67 69 72 63 56 82 67 78 53 49 78 43 81 76 93 72 80 78 89 64 73 60 81 62 94 44 61 68 61 83 83 64 85 74 80 60 58 60 78 69 69 78 48 67 52 52 77 82 67 76 64 61 48 72 64 79 78 67 78 65 81 75 76 71 44 38 67 76 52 64 61 60 78 76 63 71 83 85 56 47 54 84 79 53 67 72 72 81 68 65 67 81 50 58 53 76 86 48 64 70 82 69 69 71 60 80 62 83 59 84 89 69 61 73 64 71 84 80 60 73 53 63 85 95 79 49 75 60 75 64 71 82 75 64 75 58 64 60 79 87 72 59 70 64 43 62 70 94 61 46 80 70 68 80 64 60 79 74 45 56 61 83 59 68 83 94 50 59 71 36 64 54 67 63 69 61 64 62 77 52 55 82 56 58 48 69 69 69 60 66 59 75 59 83 45 57 63 68 39 77 65 91 60 71 58 74 62 54 63 84 64 45 54 48 76 47 51 57 86 77 72 68 75 64 52 68 63 72 74 65 75 43 61 50 68 60 54 84 55 65 56 67 71 68 75 98 76 71 79 60 71 45 78 82 69 66;51 59 38 43 38 46 65 52 63 56 46 62 40 47 48 67 41 50 56 49 48 57 49 45 57 54 73 61 49 66 64 53 55 42 56 30 68 63 44 57 70 38 57 49 75 39 54 61 37 73 89 51 50 65 61 56 57 39 42 56 42 62 50 64 66 59 50 59 71 76 54 70 67 55 71 79 53 48 60 73 51 61 49 65 67 42 58 69 77 46 39 48 85 65 57 55 21 68 58 56 65 57 43 44 65 65 63 80 53 58 63 62 67 44 57 62 43 47 49 63 49 59 52 43 44 52 55 62 67 63 66 61 59 73 54 61 65 43 59 70 59 55 64 83 44 46 62 76 57 64 63 61 46 66 65 57 59 36 51 40 73 74 72 69 49 49 52 52 67 48 55 76 49 48 73 59 48 47 42 72 54 55 56 48 68 42 57 50 44 80 62 65 41 38 42 62 57 58 67 57 69 59 72 54 61 80 68 69 62 59 60 49 64 75 89 58 77 54 48 78 56 76 41 41 49 53 71 71 71 56 33 55 48 72 74 60 49 68 66 50 58 44 51 77 69 55 78 59 50 58 57 47 53 66 68 38 70 49 55 41 44 56 43 78 49 68 42 72 80 58 69 58 41 52 47 78 44 77 69 58 74 61 69 50 49 49 49 54 41 51 48 66 70 78 52 66 51 56 58 55 55 41 57 45 56 47 45 77 68 52 31 53 58 67 75 45 59 37 66 63 51 38 53 65 55 45 59 56 71 40 81 54 47 46 81 44 53 76 54 53 43 40 55 71 36 38 74 51 48 58 69 64 63 60 49 47 74 45 70 56 59 50 62 61 58 66 67 43 51 58 72 62 54 54 63 40 81 60 61 53 53 52 56 47 41 63 54 53 67 50 72 52 49 89 77 53 64 67 29 70 71 56 38 46 55 72 48 56 53 58 52 51 39 55 59 79 61 68 55 51 30 68 65 42 57 33 77 57 58 49 69 50 41 70 54 32 62 59 74 54]';
sum(A(:,3) > A(:,1))
sum(A(:,3) > A(:,2 ) & A(:,2) > A(:,1))
sum(A(:,3) >= 90 | A(:,2) >= 90 | A(:,1) >= 90 )

