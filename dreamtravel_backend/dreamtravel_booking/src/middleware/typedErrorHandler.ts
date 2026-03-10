

export interface ApiError extends Error {
    status?: number;
}

export const typedErrorHandler = (
    err: ApiError
) => {
    console.error(err);
}


