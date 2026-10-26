# SDK Size — iOS (arm64)

_SDK version: 100.18.0_

## Individual Framework Impacts

| Package                   | Base                           | Download Size Δ     | Install Size Δ      |
|---------------------------|--------------------------------|----------------------|----------------------|
| EntrustIdv                | Sample Native App (0.03 MB)    | 1.80 MB              | 4.96 MB              |
| BiometricToken            | EntrustIdv (1.83 MB)           | 26.8 KB              | 117.7 KB             |
| Consent                   | EntrustIdv (1.83 MB)           | 73.7 KB              | 242.4 KB             |
| DeviceSecurity            | EntrustIdv (1.83 MB)           | 46.8 KB              | 149.2 KB             |
| Document                  | EntrustIdv (1.83 MB)           | 1.60 MB              | 2.95 MB              |
| EntrustIdvTrial           | EntrustIdv (1.83 MB)           | 47.0 KB              | 157.6 KB             |
| FaceMotion                | EntrustIdv (1.83 MB)           | 326.8 KB             | 1014.7 KB            |
| FacePhoto                 | EntrustIdv (1.83 MB)           | 154.7 KB             | 553.5 KB             |
| NFC                       | EntrustIdv (1.83 MB)           | 1.09 MB              | 2.76 MB              |
| Retry                     | EntrustIdv (1.83 MB)           | 30.3 KB              | 123.6 KB             |
| Welcome                   | EntrustIdv (1.83 MB)           | 37.1 KB              | 147.9 KB             |

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
| EntrustIdv                                    | 1.80 MB         | 4.96 MB         |
| EntrustIdv + Document                         | 3.40 MB         | 7.91 MB         |
| EntrustIdv + Document + FacePhoto             | 3.50 MB         | 8.31 MB         |
| EntrustIdv + Document + FaceMotion            | 3.67 MB         | 8.76 MB         |
| EntrustIdv + Document + NFC                   | 4.44 MB         | 10.53 MB        |
| EntrustIdv + Document + NFC + FacePhoto       | 4.54 MB         | 10.92 MB        |
| EntrustIdv + Document + NFC + FaceMotion      | 4.71 MB         | 11.37 MB        |
