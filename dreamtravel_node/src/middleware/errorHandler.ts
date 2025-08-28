

export interface ApiError extends Error {
    status?: number;
}

export const errorHandler = (
    err: ApiError
) => {
    console.error(err);
}


