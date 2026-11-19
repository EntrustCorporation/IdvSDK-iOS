# SDK Size — iOS (arm64)

_SDK version: 100.20.0_

## Individual Framework Impacts

| Package                   | Base                           | Download Size Δ     | Install Size Δ      |
|---------------------------|--------------------------------|----------------------|----------------------|
| EntrustIdv                | Sample Native App (0.03 MB)    | 1.42 MB              | 3.90 MB              |
| BiometricToken            | EntrustIdv (1.44 MB)           | 24.7 KB              | 115.0 KB             |
| Consent                   | EntrustIdv (1.44 MB)           | 79.5 KB              | 246.0 KB             |
| Document                  | EntrustIdv (1.44 MB)           | 1011.6 KB            | 1.92 MB              |
| EntrustIdvTrial           | EntrustIdv (1.44 MB)           | 54.8 KB              | 164.3 KB             |
| FaceMotion                | EntrustIdv (1.44 MB)           | 303.6 KB             | 908.8 KB             |
| FacePhoto                 | EntrustIdv (1.44 MB)           | 161.1 KB             | 567.7 KB             |
| NFC                       | EntrustIdv (1.44 MB)           | 2.32 MB              | 5.97 MB              |
| Retry                     | EntrustIdv (1.44 MB)           | 26.5 KB              | 117.1 KB             |
| Welcome                   | EntrustIdv (1.44 MB)           | 59.1 KB              | 166.4 KB             |
| OpenSSL 3.6.2000 (SPM)    | EntrustIdv (1.44 MB)           | 1.94 MB              | 4.88 MB              |
| NFC excluding OpenSSL     | EntrustIdv + OpenSSL (3.38 MB) | 392.7 KB             | 1.09 MB              |

> **Note on OpenSSL**
>
> NFC links OpenSSL from the Swift package `https://github.com/krzyzanowskim/OpenSSL` (3.6.2000). The NFC row
> includes that package. "NFC excluding OpenSSL" applies to apps that already contain it.

> **Note on shared frameworks**
>
> Each row includes every framework its module loads. `DeviceSecurity`, for example, is in the
> row of every module that needs it, but an app ships it once. The combinations below are
> measured as whole apps, so they are **not** a plain sum of the rows above.

## Commonly Used Combinations

Totals are the **full impact on your app** (relative to a sample native app), each measured as
a whole app.

| Combination                                   | Download Size Δ | Install Size Δ |
|-----------------------------------------------|-----------------|-----------------|
| EntrustIdv                                    | 1.42 MB         | 3.90 MB         |
| EntrustIdv + Document                         | 2.40 MB         | 5.82 MB         |
| EntrustIdv + Document + FacePhoto             | 2.41 MB         | 6.13 MB         |
| EntrustIdv + Document + FaceMotion            | 2.66 MB         | 6.57 MB         |
| EntrustIdv + Document + NFC                   | 4.69 MB         | 11.66 MB        |
| EntrustIdv + Document + NFC + FacePhoto       | 4.80 MB         | 12.08 MB        |
| EntrustIdv + Document + NFC + FaceMotion      | 4.83 MB         | 12.30 MB        |
