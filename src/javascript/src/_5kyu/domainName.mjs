export function domainName(url) {
    let domain;
    if (url.includes("://")) {
        domain = url.split("://")[1];
    } else {
        domain = url;
    }

    if (domain.startsWith("www.")) {
        domain = domain.split("www.")[1];
    }

    return domain.split('.')[0];
}