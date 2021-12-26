import numpy as np
import scipy.stats


def gaussian_samples(n: int, mean: float = 1., sd: float = 1.) -> np.ndarray:

	return scipy.stats.norm(mean, sd).rvs(n)


def uniform_samples(n: int, left: float = 0., right: float = 2.) -> np.ndarray:

	return scipy.stats.uniform(left, right).rvs(n)


def poisson_samples(n: int, mu: float = 2) -> np.ndarray:

	return scipy.stats.poisson(mu).rvs(n)


def gamma_samples(n: int, a: float = 1.99) -> np.ndarray:

	return scipy.stats.gamma(a).rvs(n)


def exponential_samples(n: int) -> np.ndarray:

	return scipy.stats.expon().rvs(n)


# very slow
def cauchy_samples(n: int) -> np.ndarray:

	return scipy.stats.cauchy().rvs(n)


def chi2_samples(n: int, df: int = 55) -> np.ndarray:

	return scipy.stats.chi2(df).rvs(n)


def wald_samples(n: int) -> np.ndarray:

	return scipy.stats.wald().rvs(n)