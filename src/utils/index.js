
export const RandomString = (len) => {
    const alphas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    let res = "";
    for (let i = 0; i < len; ++i) {
        const idx = Math.floor(Math.random() * alphas.length);
        res += alphas[idx];
    }
    return res;
}

export const isBlank = (val) => (val == undefined || val == null);