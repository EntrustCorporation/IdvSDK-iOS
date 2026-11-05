# SDK Size — iOS (arm64)

_SDK version: 100.19.0_

## Individual Framework Impacts

| Package                   | Base                           | Download Size Δ     | Install Size Δ      |
|---------------------------|--------------------------------|----------------------|----------------------|
| EntrustIdv                | Sample Native App (0.03 MB)    | 1.83 MB              | 5.03 MB              |
| BiometricToken            | EntrustIdv (1.85 MB)           | 26.8 KB              | 117.7 KB             |
| Consent                   | EntrustIdv (1.85 MB)           | 73.6 KB              | 242.4 KB             |
| DeviceSecurity            | EntrustIdv (1.85 MB)           | 46.8 KB              | 149.2 KB             |
| Document                  | EntrustIdv (1.85 MB)           | 1.23 MB              | 2.59 MB              |
| EntrustIdvTrial           | EntrustIdv (1.85 MB)           | 30.8 KB              | 142.6 KB             |
| FaceMotion                | EntrustIdv (1.85 MB)           | 339.6 KB             | 1008.1 KB            |
| FacePhoto                 | EntrustIdv (1.85 MB)           | 163.2 KB             | 560.4 KB             |
| NFC                       | EntrustIdv (1.85 MB)           | 2.33 MB              | 6.01 MB              |
| Retry                     | EntrustIdv (1.85 MB)           | 30.4 KB              | 123.7 KB             |
| Welcome                   | EntrustIdv (1.85 MB)           | 53.4 KB              | 162.9 KB             |
| OpenSSL 3.6.2000 (SPM)    | EntrustIdv (1.85 MB)           | 1.94 MB              | 4.88 MB              |
| NFC excluding OpenSSL     | EntrustIdv + OpenSSL (3.79 MB) | 402.9 KB             | 1.13 MB              |

> **Note on OpenSSL**
>
> NFC links OpenSSL from the Swift package `https://github.com/krzyzanowskim/OpenSSL` (3.6.2000). The NFC row
> includes that package. "NFC excluding OpenSSL" applies to apps that already contain it.

> **Note on shared frameworks — `DeviceSecurity`**
>
> Using **any** native feature module (i.e. anything other than `EntrustIdv` itself) automatically
> pulls in the `DeviceSecurity` framework. Its size cost is therefore included in each of the
> individual figures above.
>
> However, `DeviceSecurity` is only ever counted **once**. Integrating three native feature modules
> does **not** add its size three times — the cost of `DeviceSecurity` (46.8 KB download /
> 149.2 KB install) is paid a single time, no matter how many feature modules are included.
>
> For this reason, the totals in the table below are **not** a plain sum of the rows above:
> `DeviceSecurity` has been de-duplicated.

## Commonly Used Combinations

Totals are the **full impact on your app** (relative to a sample native app), with `DeviceSecurity`
counted once.

| Combination                                   | Download Size Δ | Install Size Δ |
|-----------------------------------------------|-----------------|-----------------|
| EntrustIdv                                    | 1.83 MB         | 5.03 MB         |
| EntrustIdv + Document                         | 3.06 MB         | 7.63 MB         |
| EntrustIdv + Document + FacePhoto             | 3.17 MB         | 8.03 MB         |
| EntrustIdv + Document + FaceMotion            | 3.34 MB         | 8.47 MB         |
| EntrustIdv + Document + NFC                   | 5.34 MB         | 13.49 MB        |
| EntrustIdv + Document + NFC + FacePhoto       | 5.46 MB         | 13.89 MB        |
| EntrustIdv + Document + NFC + FaceMotion      | 5.63 MB         | 14.33 MB        |
