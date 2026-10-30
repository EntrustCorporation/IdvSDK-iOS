# SDK Size — iOS (arm64)

_SDK version: 100.18.1_

## Individual Framework Impacts

| Package                   | Base                           | Download Size Δ     | Install Size Δ      |
|---------------------------|--------------------------------|----------------------|----------------------|
| EntrustIdv                | Sample Native App (0.03 MB)    | 1.79 MB              | 4.96 MB              |
| BiometricToken            | EntrustIdv (1.82 MB)           | 35.6 KB              | 125.1 KB             |
| Consent                   | EntrustIdv (1.82 MB)           | 82.5 KB              | 249.7 KB             |
| DeviceSecurity            | EntrustIdv (1.82 MB)           | 46.8 KB              | 149.2 KB             |
| Document                  | EntrustIdv (1.82 MB)           | 1.71 MB              | 3.06 MB              |
| EntrustIdvTrial           | EntrustIdv (1.82 MB)           | 55.8 KB              | 164.9 KB             |
| FaceMotion                | EntrustIdv (1.82 MB)           | 336.6 KB             | 1005.9 KB            |
| FacePhoto                 | EntrustIdv (1.82 MB)           | 164.2 KB             | 560.8 KB             |
| NFC                       | EntrustIdv (1.82 MB)           | 1.10 MB              | 2.78 MB              |
| Retry                     | EntrustIdv (1.82 MB)           | 30.4 KB              | 123.6 KB             |
| Welcome                   | EntrustIdv (1.82 MB)           | 46.0 KB              | 155.2 KB             |

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
| EntrustIdv                                    | 1.79 MB         | 4.96 MB         |
| EntrustIdv + Document                         | 3.50 MB         | 8.01 MB         |
| EntrustIdv + Document + FacePhoto             | 3.61 MB         | 8.41 MB         |
| EntrustIdv + Document + FaceMotion            | 3.78 MB         | 8.85 MB         |
| EntrustIdv + Document + NFC                   | 4.55 MB         | 10.64 MB        |
| EntrustIdv + Document + NFC + FacePhoto       | 4.67 MB         | 11.04 MB        |
| EntrustIdv + Document + NFC + FaceMotion      | 4.84 MB         | 11.48 MB        |
