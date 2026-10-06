# SDK Size — iOS (arm64)

_SDK version: 100.16.0_

## Individual Framework Impacts

| Package                   | Base                           | Download Size Δ     | Install Size Δ      |
|---------------------------|--------------------------------|----------------------|----------------------|
| EntrustIdv                | Sample Native App (0.03 MB)    | 1.77 MB              | 4.91 MB              |
| BiometricToken            | EntrustIdv (1.80 MB)           | 26.8 KB              | 117.7 KB             |
| Consent                   | EntrustIdv (1.80 MB)           | 64.7 KB              | 235.0 KB             |
| DeviceSecurity            | EntrustIdv (1.80 MB)           | 46.8 KB              | 149.2 KB             |
| Document                  | EntrustIdv (1.80 MB)           | 1.28 MB              | 2.52 MB              |
| EntrustIdvTrial           | EntrustIdv (1.80 MB)           | 46.9 KB              | 157.5 KB             |
| FaceMotion                | EntrustIdv (1.80 MB)           | 326.4 KB             | 998.3 KB             |
| FacePhoto                 | EntrustIdv (1.80 MB)           | 154.7 KB             | 553.4 KB             |
| NFC                       | EntrustIdv (1.80 MB)           | 1.05 MB              | 2.55 MB              |
| Retry                     | EntrustIdv (1.80 MB)           | 21.5 KB              | 116.3 KB             |
| Welcome                   | EntrustIdv (1.80 MB)           | 53.4 KB              | 162.8 KB             |

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
| EntrustIdv                                    | 1.77 MB         | 4.91 MB         |
| EntrustIdv + Document                         | 3.05 MB         | 7.43 MB         |
| EntrustIdv + Document + FacePhoto             | 3.16 MB         | 7.83 MB         |
| EntrustIdv + Document + FaceMotion            | 3.32 MB         | 8.26 MB         |
| EntrustIdv + Document + NFC                   | 4.05 MB         | 9.84 MB         |
| EntrustIdv + Document + NFC + FacePhoto       | 4.16 MB         | 10.23 MB        |
| EntrustIdv + Document + NFC + FaceMotion      | 4.32 MB         | 10.67 MB        |
