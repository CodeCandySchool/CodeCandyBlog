//
//  FullAsyncImage.swift
//  AsyncImageSample
//
//  Created by Kensuke Nakagawa on 2023/06/21.
//

import SwiftUI

struct ScrollAsyncImagesView: View {

    let imageUrlStrings = [
        "https://lh3.googleusercontent.com/pw/AJFCJaXJCmDkWf-ZcV3aqskTQeb5qWXPGgcQosncN4H0AGt-YVF0Irw5jslr2jIUyPA94OfqVKwJ2dsoBTqWm53PvT_4GkrsVD-EOrp6b4Laq5crvcjZNikmed773---QwT8T5uUvmgEceUbSCNOTq06sGEi6OqFjUf0nfNYU5qtoShDNlWvHY1IbOsC1ajOkRMBc6x7IE8VEGt91Aa_gN2St0oABKfZl8ADzeIulLblFLeF_fyHHpNhwWKbHQiz_9BNOpdXeQgRc-rmV0P5Yig6k-noJDWorVyJLZL-cJTFdn5uN8qa2Y-wBK82_F7se5HN54fosIKCgc1K8irW1lET5L6Y0RNJ1AEIQBLjnmBf4uWBFmjLf9TjCK4UFdLKzvW21KPZrTdr3sztUPdAhDsRxPCi1b-cf-NisAToiXTFNCrV0W9Rg0Auh6Dr079kcVdZFBI41yiR3sJYBDwYHFmrdG3epvEoUqMZKiisS0CXK8cQt-RwGa3k2bgWs8ICYgLtslz_-dHuOqtN3LPov5OzU5kBRgof9PHp-PhKTjraeo08g70laL-_V4en6jQ0NiBoCs94YX1XK4kxv-I3Ymj3JpvhSHskOaAMJyhunly5yXlJ6NC6-5uYOu5oivkngnCeaiIdIwT5ZuVQ33V3KDrPTa9oH3cNncsVMQpCHmEzncrUt_kdkUpzbbwzWTYjI5KIjODE8QDbiKp0cByDCErsN7EAbraLOgXfhaQl6tqb5_lgfZIJI1vKl6P8dX00ikFGrrpujv-5fG5CoGM8YvFUncT1Y9bV1z5ZnuvguzM1hAVLZwN5_KFJ9d7h2vbvELnGGEt0k7YpluR3Uquma5WZZ6BDRxDN1jTFxmFYl3IgiAdY72lye_bj0rd5VFHtEblPoVjD_sAh517BpRNkd3O1t7lpgpml5SySrrA0ft_xxHnQxXCQ6nQR5C7HMW6KIA=w330-h220-no?authuser=0",

        "https://lh3.googleusercontent.com/pw/AJFCJaW-bpy4_2QpcWcHPPtGRSXBtR6eILHHrZvT1S_VKdVwZ2Eqy74Fon8ZLX9MT8oArZPNw6RiK8CiOmp26AYBjOb3f1Tvpn170G-EVrUaQOzI_Uv4tHzONYqE72dElJis9LXYFNbQ6C7TBrvmLRKqjHlh4E0g6FhdDvqtoa7qw0wYfx_IEJTdRurWs96-Qk6sRI0r1EWHdRVjigguj2Cujj-10DwKRKBRp0Mf5oG97-y3B__Kck8Pr_c9TaSCBzsm3pkLZ07b-WY04mdIE-EjejINvjaUHhsWj_Dn21pCC2Ijl40ytvsluRwEgdNTYby4o5_wSi5l8nES511IIRPh9C2Q5tEzNgfIWg_8OSY5Nzv4MNrIJxeG8k3q1wzBsv-SLrxJ_zjivwsK6u179fC-bvfbNnfhz983SZsiubGRM2IZJuF_B_kMGEAZIGTXufXc6GyJHPsgvqibu34Xq67XSIcJW8T3SpsSM4q36RdHA8AX9mkTEYM2RNX6Iut9djK3UH9JrOQrrbjWTEDB5jBzCLZZjLbpURIyvpw-EUltHZ4puTvNLfanPvIwyo0163JNmTdZoO3tEOmW2LaMXwtErrVBdUV9AGP13WYqgFzFNeidCJ36n58ULGXOts4iBENtZqO4WiFuO78NntatjNCOuDGzb90t-hYWD2rfqvgP8v8Femp173wDYvQ0BV3WtrQr6tOZjfMLQTae7L2Y6ON8ZLTwRsHpDBiqd7UkI4otEmLR_jqXey2M64SxO15RTZq9Nmv117NSRKO1Ss58sjQ7vs_u-wTy5Ry8Ol8gvrRzZO0Kt3WFYTDK35tIzwthe3j6mtzdEbvzK7o5RxjLXISOCnkcCjAcZatueMCkdM_y3cOGTTlqWSLBKuSNxIHKuGJlIN6toD7R_tZJdIrsmhc_6U2iY50cqHkaGMNIRlErYMOMxAAhPHG0YbzZ1EanSA=w2334-h1552-s-no?authuser=0",

        "https://lh3.googleusercontent.com/pw/AJFCJaWbvZekCvib8wZtdOBvlzfUdkFxx1ZVTkBE3gCEZqULCsx07P47DKSqDaaaRWTR8HwHouOn8qqHnPHu86DsnSekAx4s6SRrWNzulYWU28CAsatqztDVnhJVfAfjO7AsZ0VoFbV3HOTgxVhVQTZyeQ2hnMUXclhju2BE918Tne9qejFDfYtU3V616PeLY4Bh_6u5o1OWiByMiB2m9BEZjEsoAaTiTQyPgTJ5_38-uDtWFxtCdYDw1POyCzJi3FZ8BSuPfBcd84LdWH-i27XjqGpOhzVKI9QHwsD4MoycRV6HkY54AKw_M19jo1bLapN03PnpUJI07FBW4KHsopV3IdBVjxO1wXzYeWZ6opYY7ElCXXAY980Cy5gGTnFYtPx9x1g4kEi1px0X9pWt8mY088OtYC4bql790YSnFiN6P5vGPDtu_mgeiMA6L4vjJIQtQ836uqwEHef9clMDmnwhdTCU82TYEl6cwJNZ9DvzAOTf732Ht2RhquVOe4rm7Xya3LKP7pbyGAI7HGVLXT7kZcD_mHaa_2OuP5XQ_1UxUaA4sFlFLCNvFGvIe35cV_2apiN5tIbfPax0Y6YS3Xq6Y53RgSAN-IoKbGzl5WfQael-gY7Z8W2rAq6zHJJtu8W0wXPI1c6AV592CrcAplYKw5t5vHaWebvK0LxGrunpv5hoa_ypGKXko0t1RB14pWn1bxSCTSqs9_GqQJJsNcdIq8BAa3JnBAoTCp-I34F8IUyCFwj29NtEs8YCu2Jmq1ACltmAfokIfh2NywELGz4sF2ur4bqSemYEMJOyFo3vZfI_O41i6s-VvyM-koMK2bVMqIaPcfh1NTOXAceIjUQ9eK-OlXAaBUOyX0eMreqt4zMCRLPlyA_eCjAjr-6e-5W2DoUqv6DvbNVhGuOiEyoCWzO5d0OEUHmnqHeaRX3Dh2qpWTeANZizA2SZRw8Tlw=w2328-h1552-s-no?authuser=0",

        "https://lh3.googleusercontent.com/pw/AJFCJaWoLJXag1Ipt2faG-FLw70fdA2NqmQvjmmjE9oKF-cgUMNFyYtGu3T4uDVyb4AtPA3H3dBzPFFCEek9FNyLS1XPLWe_IFrrq0ieEcGZBTXMDQbg5OpISLmQkRacyxg1h6XcwoTwrCIACDSIlwv1-_1GmDm16LVL8jV92SpKbkuSQ16ApH-48A_YZm8Dg3XOkNgg0IMUlfIRPK7iu0SmI9GGcZfHW32pBfmZfo9NMw7SMKvho8jnsGAy7qUegZ3-OcRtEM0th-qUcyxOZlrtnJUMpHUSMSM2ERMo85VGuBCZxY4Mm3oaWN_Ci31NZYQc9NkSEizDU8zBl7Mf6x7TJld3sAy7yf4vuYgsQbcsz1TtQ6jjohHNUzDi1BDCrpR5XIYZbQjs8PfKo3UJIuQthJ_qxzDEXSSZbZJTFEqqERPoMJJr7WAXfUd51ZahbS_REzDB41ylxaQ3fEcNERGRs53IY5c8q9ykVi3pJ5bGDUmoaYahlay4kY7iOIvjc2km50UgNSfd0zVBW6ovZb0SUWyQinxrQ9jZke4WTdI8FlhknGoI8xP6lz0AZL01Vd9kHinowx3AzPmdWHwLZn-KVtFlqMCCEONDibgb2AtvFrvmc2scefVJlS44c9lbZAStV2FgMiEv3cOPGC6VdQE23-fZoVy5wnh1GbrEiu-g4Gy6_FtcIXKgyrCrhtiFnDRSpFMfKL2qPJ3mUtQcQ-EZEGY7zmLOkhUYY7QWr6LKkYA0s03nnKNc2gb5nVX802mzeAiehDFBDrvRy_BNFNCbIC5yvEOhP2ucpMWcLTkdmFA-0TxLRaAU-u6kENB1kCtlYXLr3foZYG5WFTEOC5yUaJrmMS3xSR3dwDhtQYf_okUNI31WxNymFHAKl6Z4Efz1SFx-mp4u-UxmPYtjoOr3hTj3xC48jAbldnCmg_jkZaEWfBqRikqPrJtebH0lvw=w1164-h1552-s-no?authuser=0",

        "https://lh3.googleusercontent.com/pw/AJFCJaUnO0ODtJuON9j55ScWaVf0tonmQ16btagAycCF3T75BNHycc4SEWTE1OKytdhAFiETNZC8Fw3cn9pv1InGnUUBH1UfrQaQyUDzS42fxHOMe5-FlCuS7Et6tFwxn6WjWos3oeOa13vCtD8yc3xrN-x_XfKvKo_hkITswVi_3kw29XDSlgbWOFfeT7WyHZWKRcw1wwY0nfeTVV3mMnoJFi9KqXhljfiBV5XqnLqGSpRYC3u-8DSQRMfYNOr7g01E1Hksewu8aIAQcsSbuRMk3SIKIz3Qf1bIB_JX20AQpd2xdtwnP_kSRxufSDuy7gSW446xaZQJmvccRhfyMiAMgIQrvSr6FFowSvD04oh_TdzkqPHgyQ6LHTgr-FZzlMWFIi_0W1vSP9Xni4XDWhmypHguMmw-QhuR7m-i_KFC5jCPdoLZvr7FWVGY4IOf0w0yNwiKd6o4O1wzeR8wXjtwwY27SsRFsj9VwWN7LWqvjBiewLDCCxfBCF81hzdA2X2QQZznJkF-I39AizqR35Kmq-X8N7EYoTC3R6oxnB6BM7qafIm9ria6pOkdfhVYKzRnjzNVFk-Ef5d9k1SIDcfZZxE4m-xGHzGvvkUOzyi1qy_MeWBHpOoZOgtULN7I13w6_KGSz1f0SMWoP0PSgoC7QW2SbOEyB5J8yKC_Pt9iKHgr9Qq7s7mihx46vVtGzdVKakWNhxQWctNYMFxJkDW3JV2CpFugaMlctDbj5xAEQE2c_I0JYqH3an2cG_8EKQTBy1iAS8T3MVTCxQYKNd4cAaGCCAAm1jSIL2AKXPmYxr0dWyrbknrb-q0OaJAS97wdky8seeG6gyRg6oDDaDH2e0MHe8eu39R1LDXT8YOs2O-AHdqmSt0Aon_DC8VmAVAdvVDJYfXGVRAOjrx0LmI9BKDWRn8LQ2grEnDELmmlJ-WYLsSctF37Tb2fKCSK8w=w1034-h1552-s-no?authuser=0"
    ]

    var body: some View {

        VStack(spacing: 40) {
            ForEach(0...2, id: \.self) { _ in
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(imageUrlStrings, id: \.self) { urlString in

                            AsyncImageRow(urlString: urlString)
                                .scaledToFill()
                                .frame(width: 300, height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}

struct AsyncImageRow: View {

    let urlString: String

    var body: some View {

        AsyncImage(url: URL(string: urlString),
                   transaction: .init(animation: .easeIn)
        ) { phase in

            if let image = phase.image {
                // ロード成功時...
                image.resizable()

            } else if phase.error != nil {
                // ロード失敗時...
                LoadPhaseView(title: "画像取得エラー")

            } else {
                // ロード中...
                LoadPhaseView(title: "画像を取得中です...")
            }
        }
    } // body

    @ViewBuilder
    func LoadPhaseView(title: String) -> some View {
        Rectangle()
            .fill(.gray)
            .overlay {
                VStack(spacing: 20) {
                    Image(systemName: "photo.fill")
                        .font(.title)

                    Text(title)
                        .font(.footnote)
                        .tracking(5)
                }
            }
    }
} // View
