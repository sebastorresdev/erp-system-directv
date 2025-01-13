using System.Security.Cryptography;
using ErpSystemDirectv.Application.Common.Interfaces;

namespace ErpSystemDirectv.Application.Login.Services;

public class PasswordHasher : IPasswordHasher
{
    private const int saltSize = 16;
    private const int hashSize = 32;
    private const int iterations = 100000;

    private readonly HashAlgorithmName hashAlgorithmName = HashAlgorithmName.SHA512;

    /// <summary>
    /// Hashea la contraseña proporcionada utilizando PBKDF2.
    /// </summary>
    /// <param name="password">La contraseña a hashear.</param>
    /// <returns>Una cadena de contraseña hasheada que contiene tanto el hash como la sal.</returns>
    public string HashPassword(string password)
    {
        var salt = RandomNumberGenerator.GetBytes(saltSize);
        var hash = Rfc2898DeriveBytes.Pbkdf2(password, salt, iterations, hashAlgorithmName, hashSize);

        return $"{Convert.ToHexString(hash)}-{Convert.ToHexString(salt)}";
    }

    /// <summary>
    /// Verifica una contraseña contra una contraseña hasheada almacenada.
    /// </summary>
    /// <param name="hashedPassword">La contraseña hasheada almacenada.</param>
    /// <param name="password">La contraseña a verificar.</param>
    /// <returns>True si la contraseña es correcta; de lo contrario, false.</returns>
    public bool VerifyPassword(string password, string hashedPassword)
    {
        var parts = hashedPassword.Split('-');
        var hash = Convert.FromHexString(parts[0]);
        var salt = Convert.FromHexString(parts[1]);

        var inputHash = Rfc2898DeriveBytes.Pbkdf2(password, salt, iterations, hashAlgorithmName, hashSize);

        return CryptographicOperations.FixedTimeEquals(hash, inputHash);
    }
}