# SDK Size — iOS (arm64)

_SDK version: 100.17.0_

## Individual Framework Impacts

| Package                   | Base                           | Download Size Δ     | Install Size Δ      |
|---------------------------|--------------------------------|----------------------|----------------------|
| EntrustIdv                | Sample Native App (0.03 MB)    | 1.78 MB              | 4.94 MB              |
| BiometricToken            | EntrustIdv (1.81 MB)           | 18.0 KB              | 110.4 KB             |
| Consent                   | EntrustIdv (1.81 MB)           | 64.9 KB              | 235.0 KB             |
| DeviceSecurity            | EntrustIdv (1.81 MB)           | 38.0 KB              | 141.9 KB             |
| Document                  | EntrustIdv (1.81 MB)           | 1.59 MB              | 2.93 MB              |
| EntrustIdvTrial           | EntrustIdv (1.81 MB)           | 30.7 KB              | 142.6 KB             |
| FaceMotion                | EntrustIdv (1.81 MB)           | 338.7 KB             | 1.00 MB              |
| FacePhoto                 | EntrustIdv (1.81 MB)           | 164.1 KB             | 560.8 KB             |
| NFC                       | EntrustIdv (1.81 MB)           | 1.34 MB              | 3.38 MB              |
| Retry                     | EntrustIdv (1.81 MB)           | 30.3 KB              | 123.6 KB             |
| Welcome                   | EntrustIdv (1.81 MB)           | 37.2 KB              | 147.9 KB             |

> **Note on shared frameworks — `DeviceSecurity`**
>
> Using **any** native feature module (i.e. anything other than `EntrustIdv` itself) automatically
> pulls in the `DeviceSecurity` framework. Its size cost is therefore included in each of the
> individual figures above.
>
> However, `DeviceSecurity` is only ever counted **once**. Integrating three native feature modules
> does **not** add its size three times — the cost of `DeviceSecurity` (38.0 KB download /
> 141.9 KB install) is paid a single time, no matter how many feature modules are included.
>
> For this reason, the totals in the table below are **not** a plain sum of the rows above:
> `DeviceSecurity` has been de-duplicated.

## Commonly Used Combinations

Totals are the **full impact on your app** (relative to a sample native app), with `DeviceSecurity`
counted once.

| Combination                                   | Download Size Δ | Install Size Δ |
|-----------------------------------------------|-----------------|-----------------|
| EntrustIdv                                    | 1.78 MB         | 4.94 MB         |
| EntrustIdv + Document                         | 3.37 MB         | 7.87 MB         |
| EntrustIdv + Document + FacePhoto             | 3.50 MB         | 8.28 MB         |
| EntrustIdv + Document + FaceMotion            | 3.67 MB         | 8.73 MB         |
| EntrustIdv + Document + NFC                   | 4.68 MB         | 11.12 MB        |
| EntrustIdv + Document + NFC + FacePhoto       | 4.80 MB         | 11.53 MB        |
| EntrustIdv + Document + NFC + FaceMotion      | 4.97 MB         | 11.98 MB        |
